/* -*-  Mode: C++; c-file-style: "gnu"; indent-tabs-mode:nil; -*- */

// Copyright (c) 2020 Centre Tecnologic de Telecomunicacions de Catalunya (CTTC)
//
// SPDX-License-Identifier: GPL-2.0-only

#ifndef NR_SL_UE_MAC_SCHEDULER_LCG_H
#define NR_SL_UE_MAC_SCHEDULER_LCG_H

#include <ns3/nr-sl-mac-sap.h>
#include <ns3/nr-sl-ue-cmac-sap.h>
#include <ns3/nstime.h>

#include <memory>
#include <unordered_map>

namespace ns3
{

/**
 * \ingroup scheduler
 *
 * \brief Represent a NR Sidelink Logical Channel of an UE
 *
 * The scheduler stores here the information that comes from RLC BSR for Sidelink
 *
 * Please use the unique ptr defined by the typedef SlLCPtr.
 *
 * \see UpdateLc
 * \see GetTotalQueueSize
 */
class NrSlUeMacSchedulerLC
{
  public:
    /**
     * \brief NrSlUeMacSchedulerLC constructor
     *
     * \param conf Configuration of the LC
     */
    NrSlUeMacSchedulerLC(const struct NrSlUeCmacSapProvider::SidelinkLogicalChannelInfo& conf);

    /**
     * \brief NrSlUeMacSchedulerLC copy constructor (deleted)
     *
     * \param other other instance
     */
    NrSlUeMacSchedulerLC(const NrSlUeMacSchedulerLC& other) = delete;

    /**
     * \brief NrSlUeMacSchedulerLC destructor
     */
    ~NrSlUeMacSchedulerLC() = default;

    /**
     * \brief Overwrite all the parameters with the one contained in the message
     *
     * \param params the message received from the RLC layer, containing the information about the
     * queues \return Number of bytes added or removed from the LC
     */
    int UpdateLC(const struct NrSlMacSapProvider::NrSlReportBufferStatusParameters& params);

    /**
     * \brief Get the total queue size of the LC
     *
     * \return the sum of all the queues of the LC in bytes
     */
    uint32_t GetTotalQueueSize() const;

    uint32_t m_id{0};                //!< ID of the LC
    uint32_t m_txQueueSize{0};       //!< The current size of the new transmission queue in byte.
    uint16_t m_txQueueHolDelay{0};   //!< Head of line delay of new transmissions in ms.
    uint16_t m_retxQueueHolDelay{0}; //!< Head of line delay of retransmissions in ms.
    uint32_t m_retxQueueSize{0};     //!< The current size of the retransmission queue in byte.
    uint16_t m_statusPduSize{0};     //!< The current size of the pending STATUS message in byte.

    uint8_t m_pqi{std::numeric_limits<uint8_t>::max()};      //!< PC5 QoS Class Identifier
    uint8_t m_priority{std::numeric_limits<uint8_t>::max()}; //!< priority
    bool m_isGbr{false};       //!< true if the bearer is GBR, false if the bearer is NON-GBR
    uint64_t m_mbr{0};         //!< maximum bitrate
    uint64_t m_gbr{0};         //!< guaranteed bitrate
    bool m_harqEnabled{false}; //!< true if HARQ is enabled
    Time m_pdb{0};             //!< Packet Delay Budget
    bool m_dynamic{false};     //!< true if LC scheduling is dynamic, false if it is SPS
    Time m_rri{0};             //!< Resource Reservation Interval
    SidelinkInfo::CastType m_castType{SidelinkInfo::CastType::Invalid}; //!< Cast type
};

/**
 * \brief Unique pointer to an instance of NrSlUeMacSchedulerLC
 * \ingroup scheduler
 */
typedef std::unique_ptr<NrSlUeMacSchedulerLC> NrSlLCPtr;

/**
 * \ingroup scheduler
 *
 * \brief An iterator to a map containing NrSlLCPtr unique pointers to LCs
 */
typedef std::unordered_map<uint8_t, NrSlLCPtr>::iterator NrSlLCIt;

/**
 * \ingroup scheduler
 * \brief Represent an NR Sidelink UE LCG
 *
 * A Logical Channel Group has an id (represented by m_id) and can contain
 * logical channels. The LC are stored inside an unordered map, indexed
 * by their ID.
 *
 * The LCs are inserted through the method Insert, and they can be updated with
 * a call to UpdateInfo.
 *
 * The general usage of this class is to insert each LC, and then update the
 * amount of bytes stored. The removal of an LC is still missing.
 *
 * \see UpdateInfo
 */
class NrSlUeMacSchedulerLCG
{
  public:
    /**
     * \brief NrSlUeMacSchedulerLCG constructor
     *
     * \param id The id of the LCG
     */
    NrSlUeMacSchedulerLCG(uint8_t id);

    /**
     * \brief NrSlUeMacSchedulerLCG copy constructor (deleted)
     *
     * \param other other instance
     */
    NrSlUeMacSchedulerLCG(const NrSlUeMacSchedulerLCG& other) = delete;

    /**
     * \brief NrSlUeMacSchedulerLCG destructor
     */
    ~NrSlUeMacSchedulerLCG() = default;

