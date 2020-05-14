;;; word-count.el --- word-count Exercise (exercism)

;;; Commentary:

;;; Code:

(defun word-count (str)
  "Count words in STR."
  (unless (string-equal str "")
    (let (results)
      (mapcar (lambda (word)
                (if (assoc word results)
                    (setcdr (assoc word results) (+ (cdr (assoc word results)) 1))
                  (add-to-list 'results (cons word 1))))
              (split-string
               (replace-regexp-in-string "\s+" " "
                                         (replace-regexp-in-string "[[:punct:]]" "" (downcase str)))
               "[[:space:]]"))
      results)))

(provide 'word-count)
;;; word-count.el ends here
