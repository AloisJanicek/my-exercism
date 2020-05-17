;;; acronym.el --- Acronym (exercism)

;;; Commentary:

;;; Code:

(defun acronym (str)
  "Create acronym of STR."
  (mapconcat
   (lambda (str)
     (upcase (substring str 0 1)))
   (split-string
    (replace-regexp-in-string "[^a-zA-Z]" " " str))
   ""
   ))

(provide 'acronym)
;;; acronym.el ends here
