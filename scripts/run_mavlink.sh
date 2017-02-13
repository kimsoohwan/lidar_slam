#!/bin/sh
set -e  # exit on first error

source ~/catkin_ws_build/devel/setup.bash
roslaunch mavlink mavros_lidar_slam.launch

