;;; hamming.el --- Hamming (exercism)

;;; Commentary:

;;; Code:

(require 'seq)

(defun hamming-distance (string1 string2)
  "Return number representing hamming distance between STRING1 and STRING2."
  (let ((length1 (length string1))
        (length2 (length string2)))
    (if (equal length1 length2)
        (length
         (remove nil (seq-mapn
                      (lambda (elm1 elm2)
                        (not (eq elm1 elm2)))
                      (string-to-list string1) (string-to-list string2))))
      (error "Parameters must have same length: %d %d" length1 length2))))

(provide 'hamming)

;;; hamming.el ends here
