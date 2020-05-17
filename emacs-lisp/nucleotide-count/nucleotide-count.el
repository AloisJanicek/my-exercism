;;; nucleotide-count.el --- -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defun nucleotide-count (str)
  "Count nucleotide in STR."
  (let ((result '((?A . 0)
                  (?C . 0)
                  (?G . 0)
                  (?T . 0)))
        helper)
    (setq helper (copy-alist result))
    (mapcar
     (lambda (char)
       (let ((char-cons (assoc char helper)))
         (if char-cons
             (setcdr char-cons (1+ (cdr char-cons)))
           (error "Prohibited manipulation of human DNA with: %s" (char-to-string char)))))
     (string-to-list str))
    (setq result (copy-alist helper))
    result))

(provide 'nucleotide-count)
;;; nucleotide-count.el ends here
