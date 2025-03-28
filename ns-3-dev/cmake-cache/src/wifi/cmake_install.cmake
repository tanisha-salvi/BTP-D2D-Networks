# Install script for directory: /mnt/d/Downloads/ns-3-dev/src/wifi

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-wifi-default.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-wifi-default.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-wifi-default.so"
         RPATH "/usr/local/lib:$ORIGIN/:$ORIGIN/../lib:/usr/local/lib64:$ORIGIN/:$ORIGIN/../lib64")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/mnt/d/Downloads/ns-3-dev/build/lib/libns3.42-wifi-default.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-wifi-default.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-wifi-default.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-wifi-default.so"
         OLD_RPATH "/mnt/d/Downloads/ns-3-dev/build/lib::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "/usr/local/lib:$ORIGIN/:$ORIGIN/../lib:/usr/local/lib64:$ORIGIN/:$ORIGIN/../lib64")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-wifi-default.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ns3" TYPE FILE FILES
    "/mnt/d/Downloads/ns-3-dev/src/wifi/helper/athstats-helper.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/helper/spectrum-wifi-helper.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/helper/wifi-helper.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/helper/wifi-mac-helper.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/helper/wifi-radio-energy-model-helper.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/helper/yans-wifi-helper.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/helper/wifi-phy-rx-trace-helper.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/addba-extension.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/adhoc-wifi-mac.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/ampdu-subframe-header.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/ampdu-tag.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/amsdu-subframe-header.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/ap-wifi-mac.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/block-ack-agreement.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/block-ack-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/block-ack-type.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/block-ack-window.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/capability-information.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/channel-access-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/ctrl-headers.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/edca-parameter-set.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/eht/default-emlsr-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/eht/eht-capabilities.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/eht/eht-configuration.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/eht/eht-frame-exchange-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/eht/eht-operation.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/eht/tid-to-link-mapping-element.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/eht/eht-phy.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/eht/eht-ppdu.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/eht/emlsr-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/eht/multi-link-element.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/error-rate-model.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/extended-capabilities.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/fcfs-wifi-queue-scheduler.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/frame-capture-model.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/frame-exchange-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/he/constant-obss-pd-algorithm.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/he/he-6ghz-band-capabilities.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/he/he-capabilities.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/he/he-configuration.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/he/he-frame-exchange-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/he/he-operation.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/he/he-phy.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/he/he-ppdu.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/he/he-ru.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/he/mu-edca-parameter-set.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/he/mu-snr-tag.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/he/multi-user-scheduler.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/he/obss-pd-algorithm.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/he/rr-multi-user-scheduler.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/ht/ht-capabilities.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/ht/ht-configuration.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/ht/ht-frame-exchange-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/ht/ht-operation.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/ht/ht-phy.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/ht/ht-ppdu.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/interference-helper.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/mac-rx-middle.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/mac-tx-middle.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/mgt-action-headers.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/mgt-headers.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/mpdu-aggregator.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/msdu-aggregator.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/nist-error-rate-model.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/non-ht/dsss-error-rate-model.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/non-ht/dsss-parameter-set.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/non-ht/dsss-phy.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/non-ht/dsss-ppdu.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/non-ht/erp-information.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/non-ht/erp-ofdm-phy.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/non-ht/erp-ofdm-ppdu.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/non-ht/ofdm-phy.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/non-ht/ofdm-ppdu.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/non-inheritance.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/originator-block-ack-agreement.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/phy-entity.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/preamble-detection-model.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/qos-frame-exchange-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/qos-txop.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/qos-utils.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/rate-control/aarf-wifi-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/rate-control/aarfcd-wifi-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/rate-control/amrr-wifi-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/rate-control/aparf-wifi-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/rate-control/arf-wifi-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/rate-control/cara-wifi-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/rate-control/constant-rate-wifi-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/rate-control/ideal-wifi-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/rate-control/minstrel-ht-wifi-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/rate-control/minstrel-wifi-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/rate-control/onoe-wifi-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/rate-control/parf-wifi-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/rate-control/rraa-wifi-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/rate-control/rrpaa-wifi-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/rate-control/thompson-sampling-wifi-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/recipient-block-ack-agreement.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/reduced-neighbor-report.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/reference/error-rate-tables.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/simple-frame-capture-model.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/snr-tag.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/spectrum-wifi-phy.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/ssid.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/sta-wifi-mac.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/status-code.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/supported-rates.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/table-based-error-rate-model.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/threshold-preamble-detection-model.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/tim.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/txop.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/vht/vht-capabilities.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/vht/vht-configuration.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/vht/vht-frame-exchange-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/vht/vht-operation.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/vht/vht-phy.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/vht/vht-ppdu.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-ack-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-acknowledgment.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-assoc-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-bandwidth-filter.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-default-ack-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-default-assoc-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-default-protection-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-information-element.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-mac-header.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-mac-queue-container.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-mac-queue-elem.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-mac-queue-scheduler-impl.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-mac-queue-scheduler.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-mac-queue.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-mac-trailer.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-mac.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-mgt-header.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-mode.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-mpdu-type.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-mpdu.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-net-device.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-opt-field.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-phy-band.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-phy-common.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-phy-listener.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-phy-operating-channel.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-phy-state-helper.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-phy-state.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-phy.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-ppdu.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-protection-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-protection.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-psdu.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-radio-energy-model.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-remote-station-info.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-remote-station-manager.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-spectrum-phy-interface.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-spectrum-signal-parameters.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-standards.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-tx-current-model.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-tx-parameters.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-tx-timer.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-tx-vector.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-utils.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/yans-error-rate-model.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/yans-wifi-channel.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/yans-wifi-phy.h"
    "/mnt/d/Downloads/ns-3-dev/src/wifi/model/wifi-spectrum-value-helper.h"
    "/mnt/d/Downloads/ns-3-dev/build/include/ns3/wifi-module.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/mnt/d/Downloads/ns-3-dev/cmake-cache/src/wifi/examples/cmake_install.cmake")

endif()

