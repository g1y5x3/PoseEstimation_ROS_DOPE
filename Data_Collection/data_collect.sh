#!/bin/bash
source /opt/ros/kinetic/setup.bash
source /home/iris/yg5d6/Workspace/PoseEstimation/devel/setup.bash
export ROS_MASTER_URI=http://10.14.1.204:11311
export ROS_IP=10.14.1.15

echo 'Data Collection Started!'

# === TINY YOLO ===
# Command for data collection with respect to left camera
# case 1
rostopic echo /yolo/object_pose_avg > yolo_avg_position_$1.txt &
# case 2
rostopic echo /yolo/object_pose_nenk > yolo_nenk_position_$1.txt &
# case 3
rostopic echo /yolo/object_pose_nenm > yolo_nenm_position_$1.txt &
# case 4
rostopic echo /yolo/object_pose_neqm > yolo_nepm_position_$1.txt &

# Command for data collection with respect to left camera
rosrun tf tf_echo /world /object_yolo > yolo_position_wrt_world_$1.txt & 

# === DOPE ===
# Command for data collection
rostopic echo /dope/pose_mustard > dope_position_$1.txt &

# Command for data collection with respect to left camera
rosrun tf tf_echo /world /object_dope > dope_position_wrt_world_$1.txt & 

sleep 30

echo 'Data Collection Completed!'

killall -e rostopic
killall  tf_echo
exit 1
