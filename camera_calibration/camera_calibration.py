## Camera calibration script
# Import the necessary libraries
import numpy as np
import argparse
import time
import cv2
import os

# Initialize the videostream to allow the camera sensor to warmup
print("[INFO] starting video stream ...")
time.sleep(2.0)
i = 1
cam = cv2.VideoCapture(0)

# Loop over the frames from the video stream
while (i<=1):

    # Get information from the pressed key from the keyboard 
    key = cv2.waitKey(1) & 0xFF

    # if the key "q" is pressed, break the loop and quit the program
    if key == ord("q"):
        print("[INFO] the key 'q' was pressed from the keyboard ... exiting the program gracefully")
        break
  
    # Grab the frames from the threaded video stream and resize it to have a maximum width of 400 pixels
    # Work with second camera - camB
    right_frame = cam.read()
    right_frame = imutils.rotate(right_frame, 180)
    right_frame = imutils.resize(right_frame, width=400)

    # Work with fourth camera - camD
    cv2.imshow("Frame", right_frame)
    #key = cv2.waitKey(1) & 0xFF
    
    # if the key "g" is pressed, grab image from the both cameras and save them with different names
    if key == ord("g"):
        print("[INFO] the key 'g' was pressed from the keyboard ... saving corresponding frames from both cameras")
        cv2.imwrite("camera_calibration_images/right_frame%02d.jpg" % i, right_frame)
        i += 1
        continue

# do a bit of cleanup
cv2.destroyAllWindows()
cams_init.stop()
