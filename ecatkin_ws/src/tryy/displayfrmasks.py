#!/usr/bin/env python
from __future__ import print_function

import roslib
roslib.load_manifest('tryy')
import sys
import rospy
import cv2
import numpy as np
import tensorflow as tf
from std_msgs.msg import String
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
from keras_segmentation.predict import predict
from keras_segmentation.predict import model_from_checkpoint_path

red = (153, 0, 18)
dim=(720, 480) 

class image_converter:

  def __init__(self):
    self.image_pub = rospy.Publisher("/image_raww_comb", Image, queue_size=10)

    self.bridge = CvBridge()
    self.image_sub = rospy.Subscriber("/image_raww",Image,self.callback)
    self.image_sub = rospy.Subscriber("/iris_demo/ZED_stereocamera/camera/left/image_raw",Image,self.callback)

  def callback(self,data):
    try:
      cv_image = self.bridge.imgmsg_to_cv2(data, "bgr8")
    except CvBridgeError as e:
      print(e)

    (rows,cols,channels) = cv_image.shape
    if cols > 60 and rows > 60 :
      cv2.circle(cv_image, (50,50), 10, 255)

    def create_blank(width, height, rgb_color=(0, 0, 0)):
      # Create black blank image
      image = np.zeros((height, width, 3), np.uint8)
      # Since OpenCV uses BGR, convert the color first
      color = tuple(reversed(rgb_color))
      # Fill image with color
      image[:] = color
      return image
    
    # Combine the NN's outcome with ZED's stream of frames
    copy_image = np.copy(cv_image)
    copy_mask = np.copy(segimg)
    ww = copy_mask.shape[1]
    hh = copy_mask.shape[0]
    red_mask = create_blank(ww, hh, rgb_color=red)
    copy_mask=cv2.bitwise_and(copy_mask,red_mask)
    combo_image=cv2.addWeighted(copy_image, 1, copy_mask,1 ,1)
    cv2.imshow("Combined prediction",combo_image)
    cv2.waitKey(3)

    try:
      self.image_pub.publish(self.bridge.cv2_to_imgmsg(combo_image, "bgr8"))
    except CvBridgeError as e:
      print(e)

def main(args):
  ic = image_converter()
  rospy.init_node('image_converter', anonymous=True)
  try:
    rospy.spin()
  except KeyboardInterrupt:
    print("Shutting down")
  cv2.destroyAllWindows()

if __name__ == '__main__':
    main(sys.argv)