# Install script for directory: /mnt/d/Downloads/ns-3-dev/src/uan

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-uan-default.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-uan-default.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-uan-default.so"
         RPATH "/usr/local/lib:$ORIGIN/:$ORIGIN/../lib:/usr/local/lib64:$ORIGIN/:$ORIGIN/../lib64")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/mnt/d/Downloads/ns-3-dev/build/lib/libns3.42-uan-default.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-uan-default.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-uan-default.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-uan-default.so"
         OLD_RPATH "/mnt/d/Downloads/ns-3-dev/build/lib::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "/usr/local/lib:$ORIGIN/:$ORIGIN/../lib:/usr/local/lib64:$ORIGIN/:$ORIGIN/../lib64")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.42-uan-default.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ns3" TYPE FILE FILES
    "/mnt/d/Downloads/ns-3-dev/src/uan/helper/acoustic-modem-energy-model-helper.h"
    "/mnt/d/Downloads/ns-3-dev/src/uan/helper/uan-helper.h"
    "/mnt/d/Downloads/ns-3-dev/src/uan/model/acoustic-modem-energy-model.h"
    "/mnt/d/Downloads/ns-3-dev/src/uan/model/uan-channel.h"
    "/mnt/d/Downloads/ns-3-dev/src/uan/model/uan-header-common.h"
    "/mnt/d/Downloads/ns-3-dev/src/uan/model/uan-header-rc.h"
    "/mnt/d/Downloads/ns-3-dev/src/uan/model/uan-mac-aloha.h"
    "/mnt/d/Downloads/ns-3-dev/src/uan/model/uan-mac-cw.h"
    "/mnt/d/Downloads/ns-3-dev/src/uan/model/uan-mac-rc-gw.h"
    "/mnt/d/Downloads/ns-3-dev/src/uan/model/uan-mac-rc.h"
    "/mnt/d/Downloads/ns-3-dev/src/uan/model/uan-mac.h"
    "/mnt/d/Downloads/ns-3-dev/src/uan/model/uan-net-device.h"
    "/mnt/d/Downloads/ns-3-dev/src/uan/model/uan-noise-model-default.h"
    "/mnt/d/Downloads/ns-3-dev/src/uan/model/uan-noise-model.h"
    "/mnt/d/Downloads/ns-3-dev/src/uan/model/uan-phy-dual.h"
    "/mnt/d/Downloads/ns-3-dev/src/uan/model/uan-phy-gen.h"
    "/mnt/d/Downloads/ns-3-dev/src/uan/model/uan-phy.h"
    "/mnt/d/Downloads/ns-3-dev/src/uan/model/uan-prop-model-ideal.h"
    "/mnt/d/Downloads/ns-3-dev/src/uan/model/uan-prop-model-thorp.h"
    "/mnt/d/Downloads/ns-3-dev/src/uan/model/uan-prop-model.h"
    "/mnt/d/Downloads/ns-3-dev/src/uan/model/uan-transducer-hd.h"
    "/mnt/d/Downloads/ns-3-dev/src/uan/model/uan-transducer.h"
    "/mnt/d/Downloads/ns-3-dev/src/uan/model/uan-tx-mode.h"
    "/mnt/d/Downloads/ns-3-dev/build/include/ns3/uan-module.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/mnt/d/Downloads/ns-3-dev/cmake-cache/src/uan/examples/cmake_install.cmake")

endif()

