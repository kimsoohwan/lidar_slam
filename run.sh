#!/bin/bash

set -e # exit on first error
export ROS_PACKAGE_PATH=/opt/ros/indigo/share:/opt/ros/indigo/stacks:~/home/nick/catkin_ws:~/home/nick/catkin_ws_build:~/home/nick/catkin_ws_isolated:~/home/nick/projects
source ~/catkin_ws/devel/setup.bash

bash scripts/run_scan_type_converter.sh &
#bash scripts/run_mavlink.sh &
bash scripts/run_hokuyo_nodes.sh &

cd ~/catkin_ws/src/lidar_slam/bags
now=$(date +"%m-%d-%Y_%T")
rosbag record -O lidar_slam_$now /imu /vertical_laser_2d /horizontal_laser_2d

# Once the bag has been collected, run it through cartographer

