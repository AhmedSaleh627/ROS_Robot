# Install script for directory: /home/ahmedsaleh/Rostutorials_ws/src/my_ROS_mobile_robot/my_robot_scripts/arduino_scripts/arduino_peripherals

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ahmedsaleh/Rostutorials_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ahmedsaleh/Rostutorials_ws/build/my_ROS_mobile_robot/my_robot_scripts/arduino_scripts/arduino_peripherals/catkin_generated/installspace/arduino_peripherals.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arduino_peripherals/cmake" TYPE FILE FILES
    "/home/ahmedsaleh/Rostutorials_ws/build/my_ROS_mobile_robot/my_robot_scripts/arduino_scripts/arduino_peripherals/catkin_generated/installspace/arduino_peripheralsConfig.cmake"
    "/home/ahmedsaleh/Rostutorials_ws/build/my_ROS_mobile_robot/my_robot_scripts/arduino_scripts/arduino_peripherals/catkin_generated/installspace/arduino_peripheralsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arduino_peripherals" TYPE FILE FILES "/home/ahmedsaleh/Rostutorials_ws/src/my_ROS_mobile_robot/my_robot_scripts/arduino_scripts/arduino_peripherals/package.xml")
endif()

