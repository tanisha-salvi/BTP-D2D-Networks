# Install script for directory: /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/mesh

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-mesh-default.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-mesh-default.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-mesh-default.so"
         RPATH "/usr/local/lib:$ORIGIN/:$ORIGIN/../lib:/usr/local/lib64:$ORIGIN/:$ORIGIN/../lib64")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/build/lib/libns3.42-mesh-default.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-mesh-default.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-mesh-default.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-mesh-default.so"
         OLD_RPATH "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/build/lib:::::::::::::::::::::::::::::"
         NEW_RPATH "/usr/local/lib:$ORIGIN/:$ORIGIN/../lib:/usr/local/lib64:$ORIGIN/:$ORIGIN/../lib64")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-mesh-default.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ns3" TYPE FILE FILES
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/mesh/helper/dot11s/dot11s-installer.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/mesh/helper/flame/flame-installer.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/mesh/helper/mesh-helper.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/mesh/helper/mesh-stack-installer.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/mesh/model/dot11s/dot11s-mac-header.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/mesh/model/dot11s/hwmp-protocol.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/mesh/model/dot11s/hwmp-rtable.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/mesh/model/dot11s/ie-dot11s-beacon-timing.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/mesh/model/dot11s/ie-dot11s-configuration.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/mesh/model/dot11s/ie-dot11s-id.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/mesh/model/dot11s/ie-dot11s-metric-report.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/mesh/model/dot11s/ie-dot11s-peer-management.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/mesh/model/dot11s/ie-dot11s-peering-protocol.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/mesh/model/dot11s/ie-dot11s-perr.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/mesh/model/dot11s/ie-dot11s-prep.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/mesh/model/dot11s/ie-dot11s-preq.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/mesh/model/dot11s/ie-dot11s-rann.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/mesh/model/dot11s/peer-link-frame.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/mesh/model/dot11s/peer-link.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/mesh/model/dot11s/peer-management-protocol.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/mesh/model/flame/flame-header.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/mesh/model/flame/flame-protocol-mac.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/mesh/model/flame/flame-protocol.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/mesh/model/flame/flame-rtable.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/mesh/model/mesh-information-element-vector.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/mesh/model/mesh-l2-routing-protocol.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/mesh/model/mesh-point-device.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/mesh/model/mesh-wifi-beacon.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/mesh/model/mesh-wifi-interface-mac-plugin.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/mesh/model/mesh-wifi-interface-mac.h"
    "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/build/include/ns3/mesh-module.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/mesh/examples/cmake_install.cmake")

endif()

