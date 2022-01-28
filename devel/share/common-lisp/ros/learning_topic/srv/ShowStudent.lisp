; Auto-generated. Do not edit!


(cl:in-package learning_topic-srv)


;//! \htmlinclude ShowStudent-request.msg.html

(cl:defclass <ShowStudent-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ShowStudent-request (<ShowStudent-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShowStudent-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShowStudent-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name learning_topic-srv:<ShowStudent-request> is deprecated: use learning_topic-srv:ShowStudent-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShowStudent-request>) ostream)
  "Serializes a message object of type '<ShowStudent-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShowStudent-request>) istream)
  "Deserializes a message object of type '<ShowStudent-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShowStudent-request>)))
  "Returns string type for a service object of type '<ShowStudent-request>"
  "learning_topic/ShowStudentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShowStudent-request)))
  "Returns string type for a service object of type 'ShowStudent-request"
  "learning_topic/ShowStudentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShowStudent-request>)))
  "Returns md5sum for a message object of type '<ShowStudent-request>"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShowStudent-request)))
  "Returns md5sum for a message object of type 'ShowStudent-request"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShowStudent-request>)))
  "Returns full string definition for message of type '<ShowStudent-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShowStudent-request)))
  "Returns full string definition for message of type 'ShowStudent-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShowStudent-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShowStudent-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ShowStudent-request
))
;//! \htmlinclude ShowStudent-response.msg.html

(cl:defclass <ShowStudent-response> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass ShowStudent-response (<ShowStudent-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShowStudent-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShowStudent-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name learning_topic-srv:<ShowStudent-response> is deprecated: use learning_topic-srv:ShowStudent-response instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ShowStudent-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader learning_topic-srv:name-val is deprecated.  Use learning_topic-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShowStudent-response>) ostream)
  "Serializes a message object of type '<ShowStudent-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShowStudent-response>) istream)
  "Deserializes a message object of type '<ShowStudent-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShowStudent-response>)))
  "Returns string type for a service object of type '<ShowStudent-response>"
  "learning_topic/ShowStudentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShowStudent-response)))
  "Returns string type for a service object of type 'ShowStudent-response"
  "learning_topic/ShowStudentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShowStudent-response>)))
  "Returns md5sum for a message object of type '<ShowStudent-response>"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShowStudent-response)))
  "Returns md5sum for a message object of type 'ShowStudent-response"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShowStudent-response>)))
  "Returns full string definition for message of type '<ShowStudent-response>"
  (cl:format cl:nil "string name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShowStudent-response)))
  "Returns full string definition for message of type 'ShowStudent-response"
  (cl:format cl:nil "string name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShowStudent-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShowStudent-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ShowStudent-response
    (cl:cons ':name (name msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ShowStudent)))
  'ShowStudent-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ShowStudent)))
  'ShowStudent-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShowStudent)))
  "Returns string type for a service object of type '<ShowStudent>"
  "learning_topic/ShowStudent")