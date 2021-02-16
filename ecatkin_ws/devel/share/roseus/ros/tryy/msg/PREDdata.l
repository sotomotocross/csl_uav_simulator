;; Auto-generated. Do not edit!


(when (boundp 'tryy::PREDdata)
  (if (not (find-package "TRYY"))
    (make-package "TRYY"))
  (shadow 'PREDdata (find-package "TRYY")))
(unless (find-package "TRYY::PREDDATA")
  (make-package "TRYY::PREDDATA"))

(in-package "ROS")
;;//! \htmlinclude PREDdata.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tryy::PREDdata
  :super ros::object
  :slots (_header _box_1 _box_2 _box_3 _box_4 _stamp ))

(defmethod tryy::PREDdata
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:box_1 __box_1) (make-array 0 :initial-element 0 :element-type :integer))
    ((:box_2 __box_2) (make-array 0 :initial-element 0 :element-type :integer))
    ((:box_3 __box_3) (make-array 0 :initial-element 0 :element-type :integer))
    ((:box_4 __box_4) (make-array 0 :initial-element 0 :element-type :integer))
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _box_1 __box_1)
   (setq _box_2 __box_2)
   (setq _box_3 __box_3)
   (setq _box_4 __box_4)
   (setq _stamp __stamp)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:box_1
   (&optional __box_1)
   (if __box_1 (setq _box_1 __box_1)) _box_1)
  (:box_2
   (&optional __box_2)
   (if __box_2 (setq _box_2 __box_2)) _box_2)
  (:box_3
   (&optional __box_3)
   (if __box_3 (setq _box_3 __box_3)) _box_3)
  (:box_4
   (&optional __box_4)
   (if __box_4 (setq _box_4 __box_4)) _box_4)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32[] _box_1
    (* 4    (length _box_1)) 4
    ;; int32[] _box_2
    (* 4    (length _box_2)) 4
    ;; int32[] _box_3
    (* 4    (length _box_3)) 4
    ;; int32[] _box_4
    (* 4    (length _box_4)) 4
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32[] _box_1
     (write-long (length _box_1) s)
     (dotimes (i (length _box_1))
       (write-long (elt _box_1 i) s)
       )
     ;; int32[] _box_2
     (write-long (length _box_2) s)
     (dotimes (i (length _box_2))
       (write-long (elt _box_2 i) s)
       )
     ;; int32[] _box_3
     (write-long (length _box_3) s)
     (dotimes (i (length _box_3))
       (write-long (elt _box_3 i) s)
       )
     ;; int32[] _box_4
     (write-long (length _box_4) s)
     (dotimes (i (length _box_4))
       (write-long (elt _box_4 i) s)
       )
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32[] _box_1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _box_1 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _box_1 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _box_2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _box_2 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _box_2 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _box_3
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _box_3 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _box_3 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _box_4
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _box_4 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _box_4 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tryy::PREDdata :md5sum-) "daae477024268b88941e5fe84cf3bcb0")
(setf (get tryy::PREDdata :datatype-) "tryy/PREDdata")
(setf (get tryy::PREDdata :definition-)
      "Header header
int32[] box_1
int32[] box_2
int32[] box_3
int32[] box_4
time stamp
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :tryy/PREDdata "daae477024268b88941e5fe84cf3bcb0")


