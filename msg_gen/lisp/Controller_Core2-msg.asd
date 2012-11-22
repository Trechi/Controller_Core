
(cl:in-package :asdf)

(defsystem "Controller_Core2-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "channel_values" :depends-on ("_package_channel_values"))
    (:file "_package_channel_values" :depends-on ("_package"))
    (:file "waypoint" :depends-on ("_package_waypoint"))
    (:file "_package_waypoint" :depends-on ("_package"))
  ))