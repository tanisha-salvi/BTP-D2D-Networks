/*
 * Copyright (c) 2011 Centre Tecnologic de Telecomunicacions de Catalunya (CTTC)
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation;
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 * Author: Nicola Baldo <nbaldo@cttc.es>
 */

#include "lte-radio-bearer-info.h"

#include "lte-pdcp.h"
#include "lte-rlc.h"

#include <ns3/log.h>

namespace ns3
{

NS_OBJECT_ENSURE_REGISTERED(LteRadioBearerInfo);

LteRadioBearerInfo::LteRadioBearerInfo()
{
}

LteRadioBearerInfo::~LteRadioBearerInfo()
{
}

TypeId
LteRadioBearerInfo::GetTypeId()
{
    static TypeId tid =
        TypeId("ns3::LteRadioBearerInfo").SetParent<Object>().AddConstructor<LteRadioBearerInfo>();
    return tid;
}

TypeId
LteDataRadioBearerInfo::GetTypeId()
{
    static TypeId tid =
        TypeId("ns3::LteDataRadioBearerInfo")
            .SetParent<LteRadioBearerInfo>()
            .AddConstructor<LteDataRadioBearerInfo>()
            .AddAttribute("DrbIdentity",
                          "The id of this Data Radio Bearer",
                          TypeId::ATTR_GET, // allow only getting it.
                          UintegerValue(0), // unused (attribute is read-only
                          MakeUintegerAccessor(&LteDataRadioBearerInfo::m_drbIdentity),
                          MakeUintegerChecker<uint8_t>())
            .AddAttribute("EpsBearerIdentity",
                          "The id of the EPS bearer corresponding to this Data Radio Bearer",
                          TypeId::ATTR_GET, // allow only getting it.
                          UintegerValue(0), // unused (attribute is read-only
                          MakeUintegerAccessor(&LteDataRadioBearerInfo::m_epsBearerIdentity),
                          MakeUintegerChecker<uint8_t>())
            .AddAttribute("logicalChannelIdentity",
                          "The id of the Logical Channel corresponding to this Data Radio Bearer",
                          TypeId::ATTR_GET, // allow only getting it.
                          UintegerValue(0), // unused (attribute is read-only
                          MakeUintegerAccessor(&LteDataRadioBearerInfo::m_logicalChannelIdentity),
                          MakeUintegerChecker<uint8_t>())
            .AddAttribute("LteRlc",
                          "RLC instance of the radio bearer.",
                          PointerValue(),
                          MakePointerAccessor(&LteRadioBearerInfo::m_rlc),
                          MakePointerChecker<LteRlc>())
            .AddAttribute("LtePdcp",
                          "PDCP instance of the radio bearer.",
                          PointerValue(),
                          MakePointerAccessor(&LteRadioBearerInfo::m_pdcp),
                          MakePointerChecker<LtePdcp>());
    return tid;
}

TypeId
LteSignalingRadioBearerInfo::GetTypeId()
{
    static TypeId tid =
        TypeId("ns3::LteSignalingRadioBearerInfo")
            .SetParent<LteRadioBearerInfo>()
            .AddConstructor<LteSignalingRadioBearerInfo>()
            .AddAttribute("SrbIdentity",
                          "The id of this Signaling Radio Bearer",
                          TypeId::ATTR_GET, // allow only getting it.
                          UintegerValue(0), // unused (attribute is read-only
                          MakeUintegerAccessor(&LteSignalingRadioBearerInfo::m_srbIdentity),
                          MakeUintegerChecker<uint8_t>())
            .AddAttribute("LteRlc",
                          "RLC instance of the radio bearer.",
                          PointerValue(),
                          MakePointerAccessor(&LteRadioBearerInfo::m_rlc),
                          MakePointerChecker<LteRlc>())
            .AddAttribute("LtePdcp",
                          "PDCP instance of the radio bearer.",
                          PointerValue(),
                          MakePointerAccessor(&LteRadioBearerInfo::m_pdcp),
                          MakePointerChecker<LtePdcp>());
    return tid;
}

TypeId
NrSlDataRadioBearerInfo::GetTypeId()
{
    static TypeId tid =
        TypeId("ns3::NrSlDataRadioBearerInfo")
            .SetParent<LteRadioBearerInfo>()
            .AddConstructor<NrSlDataRadioBearerInfo>()
            .AddAttribute("DestinationL2Id",
                          "The destination identifier for the communication",
                          TypeId::ATTR_GET, // allow only getting it.
                          UintegerValue(0), // unused (attribute is read-only
                          MakeUintegerAccessor(&NrSlDataRadioBearerInfo::m_destinationL2Id),
                          MakeUintegerChecker<uint32_t>())
            .AddAttribute("logicalChannelIdentity",
                          "The id of the Logical Channel corresponding to this Data Radio Bearer",
                          TypeId::ATTR_GET, // allow only getting it.
                          UintegerValue(0), // unused (attribute is read-only
                          MakeUintegerAccessor(&NrSlDataRadioBearerInfo::m_logicalChannelIdentity),
                          MakeUintegerChecker<uint8_t>())
            .AddAttribute("LteRlc",
                          "RLC instance of the radio bearer.",
                          PointerValue(),
                          MakePointerAccessor(&LteRadioBearerInfo::m_rlc),
                          MakePointerChecker<LteRlc>())
            .AddAttribute("LtePdcp",
                          "PDCP instance of the radio bearer.",
                          PointerValue(),
                          MakePointerAccessor(&LteRadioBearerInfo::m_pdcp),
                          MakePointerChecker<LtePdcp>());
    return tid;
}

TypeId
NrSlSignallingRadioBearerInfo::GetTypeId(void)
{
    static TypeId tid =
        TypeId("ns3::NrSlSignallingRadioBearerInfo")
            .SetParent<LteRadioBearerInfo>()
            .AddConstructor<NrSlSignallingRadioBearerInfo>()
            .AddAttribute("DestinationL2Id",
                          "The destination identifier for the communication",
                          TypeId::ATTR_GET, // allow only getting it.
                          UintegerValue(0), // unused (attribute is read-only)
                          MakeUintegerAccessor(&NrSlSignallingRadioBearerInfo::m_destinationL2Id),
                          MakeUintegerChecker<uint32_t>())
            .AddAttribute(
                "logicalChannelIdentity",
                "The id of the Logical Channel corresponding to this Data Radio Bearer",
                TypeId::ATTR_GET, // allow only getting it.
                UintegerValue(0), // unused (attribute is read-only)
                MakeUintegerAccessor(&NrSlSignallingRadioBearerInfo::m_logicalChannelIdentity),
                MakeUintegerChecker<uint8_t>())
            .AddAttribute("LteRlc",
                          "RLC instance of the radio bearer.",
                          PointerValue(),
                          MakePointerAccessor(&LteRadioBearerInfo::m_rlc),
                          MakePointerChecker<LteRlc>())
            .AddAttribute("LtePdcp",
                          "PDCP instance of the radio bearer.",
                          PointerValue(),
                          MakePointerAccessor(&LteRadioBearerInfo::m_pdcp),
                          MakePointerChecker<LtePdcp>());
    return tid;
}

TypeId
NrSlDiscoveryRadioBearerInfo::GetTypeId(void)
{
    static TypeId tid =
        TypeId("ns3::NrSlDiscoveryRadioBearerInfo")
            .SetParent<LteRadioBearerInfo>()
            .AddConstructor<NrSlDiscoveryRadioBearerInfo>()
            .AddAttribute("DestinationL2Id",
                          "The destination identifier for the discovery",
                          TypeId::ATTR_GET, // allow only getting it.
                          UintegerValue(0), // unused (attribute is read-only)
                          MakeUintegerAccessor(&NrSlDiscoveryRadioBearerInfo::m_destinationL2Id),
                          MakeUintegerChecker<uint32_t>())
            .AddAttribute(
                "logicalChannelIdentity",
                "The id of the Logical Channel corresponding to this discovery Radio Bearer",
                TypeId::ATTR_GET, // allow only getting it.
                UintegerValue(0), // unused (attribute is read-only)
                MakeUintegerAccessor(&NrSlDiscoveryRadioBearerInfo::m_logicalChannelIdentity),
                MakeUintegerChecker<uint8_t>())
            .AddAttribute("LteRlc",
                          "RLC instance of the radio bearer.",
                          PointerValue(),
                          MakePointerAccessor(&LteRadioBearerInfo::m_rlc),
                          MakePointerChecker<LteRlc>())
            .AddAttribute("LtePdcp",
                          "PDCP instance of the radio bearer.",
                          PointerValue(),
                          MakePointerAccessor(&LteRadioBearerInfo::m_pdcp),
                          MakePointerChecker<LtePdcp>());
    return tid;
}

} // namespace ns3
