
(cl:in-package :asdf)

(defsystem "learning_topic-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Student" :depends-on ("_package_Student"))
    (:file "_package_Student" :depends-on ("_package"))
  ))