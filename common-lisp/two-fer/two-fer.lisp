(in-package #:cl-user)
(defpackage #:two-fer
  (:use #:cl)
  (:export #:twofer))
(in-package #:two-fer)

(defun twofer (&optional (name "you"))
  (unless name
    (setq name "you"))
  (concatenate 'string "One for " name ", one for me."))
