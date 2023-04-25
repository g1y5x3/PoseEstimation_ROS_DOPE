execute_process(COMMAND "/home/iris/yg5d6/Workspace/PoseEstimation/build/dope/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/iris/yg5d6/Workspace/PoseEstimation/build/dope/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
