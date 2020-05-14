;;; bob.el --- Bob exercise (exercism)

;;; Commentary:

;;; Code:

(defun response-for (str)
  "Teenager's response to STR."
  (let ((uppercase (string-equal (upcase str) str))
        (question (string-match "\?$"
                                (replace-regexp-in-string
                                 "[[:blank:]]" "" str)))
        (letters (string-match "[[:alpha:]]" str))
        (only-number (not (string-match "[[:alpha:]]"
                                        (replace-regexp-in-string
                                         "[[:punct:][:blank:]]" "" str))))
        (has-newline (string-match "\n" str))
        (alphanum (string-match "[[:alnum:]]" str)))
    (cond
     ((and uppercase (not question) letters)
      "Whoa, chill out!")
     ((and uppercase question letters)
      "Calm down, I know what I'm doing!")
     ((and question (not has-newline))
      "Sure.")
     ((not alphanum)
      "Fine. Be that way!")
     (t "Whatever."))))

(provide 'bob)
;;; bob.el ends here
