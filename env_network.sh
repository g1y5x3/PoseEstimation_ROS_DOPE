#!/bin/bash
source /opt/ros/kinetic/setup.bash
source devel/setup.bash
export LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu/:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/opt/ros/kinetic/lib:$LD_LIBRARY_PATH

#! Network configuration
export ROS_MASTER_URI=http://10.14.1.204:11311
export ROS_IP=10.14.1.15
