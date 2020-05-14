;;; difference-of-squares.el --- Difference of Squares (exercism)

;;; Commentary:

;;; Code:

(defun square-of-sum (n)
  "Calculate square of of the sum of the first N natural numbers."
  (let* ((sum-numbers (lambda (n from)
                        "Return sum of the first N natural numbers."
                        (if (< n from)
                            0
                          (+ from (funcall sum-numbers n (+ from 1)))))))
    (expt (funcall sum-numbers n 1) 2)))

(defun sum-of-squares (n &optional from)
  "Calculate sum of of the squares of the first N natural numbers.
Optional argumenta FROM marks beginning of the sequence."
  (if (< n (or from 1))
      0
    (+ (expt (or from 1) 2) (sum-of-squares n (+ (or from 1) 1)))))

(defun difference (n)
  "Return difference between `square-of-sum' and `sum-of-squares' of the first N natural numbers."
  (- (square-of-sum n) (sum-of-squares n)))

(provide 'difference-of-squares)
;;; difference-of-squares.el ends here
