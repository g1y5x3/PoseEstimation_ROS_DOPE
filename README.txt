1. Make sure to source the environment file before you run any of the packages, otherwise it won't run.

    1) For running the pacakges locally

    source env_local.sh

    2) For running the packages over the network communication 

    source env_network.sh

2. Run the following package in order

    1) For running the packages locally
        [1] Launch the web camera
            roslaunch dope camera.launch
        [2] Lauch Deep Object Pose Estimation
            roslaunch dope dope_webcam.launch
        [3] publish the world coordinate frame and the camera coordinate frame
            rosrun tf2_ros static_transform_publisher -0.175, 0.046, 0.977 0.564, 0.612, -0.399, 0.385 dope_webcam checkerboard
        [4] publish the onject coordinate frame
            rosrun dope object_tf_broadcaster.py

    2) For running the packages over the network communication
    
        [1] Deep Object Pose Estimation (DOPE)
            
            roslaunch dope dope_pycam.launch
    
        [2]



# Temp
roslaunch dope camera.launch
roslaunch dope dope_webcam.launch
rosrun tf2_ros static_transform_publisher -0.175, 0.046, 0.977 0.564, 0.612, -0.399, 0.385 dope_webcam checkerboard
rosrun dope object_tf_broadcaster.py
rosrun rviz rviz

