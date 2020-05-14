;;; binary.el --- Binary exercise (exercism)

;;; Commentary:

;;; Code:

(require 'seq)

(defun to-decimal (num-str)
  "Convert binary number NUM-STR into its decimal representation."
  (let* ((binary (mapcar #'string-to-number
                         (split-string num-str "" t)))
         decimal)

    (while (> (length binary) 0)
      (let ((exponent ))
        (setq decimal
              (append decimal
                      (list (* (car binary)
                               (expt 2 (1- (length binary)))))))
        (pop binary)))

    (seq-reduce #'+ decimal 0)))

(provide 'binary)
;;; binary.el ends here
