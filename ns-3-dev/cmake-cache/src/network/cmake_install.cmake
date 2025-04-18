# Install script for directory: /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-network-default.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-network-default.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-network-default.so"
         RPATH "/usr/local/lib:$ORIGIN/:$ORIGIN/../lib:/usr/local/lib64:$ORIGIN/:$ORIGIN/../lib64")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/build/lib/libns3.42-network-default.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-network-default.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-network-default.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-network-default.so"
         OLD_RPATH "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/build/lib:::::::::::::::::::::::::::::"
         NEW_RPATH "/usr/local/lib:$ORIGIN/:$ORIGIN/../lib:/usr/local/lib64:$ORIGIN/:$ORIGIN/../lib64")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-network-default.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ns3" TYPE FILE FILES
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/helper/application-container.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/helper/application-helper.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/helper/delay-jitter-estimation.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/helper/net-device-container.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/helper/node-container.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/helper/packet-socket-helper.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/helper/simple-net-device-helper.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/helper/trace-helper.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/model/address.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/model/application.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/model/buffer.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/model/byte-tag-list.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/model/channel-list.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/model/channel.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/model/chunk.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/model/header.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/model/net-device.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/model/nix-vector.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/model/node-list.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/model/node.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/model/packet-metadata.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/model/packet-tag-list.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/model/packet.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/model/socket-factory.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/model/socket.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/model/tag-buffer.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/model/tag.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/model/trailer.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/test/header-serialization-test.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/address-utils.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/bit-deserializer.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/bit-serializer.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/crc32.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/data-rate.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/drop-tail-queue.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/dynamic-queue-limits.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/error-channel.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/error-model.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/ethernet-header.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/ethernet-trailer.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/flow-id-tag.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/generic-phy.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/inet-socket-address.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/inet6-socket-address.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/ipv4-address.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/ipv6-address.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/llc-snap-header.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/lollipop-counter.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/mac16-address.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/mac48-address.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/mac64-address.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/mac8-address.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/net-device-queue-interface.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/output-stream-wrapper.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/packet-burst.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/packet-data-calculators.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/packet-probe.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/packet-socket-address.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/packet-socket-client.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/packet-socket-factory.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/packet-socket-server.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/packet-socket.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/packetbb.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/pcap-file-wrapper.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/pcap-file.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/pcap-test.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/queue-fwd.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/queue-item.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/queue-limits.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/queue-size.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/queue.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/radiotap-header.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/sequence-number.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/simple-channel.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/simple-net-device.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/sll-header.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/network/utils/timestamp-tag.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/build/include/ns3/network-module.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/network/examples/cmake_install.cmake")

endif()

