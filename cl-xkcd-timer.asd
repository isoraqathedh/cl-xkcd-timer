;;;; cl-xkcd-timer.asd

(asdf:defsystem #:cl-xkcd-timer
  :description "Describe cl-xkcd-timer here"
  :author "Isoraķatheð Zorethan <isoraqathedh.zorethan@gmail.com>"
  :license "MIT"
  :depends-on (#:qtools
               #:qtcore
               #:qtgui)
  :serial t
  :components ((:file "package")
               (:file "cl-xkcd-timer")))

