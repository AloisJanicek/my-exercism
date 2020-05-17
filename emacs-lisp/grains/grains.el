;;; grains.el --- Grains exercise (exercism)

;;; Commentary:

;;; Code:

(defun square (n)
  "Calculate amount of grain on square N."
  (expt 2 (1- n)))

(defun total ()
  "Sum of 64 grains fields."
  (seq-reduce (lambda (a b)
                (+ a (square b)))
              (number-sequence 1 64)
              0))

(provide 'grains)
;;; grains.el ends here
