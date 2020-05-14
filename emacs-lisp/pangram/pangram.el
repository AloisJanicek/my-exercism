;;; pangram.el --- Pangram (exercism)

;;; Commentary:

;;; Code:

(require 'cl-seq)

(defun is-pangram (str)
  "Return non-nil if STR is pangram."
  (string-equal
   ;; alphabet string
   (mapconcat #'char-to-string
              (number-sequence 97 122) "")
   ;;sorted, downcased str without duplicates and non-alphabetical characters
   (cl-remove-duplicates
    (cl-sort
     (replace-regexp-in-string "[^a-z]" "" (downcase str))
     #'string-lessp
     :key 'char-to-string))))



(provide 'pangram)
;;; pangram.el ends here
