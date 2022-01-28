;; Auto-generated. Do not edit!


(when (boundp 'learning_topic::ShowStudent)
  (if (not (find-package "LEARNING_TOPIC"))
    (make-package "LEARNING_TOPIC"))
  (shadow 'ShowStudent (find-package "LEARNING_TOPIC")))
(unless (find-package "LEARNING_TOPIC::SHOWSTUDENT")
  (make-package "LEARNING_TOPIC::SHOWSTUDENT"))
(unless (find-package "LEARNING_TOPIC::SHOWSTUDENTREQUEST")
  (make-package "LEARNING_TOPIC::SHOWSTUDENTREQUEST"))
(unless (find-package "LEARNING_TOPIC::SHOWSTUDENTRESPONSE")
  (make-package "LEARNING_TOPIC::SHOWSTUDENTRESPONSE"))

(in-package "ROS")





(defclass learning_topic::ShowStudentRequest
  :super ros::object
  :slots ())

(defmethod learning_topic::ShowStudentRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass learning_topic::ShowStudentResponse
  :super ros::object
  :slots (_name ))

(defmethod learning_topic::ShowStudentResponse
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass learning_topic::ShowStudent
  :super ros::object
  :slots ())

(setf (get learning_topic::ShowStudent :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get learning_topic::ShowStudent :datatype-) "learning_topic/ShowStudent")
(setf (get learning_topic::ShowStudent :request) learning_topic::ShowStudentRequest)
(setf (get learning_topic::ShowStudent :response) learning_topic::ShowStudentResponse)

(defmethod learning_topic::ShowStudentRequest
  (:response () (instance learning_topic::ShowStudentResponse :init)))

(setf (get learning_topic::ShowStudentRequest :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get learning_topic::ShowStudentRequest :datatype-) "learning_topic/ShowStudentRequest")
(setf (get learning_topic::ShowStudentRequest :definition-)
      "---
string name

")

(setf (get learning_topic::ShowStudentResponse :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get learning_topic::ShowStudentResponse :datatype-) "learning_topic/ShowStudentResponse")
(setf (get learning_topic::ShowStudentResponse :definition-)
      "---
string name

")



(provide :learning_topic/ShowStudent "c1f3d28f1b044c871e6eff2e9fc3c667")


