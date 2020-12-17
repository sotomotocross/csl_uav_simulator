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
    self.image_pub_first_image = rospy.Publisher("/image_raww",Image,queue_size=10)
    self.image_pub_second_image = rospy.Publisher("/image_raww_comb", Image, queue_size=10)
    self.bridge = CvBridge()
    self.image_sub = rospy.Subscriber("/iris_demo/ZED_stereocamera/camera/left/image_raw",Image,self.callback) 

  def callback(self,data):
    try:
      cv_image = self.bridge.imgmsg_to_cv2(data, "bgr8")
    except CvBridgeError as e:
      print(e)

    (rows,cols,channels) = cv_image.shape

    def create_blank(width, height, rgb_color=(0, 0, 0)):
      # Create black blank image
      image = np.zeros((height, width, 3), np.uint8)
      # Since OpenCV uses BGR, convert the color first
      color = tuple(reversed(rgb_color))
      # Fill image with color
      image[:] = color
      return image

    with graph.as_default():
    	pr, seg_img = predict( 
	              	model=mdl, 
	              	inp=cv_image 
                      )
    segimg = seg_img.astype(np.uint8)


    copy_image = np.copy(cv_image)
    copy_mask = np.copy(segimg)
    ww = copy_mask.shape[1]
    hh = copy_mask.shape[0]
    red_mask = create_blank(ww, hh, rgb_color=red)
    copy_mask=cv2.bitwise_and(copy_mask,red_mask)
    combo_image=cv2.addWeighted(copy_image, 1, copy_mask,1 ,1)

    # mask = cv2.inRange(segimg, (130, 130, 130), (255, 255, 255))
    # kernel = np.ones((1, 1), np.uint8)
    # mask = cv2.erode(mask, kernel, iterations=3)
    # mask = cv2.dilate(mask, kernel, iterations=3)
    # contours_blk, hierarchy = cv2.findContours(mask.copy(), cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
    # print("contours: ", contours_blk)
    # contours_blk.sort(key=cv2.minAreaRect)
    # blackbox = cv2.minAreaRect(contours_blk[0])
    # (x_min, y_min), (w_min, h_min), angle = blackbox
    # box = cv2.boxPoints(blackbox)
    # box = np.int0(box)
    # print("1st point of box: ", box[0][:])
    # print("2nd point of box: ", box[1][:])
    # print("3rd point of box: ", box[2][:])
    # print("4th point of box: ", box[3][:]) 

    
    # cv2.imshow("Combined prediction",combo_image)    
    # cv2.imshow("Prediction image window", segimg)    
    cv2.waitKey(3)

    try:
      self.image_pub_first_image.publish(self.bridge.cv2_to_imgmsg(segimg, "bgr8"))
      self.image_pub_second_image.publish(self.bridge.cv2_to_imgmsg(combo_image, "bgr8"))
    except CvBridgeError as e:
      print(e)



def main(args):
  
  global mdl
  mdl = model_from_checkpoint_path("src/tryy/model_checkpoints/vgg_unet_1")
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