/* -*-  Mode: C++; c-file-style: "gnu"; indent-tabs-mode:nil; -*- */

// Copyright (c) 2019 Centre Tecnologic de Telecomunicacions de Catalunya (CTTC)
//
// SPDX-License-Identifier: GPL-2.0-only

#include "nr-sl-helper.h"

#include "nr-point-to-point-epc-helper.h"

#include <ns3/abort.h>
#include <ns3/bandwidth-part-ue.h>
#include <ns3/epc-ue-nas.h>
#include <ns3/fatal-error.h>
#include <ns3/log.h>
#include <ns3/lte-rrc-sap.h>
#include <ns3/lte-sl-tft.h>
#include <ns3/lte-ue-rrc.h>
#include <ns3/node.h>
#include <ns3/nr-amc.h>
#include <ns3/nr-sl-bwp-manager-ue.h>
#include <ns3/nr-sl-chunk-processor.h>
#include <ns3/nr-sl-ue-mac-scheduler-fixed-mcs.h>
#include <ns3/nr-sl-ue-mac-scheduler.h>
#include <ns3/nr-sl-ue-mac.h>
#include <ns3/nr-sl-ue-rrc.h>
#include <ns3/nr-spectrum-phy.h>
#include <ns3/nr-ue-mac.h>
#include <ns3/nr-ue-net-device.h>
#include <ns3/nr-ue-phy.h>
#include <ns3/object-factory.h>
#include <ns3/object-map.h>
#include <ns3/pointer.h>
#include <ns3/simulator.h>