    /**
     * \brief Check if the LCG contains the LC id specified
     *
     * \param lcId LC ID to check for
     * \return true if the LCG contains the LC
     */
    bool Contains(uint8_t lcId) const;

    /**
     * \brief Get the number of LC currently in the LCG
     * \return the number of LC
     */
    uint32_t GetNumOfLC() const;

    /**
     * \brief Insert LC in the group
     * \param lc LC to insert
     */
    void Insert(NrSlLCPtr&& lc);

    /**
     * \brief Remove LC from the group
     * \param lcid LCID to remove
     */
    void Remove(uint8_t lcid);

    /**
     * \brief Update the LCG with a message coming from RLC in the UE.
     *
     * \param params message from UE RLC layer.
     *
     * The method is able to update the LC using all the information such as
     * Retx queue, Tx queue, and the various delays.
     *
     * A call to NrSlUeMacSchedulerLC::UpdateLc is performed.
     */
    void UpdateInfo(const struct NrSlMacSapProvider::NrSlReportBufferStatusParameters& params);

    /**
     * \brief Get the total size of the queue of all the LCs of the LCG
     *
     * \return the sum of all the queues of LCs of the LCG
     */
    uint32_t GetTotalSize() const;

    /**
     * \brief Get TotalSize Of LC
     * \param lcId LC ID
     * \return the total size of the LC
     */
    uint32_t GetTotalSizeOfLC(uint8_t lcId) const;

    /**
     * \brief Get a vector of LC ID
     *
     * \return a vector with all the LC id present in this LCG
     */
    std::vector<uint8_t> GetLCId() const;

    /**
     * \brief Get the LC PQI value
     *
     * \param lcId The LC id
     * \return The PQI value of the LC
     */
    uint8_t GetLcPqi(uint8_t lcId) const;

    /**
     * \brief Get the LC priority
     * \param lcId The LC id
     * \return The priority of the LC
     */
    uint8_t GetLcPriority(uint8_t lcId) const;

    /**
     * \brief Get the LC T2 value
     * \param lcId The LC id
     * \return The T2 value of the LC
     */
    Time GetLcT2(uint8_t lcId) const;

    /**
     * \brief Check if the LC is GBR
     *
     * \param lcId The LC id
     * \return true if the LC is GBR, false if the bearer is NON-GBR
     */
    bool IsLcGbr(uint16_t lcId) const;

    /**
     * \brief Check if the LC has HARQ enabled
     * \param lcId The LC id
     * \return true if the LC has HARQ enabled
     */
    bool IsHarqEnabled(uint8_t lcId) const;

    /**
     * \brief Get the LC MBR value
     *
     * \param lcId The LC id
     * \return The MBR value of the LC
     */
    uint64_t GetLcMbr(uint8_t lcId) const;

    /**
     * \brief Get the LC GBR value
     *
     * \param lcId The LC id
     * \return The GBR value of the LC
     */
    uint64_t GetLcGbr(uint8_t lcId) const;

    /**
     * \brief Check if the LC scheduling is dynamic
     *
     * \param lcId The LC id
     * \return true if the LC scheduling is dynamic, false if it is SPS
     */
    bool IsLcDynamic(uint16_t lcId) const;

    /**
     * \brief Check if the LC is configured to use HARQ
     *
     * \param lcId The LC id
     * \return true if the LC is configured to use HARQ
     */
    bool IsLcHarqEnabled(uint16_t lcId) const;

    /**
     * \brief Get the LC RRI value
     *
     * \param lcId The LC id
     * \return The RRI value of the LC
     */
    Time GetLcRri(uint8_t lcId) const;

    /**
     * \brief Get the LC remaining packet delay budget
     *
     * \param lcId The LC id
     * \return The remaining packet delay budget of the LC
     */
    Time GetLcPdb(uint8_t lcId) const;

    /**
     * \brief Get the LC cast type
     *
     * \param lcId The LC id
     * \return The cast type of the LC
     */
    SidelinkInfo::CastType GetLcCastType(uint8_t lcId) const;

    /**
     * \brief Inform the LCG of the assigned data to a LC id
     *
     * \param lcId the LC id to which the data was assigned
     * \param size amount of assigned data
     */
    void AssignedData(uint8_t lcId, uint32_t size);

    uint8_t m_id{0}; //!< ID of the LCG

  private:
    uint32_t m_totalSize{0};                        //!< Total size
    std::unordered_map<uint8_t, NrSlLCPtr> m_lcMap; //!< Map between LC id and their pointer
};

/**
 * \ingroup scheduler
 *
 * \brief NrSlLCGPtr unique pointer to a LCG
 */
typedef std::unique_ptr<NrSlUeMacSchedulerLCG> NrSlLCGPtr;
/**
 * \ingroup scheduler
 *
 * \brief An iterator to a map containing NrSlLCGPtr unique pointers to LCGs
 */
typedef std::unordered_map<uint8_t, NrSlLCGPtr>::iterator NrSlLCGIt;

} // namespace ns3

#endif /* NR_SL_UE_MAC_SCHEDULER_LCG_H */
