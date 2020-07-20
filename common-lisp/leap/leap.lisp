(defpackage #:leap
  (:use #:common-lisp)
  (:export #:leap-year-p))
(in-package #:leap)

(defun leap-year-p (year)
  (let ((divisible-by (lambda (num)
                        (zerop (mod year num)))))
    (and (funcall divisible-by 4)
         (or (not (funcall divisible-by 100))
             (funcall divisible-by 400)))))
