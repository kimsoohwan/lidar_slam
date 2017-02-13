#!/bin/sh
set -e  # exit on first error

rosrun lidar_slam convert_vert_LaserScan_to_MultiEchoLaserScan &
rosrun lidar_slam convert_horz_LaserScan_to_MultiEchoLaserScan
