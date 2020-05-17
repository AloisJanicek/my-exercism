;;; phone-number.el --- phone-number Exercise (exercism)

;;; Commentary:

;;; Code:

(defun area-code (num-str)
  "Return first 3 characters from NUM-STR representing area code."
  (when (nanp-valid-p num-str)
    (substring num-str 0 3)))

(defun pprint (num-str)
  "Pretty-print NUM-STR."
  (let ((num-str (numbers num-str)))
    (format
     "(%s) %s-%s"
     (substring num-str 0 3)
     (substring num-str 3 6)
     (substring num-str 6 10))))

(defun numbers (num-str)
  "Return NUM-STR without spaces and punctuation if it is a valid \"NANP\" number."
  (or (nanp-valid-p num-str)
      "0000000000"))

(defun nanp-valid-p (num-str)
  "Return non-nil if NUM-STR is a valid \"NANP\" number."
  (let* ((num-str (replace-regexp-in-string "[[:punct:][:blank:]]" "" num-str))
         (size (length num-str))
         (starts-with-1 (eq 1 (string-to-number (substring num-str 0 1)))))
    (if (and starts-with-1 (eq size 11))
        (substring num-str 1 11)
      (when (eq size 10)
        num-str))))

(provide 'phone-number)
;;; phone-number.el ends here
