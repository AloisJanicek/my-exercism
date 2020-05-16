;;; perfect-numbers.el --- perfect-numbers Exercise (exercism)

;;; Commentary:

;;; Code:


(defun factors (n)
  "Return list of factors for the number N."
  (remove nil
          (mapcar (lambda (x)
                    (when (zerop (% n x)) x))
                  (number-sequence 1 n))))

(defun classify (number)
  "Do something with NUMBER here."

  (when (< number 0)
    (error "Classification is only possible for natural numbers"))

  (let ((sum (seq-reduce
              (lambda (a b)
                (+ a b))
              (butlast (factors number))
              0)))
    (cond ((< sum number)
           'deficient)
          ((= sum number)
           'perfect)
          ((> sum number)
           'abundant))))

(provide 'perfect-numbers)
;;; perfect-numbers.el ends here