namespace ns3
{

NS_LOG_COMPONENT_DEFINE("NrSlHelper");

NS_OBJECT_ENSURE_REGISTERED(NrSlHelper);

NrSlHelper::NrSlHelper()

{
    NS_LOG_FUNCTION(this);
    m_ueSlAmcFactory.SetTypeId(NrAmc::GetTypeId());
    m_ueSlSchedulerFactory.SetTypeId(NrSlUeMacSchedulerFixedMcs::GetTypeId());
}

NrSlHelper::~NrSlHelper()
{
    NS_LOG_FUNCTION(this);
}

TypeId
NrSlHelper::GetTypeId()
{
    static TypeId tid = TypeId("ns3::NrSlHelper")
                            .SetParent<Object>()
                            .SetGroupName("nr")
                            .AddConstructor<NrSlHelper>();
    return tid;
}

void
NrSlHelper::DoDispose()
{
    NS_LOG_FUNCTION(this);
    Object::DoDispose();
}

void
NrSlHelper::SetSlErrorModel(const std::string& errorModelTypeId)
{
    NS_LOG_FUNCTION(this);

    SetUeSlAmcAttribute("ErrorModelType", TypeIdValue(TypeId::LookupByName(errorModelTypeId)));
}

void
NrSlHelper::SetUeSlAmcAttribute(const std::string& n, const AttributeValue& v)
{
    NS_LOG_FUNCTION(this);
    m_ueSlAmcFactory.Set(n, v);
}

Ptr<NrAmc>
NrSlHelper::CreateUeSlAmc() const
{
    NS_LOG_FUNCTION(this);

    Ptr<NrAmc> slAmc = m_ueSlAmcFactory.Create<NrAmc>();
    return slAmc;
}

void
NrSlHelper::SetEpcHelper(const Ptr<NrPointToPointEpcHelper>& epcHelper)
{
    NS_LOG_FUNCTION(this);
    m_epcHelper = epcHelper;
}

void
NrSlHelper::ActivateNrSlBearer(Time activationTime, NetDeviceContainer ues, const Ptr<LteSlTft> tft)
{
    NS_LOG_FUNCTION(this);
    NS_ASSERT_MSG(m_epcHelper,
                  "NR Sidelink activation requires EpcHelper to be registered with the NrSlHelper");
    Simulator::Schedule(activationTime, &NrSlHelper::DoActivateNrSlBearer, this, ues, tft);
}

void
NrSlHelper::DoActivateNrSlBearer(NetDeviceContainer ues, const Ptr<LteSlTft> tft)
{
    NS_LOG_FUNCTION(this);
    for (NetDeviceContainer::Iterator i = ues.Begin(); i != ues.End(); ++i)
    {
        NS_LOG_DEBUG("Activating SL bearer at " << Simulator::Now() << " destination L2 id "
                                                << tft->GetSidelinkInfo().m_dstL2Id);
        ActivateNrSlBearerForUe(*i, Create<LteSlTft>(tft));
    }
}

void
NrSlHelper::PrepareUeForSidelink(NetDeviceContainer c, const std::set<uint8_t>& slBwpIds)
{
    NS_LOG_FUNCTION(this);
    for (NetDeviceContainer::Iterator i = c.Begin(); i != c.End(); ++i)
    {
        Ptr<NetDevice> netDev = *i;
        Ptr<NrUeNetDevice> nrUeDev = netDev->GetObject<NrUeNetDevice>();
        PrepareSingleUeForSidelink(nrUeDev, slBwpIds);
    }
}

void
NrSlHelper::PrepareSingleUeForSidelink(Ptr<NrUeNetDevice> nrUeDev,
                                       const std::set<uint8_t>& slBwpIds)
{
    NS_LOG_FUNCTION(this);

    Ptr<LteUeRrc> lteUeRrc = nrUeDev->GetRrc();

    Ptr<NrSlUeRrc> nrSlUeRrc = CreateObject<NrSlUeRrc>();
    nrSlUeRrc->SetNrSlEnabled(true);
    nrSlUeRrc->SetNrSlUeRrcSapProvider(lteUeRrc->GetNrSlUeRrcSapProvider());
    lteUeRrc->SetNrSlUeRrcSapUser(nrSlUeRrc->GetNrSlUeRrcSapUser());

    // Aggregate
    lteUeRrc->AggregateObject(nrSlUeRrc);
    // SL BWP manager configuration
    Ptr<NrSlBwpManagerUe> slBwpManager = DynamicCast<NrSlBwpManagerUe>(nrUeDev->GetBwpManager());
    slBwpManager->SetNrSlUeBwpmRrcSapUser(lteUeRrc->GetNrSlUeBwpmRrcSapUser());
    lteUeRrc->SetNrSlUeBwpmRrcSapProvider(slBwpManager->GetNrSlUeBwpmRrcSapProvider());

    lteUeRrc->SetNrSlMacSapProvider(slBwpManager->GetNrSlMacSapProviderFromBwpm());

    // Error model and UE MAC AMC
    Ptr<NrAmc> slAmc = CreateUeSlAmc();
    TypeIdValue typeIdValue;
    slAmc->GetAttribute("ErrorModelType", typeIdValue);
    // Retrieve the CC map from the device so we can set the SL scheduler
    std::map<uint8_t, Ptr<BandwidthPartUe>> ccMap = nrUeDev->GetCcMap();

    for (const auto& itBwps : slBwpIds)
    {
        auto nrSlUeMac = nrUeDev->GetMac(itBwps)->GetObject<NrSlUeMac>();
        if (!nrSlUeMac)
        {
            NS_LOG_DEBUG("Skipping installation of SL components on node "
                         << nrUeDev->GetNode()->GetId() << " bwpId " << +itBwps);
            // could be a relay with some BWPs not configured for sidelink
            continue;
        }
        NS_LOG_INFO("Installation of SL components on node " << nrUeDev->GetNode()->GetId()
                                                             << " bwpId " << +itBwps);
        // Store BWP id in NrSlUeRrc
        nrUeDev->GetRrc()->GetObject<NrSlUeRrc>()->StoreSlBwpId(itBwps);
        // SAPs between the RRC and the NR UE MAC
        lteUeRrc->SetNrSlUeCmacSapProvider(itBwps, nrSlUeMac->GetNrSlUeCmacSapProvider());
        nrSlUeMac->SetNrSlUeCmacSapUser(lteUeRrc->GetNrSlUeCmacSapUser());
        // SAPs between the RRC and the NR UE PHY
        nrUeDev->GetPhy(itBwps)->SetNrSlUeCphySapUser(lteUeRrc->GetNrSlUeCphySapUser());
        lteUeRrc->SetNrSlUeCphySapProvider(itBwps,
                                           nrUeDev->GetPhy(itBwps)->GetNrSlUeCphySapProvider());
        // NR SL UE MAC scheduler
        Ptr<NrSlUeMacScheduler> sched = m_ueSlSchedulerFactory.Create<NrSlUeMacScheduler>();
        NS_ABORT_MSG_IF(sched == nullptr, "sched is null");
        ccMap.at(itBwps)->SetNrSlUeMacScheduler(sched);
        // Connect NrSlUeMac and NrSlUeMacScheduler
        sched->SetNrSlUeMac(nrSlUeMac);
        nrSlUeMac->SetAttribute("NrSlUeMacScheduler", PointerValue(sched));
        // Set AMC in the NR SL UE MAC scheduler
        Ptr<NrSlUeMacScheduler> schedNs3 = sched->GetObject<NrSlUeMacScheduler>();
        schedNs3->InstallAmc(slAmc);
        // SAPs between MAC and PHY
        nrUeDev->GetPhy(itBwps)->SetNrSlUePhySapUser(nrSlUeMac->GetNrSlUePhySapUser());
        nrSlUeMac->SetNrSlUePhySapProvider(nrUeDev->GetPhy(itBwps)->GetNrSlUePhySapProvider());
        // Error model type in NRSpectrumPhy for NR SL
        Ptr<NrSpectrumPhy> spectrumPhy = nrUeDev->GetPhy(itBwps)->GetSpectrumPhy();
        spectrumPhy->SetAttribute("SlErrorModelType", typeIdValue);
        // Set AMC in NrSpectrumPhy to compute PSCCH TB size
        spectrumPhy->SetSlAmc(slAmc);
        // Set SL chunk processor
        Ptr<NrSlChunkProcessor> pSlSinr = Create<NrSlChunkProcessor>();
        pSlSinr->AddCallback(MakeCallback(&NrSpectrumPhy::UpdateSlSinrPerceived, spectrumPhy));
        spectrumPhy->AddSlSinrChunkProcessor(pSlSinr);
        Ptr<NrSlChunkProcessor> pSlSignal = Create<NrSlChunkProcessor>();
        pSlSignal->AddCallback(MakeCallback(&NrSpectrumPhy::UpdateSlSignalPerceived, spectrumPhy));
        spectrumPhy->AddSlSignalChunkProcessor(pSlSignal);

        std::function<void(const Ptr<Packet>&, const SpectrumValue&)> pscchPhyPduCallback;
        pscchPhyPduCallback = std::bind(&NrUePhy::PhyPscchPduReceived,
                                        nrUeDev->GetPhy(itBwps),
                                        std::placeholders::_1,
                                        std::placeholders::_2);
        spectrumPhy->SetNrPhyRxPscchEndOkCallback(pscchPhyPduCallback);

        std::function<void(const Ptr<PacketBurst>&, const SpectrumValue&)> psschPhyPduOkCallback;
        psschPhyPduOkCallback = std::bind(&NrUePhy::PhyPsschPduReceived,
                                          nrUeDev->GetPhy(itBwps),
                                          std::placeholders::_1,
                                          std::placeholders::_2);
        spectrumPhy->SetNrPhyRxPsschEndOkCallback(psschPhyPduOkCallback);

        std::function<void(uint32_t, SlHarqInfo)> psfchCallback;
        psfchCallback = std::bind(&NrUePhy::PhyPsfchReceived,
                                  nrUeDev->GetPhy(itBwps),
                                  std::placeholders::_1,
                                  std::placeholders::_2);
        spectrumPhy->SetNrPhyRxSlPsfchCallback(psfchCallback);

        spectrumPhy->SetPhySlHarqFeedbackCallback(
            MakeCallback(&NrUePhy::EnqueueSlHarqFeedback, nrUeDev->GetPhy(itBwps)));

        // Set the SAP of NR UE MAC in SL BWP manager
        bool bwpmTest =
            slBwpManager->SetNrSlMacSapProviders(itBwps, nrSlUeMac->GetNrSlMacSapProvider());

        if (!bwpmTest)
        {
            NS_FATAL_ERROR("Error in SetNrSlMacSapProviders");
        }
    }

    // Since now all the BWP for SL are configured, we can configure src L2 id
    // for only SL BWP (s) (see LteUeRrc::DoSetSourceL2Id)
    uint64_t imsi = lteUeRrc->GetImsi();
    NS_ASSERT_MSG(imsi != 0, "IMSI was not set in UE RRC");
    nrSlUeRrc->SetSourceL2Id(
        static_cast<uint32_t>(imsi & 0xFFFFFF)); // use lower 24 bits of IMSI as source

    lteUeRrc->SetNrSlBwpIdContainerInBwpm();
}

void
NrSlHelper::InstallNrSlPreConfiguration(NetDeviceContainer c,
                                        const LteRrcSap::SidelinkPreconfigNr preConfig)
{
    NS_LOG_FUNCTION(this);

    struct LteRrcSap::SlFreqConfigCommonNr slFreqConfigCommonNr =
        preConfig.slPreconfigFreqInfoList[0];
    LteRrcSap::SlPreconfigGeneralNr slPreconfigGeneralNr = preConfig.slPreconfigGeneral;

    for (NetDeviceContainer::Iterator i = c.Begin(); i != c.End(); ++i)
    {
        Ptr<NetDevice> netDev = *i;
        Ptr<NrUeNetDevice> nrUeDev = netDev->GetObject<NrUeNetDevice>();
        bool ueSlBwpConfigured =
            ConfigUeParams(nrUeDev, slFreqConfigCommonNr, slPreconfigGeneralNr);
        NS_ABORT_MSG_IF(ueSlBwpConfigured == false,
                        "No SL configuration found for IMSI " << nrUeDev->GetImsi());
        Ptr<LteUeRrc> lteUeRrc = nrUeDev->GetRrc();
        Ptr<NrSlUeRrc> nrSlUeRrc = lteUeRrc->GetObject<NrSlUeRrc>();
        nrSlUeRrc->SetNrSlPreconfiguration(preConfig);
    }
}

bool
NrSlHelper::ConfigUeParams(const Ptr<NrUeNetDevice>& dev,
                           const LteRrcSap::SlFreqConfigCommonNr& freqCommon,
                           const LteRrcSap::SlPreconfigGeneralNr& general)
{
    NS_LOG_FUNCTION(this);
    bool found = false;
    std::string tddPattern = general.slTddConfig.tddPattern;
    // Sanity check: Here we are retrieving the BWP id container
    // from UE RRC to make sure:
    // 1. PrepareUeForSidelink has been called already
    // 2. In the for loop below the index (slBwpList [index]) at which we find the
    // configuration is basically the index of the BWP, which user want to use for SL.
    // So, this index should be present in the BWP id container.
    Ptr<LteUeRrc> lteUeRrc = dev->GetRrc();
    std::set<uint8_t> bwpIds = lteUeRrc->GetNrSlBwpIdContainer();

    for (std::size_t index = 0; index < freqCommon.slBwpList.size(); ++index)
    {
        // configure the parameters if both BWP generic and SL pools are configured.
        if (freqCommon.slBwpList[index].haveSlBwpGeneric &&
            freqCommon.slBwpList[index].haveSlBwpPoolConfigCommonNr)
        {
            NS_LOG_INFO("Configuring BWP id " << +index << " for SL");
            auto it = bwpIds.find(index);
            NS_ABORT_MSG_IF(it == bwpIds.end(),
                            "UE is not prepared to use BWP id " << +index << " for SL");
            dev->GetPhy(index)->RegisterSlBwpId(static_cast<uint16_t>(index));
            dev->GetPhy(index)->SetNumerology(
                freqCommon.slBwpList[index].slBwpGeneric.bwp.numerology);
            dev->GetPhy(index)->SetSymbolsPerSlot(
                freqCommon.slBwpList[index].slBwpGeneric.bwp.symbolsPerSlots);
            dev->GetPhy(index)->PreConfigSlBandwidth(
                freqCommon.slBwpList[index].slBwpGeneric.bwp.bandwidth);
            dev->GetPhy(index)->SetNumRbPerRbg(
                freqCommon.slBwpList[index].slBwpGeneric.bwp.rbPerRbg);
            dev->GetPhy(index)->SetPattern(tddPattern);
            found = true;
        }
    }

    return found;
}

void
NrSlHelper::SetNrSlSchedulerTypeId(const TypeId& typeId)
{
    NS_LOG_FUNCTION(this);
    m_ueSlSchedulerFactory.SetTypeId(typeId);
}

void
NrSlHelper::SetUeSlSchedulerAttribute(const std::string& n, const AttributeValue& v)
{
    NS_LOG_FUNCTION(this);
    m_ueSlSchedulerFactory.Set(n, v);
}

uint16_t
NrSlHelper::GetPhySlPoolLength(uint16_t slBitmapLen,
                               uint16_t tddPatternLen,
                               uint16_t numUlTddPattern)
{
    NS_ABORT_MSG_IF(slBitmapLen % numUlTddPattern != 0,
                    "SL bit map size should be multiple of number of UL slots in the TDD pattern");
    NS_ABORT_MSG_IF(slBitmapLen < tddPatternLen,
                    "SL bit map size should be greater than or equal to the TDD pattern size");
    uint16_t poolLen = (slBitmapLen / numUlTddPattern) * tddPatternLen;
    return poolLen;
}

void
NrSlHelper::ActivateNrSlBearerForUe(const Ptr<NetDevice>& ueDevice,
                                    const Ptr<LteSlTft>& slTft) const
{
    Ptr<NrUeNetDevice> nrUeNetDevice = ueDevice->GetObject<NrUeNetDevice>();
    if (nrUeNetDevice)
    {
        Simulator::ScheduleNow(&EpcUeNas::ActivateNrSlBearer, nrUeNetDevice->GetNas(), slTft);
    }
    else
    {
        NS_FATAL_ERROR("Invalid device type: " << ueDevice->GetTypeId().GetName());
    }
}

int64_t
NrSlHelper::AssignStreams(NetDeviceContainer c, int64_t stream)
{
    int64_t currentStream = stream;
    Ptr<NetDevice> netDevice;
    for (NetDeviceContainer::Iterator i = c.Begin(); i != c.End(); ++i)
    {
        netDevice = (*i);
        Ptr<NrUeNetDevice> nrUeDev = DynamicCast<NrUeNetDevice>(netDevice);
        if (nrUeDev)
        {
            // Retrieve the CC map from the device so we can set the SL scheduler
            std::map<uint8_t, Ptr<BandwidthPartUe>> ccMap = nrUeDev->GetCcMap();
            for (uint32_t bwp = 0; bwp < ccMap.size(); bwp++)
            {
                Ptr<NrSlUeMacScheduler> sched = ccMap.at(bwp)->GetNrSlUeMacScheduler();
                // Validate pointer before using, in case the BWP is not configured for sidelink
                if (sched)
                {
                    currentStream += sched->AssignStreams(currentStream);
                }
            }
        }
    }

    return (currentStream - stream);
}

} // namespace ns3
