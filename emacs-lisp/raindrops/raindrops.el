;;; raindrops.el --- Raindrops (exercism)

;;; Commentary:

;;; Code:

(defun raindrops--factors (n)
  "Return list of factors for the number N."
  (remove nil
          (mapcar (lambda (x)
                    (when (zerop (% n x)) x))
                  (number-sequence 1 n))))

(defun convert (n)
  "Convert integer N to its raindrops string."
  (let ((factors (raindrops--factors n))
        result)
    (when (member 3 factors)
      (setq result "Pling"))
    (when (member 5 factors)
      (setq result (concat result "Plang")))
    (when (member 7 factors)
      (setq result (concat result "Plong")))
    (when (not result)
      (setq result (number-to-string n)))
    result))

(provide 'raindrops)
;;; raindrops.el ends here
