;;; armstrong-numbers.el --- armstrong-numbers Exercise (exercism)

;;; Commentary:

;;; Code:

(defun armstrong-p (num)
  "Return non-nil if NUM is \"narcissistic number\"."
  (cond ((and (> num 0)
              (< num 10))
         t)
        ((and (> num 10)
              (< num 100))
         nil)
        ((let* ((num-list
                 (mapcar
                  (lambda (x) (string-to-number (char-to-string x)))
                  (string-to-list (number-to-string num))))
                (size (length num-list))
                (computed (seq-reduce (lambda (a b)
                                        (+ a (expt b size)))
                                      num-list
                                      0
                                      )))

           (when (eq computed num) t))
         num)))

(provide 'armstrong-numbers)
;;; armstrong-numbers.el ends here
