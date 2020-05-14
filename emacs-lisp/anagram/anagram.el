;;; anagram.el --- Anagram (exercism)

;;; Commentary:

;;; Code:

(require 'cl-lib)

(defun anagrams-for (word list)
  "Return list of words from LIST if they are anagram of WORD."
  (seq-filter (lambda (item)
                (when (and
                       (not (string-equal item word))
                       (string-equal
                        ;; `cl-sort' is destructive
                        (cl-sort (downcase (copy-sequence item)) #'<)
                        (cl-sort (downcase (copy-sequence word)) #'<)))
                  item))
              list))

(provide 'anagram)
;;; anagram.el ends here
