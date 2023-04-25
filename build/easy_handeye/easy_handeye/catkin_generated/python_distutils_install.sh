#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/iris/yg5d6/Workspace/PoseEstimation/src/easy_handeye/easy_handeye"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/iris/yg5d6/Workspace/PoseEstimation/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/iris/yg5d6/Workspace/PoseEstimation/install/lib/python2.7/dist-packages:/home/iris/yg5d6/Workspace/PoseEstimation/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/iris/yg5d6/Workspace/PoseEstimation/build" \
    "/usr/bin/python" \
    "/home/iris/yg5d6/Workspace/PoseEstimation/src/easy_handeye/easy_handeye/setup.py" \
    build --build-base "/home/iris/yg5d6/Workspace/PoseEstimation/build/easy_handeye/easy_handeye" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/iris/yg5d6/Workspace/PoseEstimation/install" --install-scripts="/home/iris/yg5d6/Workspace/PoseEstimation/install/bin"
