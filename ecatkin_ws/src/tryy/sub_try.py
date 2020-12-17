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


class image_converter:
  
  def __init__(self):
    self.image_pub = rospy.Publisher("image_topic_2",Image,queue_size=10)
    
    self.bridge = CvBridge()
    self.image_sub = rospy.Subscriber("/image_raw",Image,self.callback)
    
  def callback(self,data):
    try:
      cv_image = self.bridge.imgmsg_to_cv2(data, "bgr8")
    except CvBridgeError as e:
      print(e)

    (rows,cols,channels) = cv_image.shape
    #cv_image = cv2.cvtColor(cv_image, cv2.COLOR_BGR2GRAY)
    #if cols > 60 and rows > 60 :
      #cv2.circle(cv_image, (50,50), 10, 255)
    with graph.as_default():
    	pr, seg_img = predict( 
	              	model=mdl, 
	              	inp=cv_image 
                      )
    segimg = seg_img.astype(np.uint8)
    cv2.imshow("Image window", segimg)
    cv2.waitKey(3)

    try:
      self.image_pub.publish(self.bridge.cv2_to_imgmsg(segimg, "bgr8"))
    except CvBridgeError as e:
      print(e)



def main(args):
  
  global mdl
  mdl = model_from_checkpoint_path("mobilenet_segnet224")
  global graph
  graph = tf.get_default_graph()


  ic = image_converter()
  rospy.init_node('image_converter', anonymous=True)
  try:
    rospy.spin()
  except KeyboardInterrupt:
    print("Shutting down")
  cv2.destroyAllWindows()

if __name__ == '__main__':
    main(sys.argv)
