;;; trinary.el --- Trinary (exercism)

;;; Commentary:

;;; Code:

(require 'seq)

(defun trinary-to-decimal (num-str)
  "Convert trinary number NUM-STR into its decimal representation."
  (let* ((trinary (mapcar #'string-to-number
                          (split-string num-str "" t)))
         decimal)
    (if (string-match "[^[:digit:]]" num-str)
        0
      (progn
        (while (> (length trinary) 0)
          (let ((exponent ))
            (setq decimal
                  (append decimal
                          (list (* (car trinary)
                                   (expt 3 (1- (length trinary)))))))
            (pop trinary)))
        (seq-reduce #'+ decimal 0)))))

(provide 'trinary)
;;; trinary.el ends here
