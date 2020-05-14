;;; leap.el --- Leap exercise (exercism)

;;; Commentary:

;;; Code:

(defun leap-year-p (year)
  "Return non-nil if YEAR is a leap year."
  (let ((divisible-by (lambda (num)
                        (zerop (% year num)))))
    (and (funcall divisible-by 4)
         (or (not (funcall divisible-by 100))
             (funcall divisible-by 400)))))

(provide 'leap-year-p)
;;; leap.el ends here
