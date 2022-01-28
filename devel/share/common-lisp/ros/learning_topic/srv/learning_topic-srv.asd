
(cl:in-package :asdf)

(defsystem "learning_topic-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ShowStudent" :depends-on ("_package_ShowStudent"))
    (:file "_package_ShowStudent" :depends-on ("_package"))
  ))