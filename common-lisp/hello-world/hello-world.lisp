(in-package #:cl-user)
(defpackage #:hello-world
  (:use #:cl)
  (:export #:hello))
(in-package #:hello-world)

(defun hello ()
  "Return \"Hello, World!\"."
  "Hello, World!")