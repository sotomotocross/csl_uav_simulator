
(cl:in-package :asdf)

(defsystem "tryy-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "PREDdata" :depends-on ("_package_PREDdata"))
    (:file "_package_PREDdata" :depends-on ("_package"))
  ))