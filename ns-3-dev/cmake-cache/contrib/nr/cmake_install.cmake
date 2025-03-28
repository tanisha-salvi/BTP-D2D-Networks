# Install script for directory: /mnt/d/Downloads/ns-3-dev/contrib/nr

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "default")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-nr-default.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-nr-default.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-nr-default.so"
         RPATH "/usr/local/lib:$ORIGIN/:$ORIGIN/../lib:/usr/local/lib64:$ORIGIN/:$ORIGIN/../lib64")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/mnt/d/Downloads/ns-3-dev/build/lib/libns3.42-nr-default.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-nr-default.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-nr-default.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-nr-default.so"
         OLD_RPATH "/mnt/d/Downloads/ns-3-dev/build/lib::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "/usr/local/lib:$ORIGIN/:$ORIGIN/../lib:/usr/local/lib64:$ORIGIN/:$ORIGIN/../lib64")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-nr-default.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ns3" TYPE FILE FILES
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/helper/nr-helper.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/helper/nr-phy-rx-trace.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/helper/nr-mac-rx-trace.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/helper/nr-point-to-point-epc-helper.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/helper/nr-bearer-stats-calculator.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/helper/nr-bearer-stats-connector.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/helper/nr-bearer-stats-simple.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/helper/beamforming-helper-base.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/helper/ideal-beamforming-helper.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/helper/realistic-beamforming-helper.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/helper/node-distribution-scenario-interface.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/helper/grid-scenario-helper.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/helper/hexagonal-grid-scenario-helper.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/helper/file-scenario-helper.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/helper/cc-bwp-helper.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/helper/nr-radio-environment-map-helper.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/helper/nr-spectrum-value-helper.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/helper/scenario-parameters.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/helper/three-gpp-ftp-m1-helper.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/helper/nr-stats-calculator.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/helper/nr-mac-scheduling-stats.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/helper/nr-sl-helper.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/helper/nr-sl-stats-helper.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-net-device.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-gnb-net-device.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-ue-net-device.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-phy.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-gnb-phy.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-ue-phy.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-spectrum-phy.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-interference.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-pdu-info.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-header-vs.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-header-vs-ul.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-header-vs-dl.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-header-fs.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-header-fs-ul.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-header-fs-dl.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-short-bsr-ce.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-phy-mac-common.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-scheduler.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-scheduler-tdma-rr.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-scheduler-tdma-pf.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-scheduler-ofdma-rr.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-scheduler-ofdma-pf.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-scheduler-tdma-qos.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-scheduler-ofdma-qos.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-control-messages.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-spectrum-signal-parameters.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-radio-bearer-tag.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-amc.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-sched-sap.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-csched-sap.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-phy-sap.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-lte-mi-error-model.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-gnb-mac.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-ue-mac.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-sl-ue-mac.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-rrc-protocol-ideal.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-harq-phy.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/bandwidth-part-gnb.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/bandwidth-part-ue.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/bwp-manager-gnb.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/bwp-manager-ue.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/bwp-manager-algorithm.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-harq-process.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-harq-vector.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-scheduler-harq-rr.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-scheduler-cqi-management.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-scheduler-lcg.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-scheduler-ns3.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-scheduler-tdma.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-scheduler-ofdma.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-scheduler-ofdma-mr.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-scheduler-tdma-mr.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-scheduler-ue-info.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-scheduler-ue-info-mr.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-scheduler-ue-info-rr.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-scheduler-ue-info-pf.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-scheduler-ue-info-qos.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-scheduler-lc-alg.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-scheduler-lc-rr.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-scheduler-lc-qos.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-eesm-error-model.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-eesm-t1.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-eesm-t2.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-eesm-ir.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-eesm-cc.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-eesm-ir-t1.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-eesm-ir-t2.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-eesm-cc-t1.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-eesm-cc-t2.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-error-model.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-ch-access-manager.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/beam-id.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/beamforming-vector.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/beam-manager.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/ideal-beamforming-algorithm.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/realistic-beamforming-algorithm.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/sfnsf.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/lena-error-model.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-scheduler-srs.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mac-scheduler-srs-default.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-ue-power-control.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/realistic-bf-manager.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-sl-bwp-manager-ue.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-sl-chunk-processor.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-sl-comm-resource-pool-factory.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-sl-interference.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-sl-mac-pdu-tag.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-sl-phy-mac-common.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-sl-sci-f1a-header.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-sl-sci-f2a-header.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-sl-sci-f2-header.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-sl-ue-mac-harq.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-sl-ue-mac-scheduler-dst-info.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-sl-ue-mac-scheduler.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-sl-ue-mac-scheduler-lcg.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-sl-ue-mac-scheduler-fixed-mcs.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-sl-ue-phy-sap.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/utils/distance-based-three-gpp-spectrum-propagation-loss-model.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/utils/traffic-generators/model/traffic-generator.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/utils/traffic-generators/model/traffic-generator-ftp-single.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/utils/traffic-generators/model/traffic-generator-ngmn-ftp-multi.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/utils/traffic-generators/model/traffic-generator-ngmn-video.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/utils/traffic-generators/model/traffic-generator-ngmn-gaming.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/utils/traffic-generators/model/traffic-generator-ngmn-voip.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/utils/traffic-generators/model/traffic-generator-3gpp-pose-control.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/utils/traffic-generators/model/traffic-generator-3gpp-audio-data.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/utils/traffic-generators/model/traffic-generator-3gpp-generic-video.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/utils/traffic-generators/helper/traffic-generator-helper.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/utils/traffic-generators/helper/xr-traffic-mixer-helper.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-cb-two-port.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-cb-type-one-sp.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-cb-type-one.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mimo-chunk-processor.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mimo-matrices.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-pm-search-full.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-pm-search.h"
    "/mnt/d/Downloads/ns-3-dev/contrib/nr/model/nr-mimo-signal.h"
    "/mnt/d/Downloads/ns-3-dev/build/include/ns3/nr-module.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/mnt/d/Downloads/ns-3-dev/cmake-cache/contrib/nr/examples/cmake_install.cmake")

endif()

