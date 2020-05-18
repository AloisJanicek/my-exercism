;;; crypto-square.el --- Crypto Square (exercism)

;;; Commentary:

;;; Code:

(require 'seq)

(defun encipher (str)
  "Encipher STR."
  (let* ((str (downcase (replace-regexp-in-string "[^a-zA-Z0-9]" "" str)))
         (size (length str))
         (c (ceiling (sqrt size)))
         (r c)
         (space 32)
         (pointer 0)
         (result (make-list r nil)))

    (seq-map (lambda (char)
               (when (> (1+ pointer) r)
                 (setq pointer 0))
               (setf (nth pointer result)
                     (append (nth pointer result) (list char)))
               (setq pointer (1+ pointer)))
             (concat str (make-string (- (* c r) size) space)))

    (replace-regexp-in-string
     "  "
     " "
     (mapconcat
      (lambda (row)
        (mapconcat
         (lambda (char)
           (char-to-string char))
         row
         ""))
      result
      " "))))

(provide 'crypto-square)
;;; crypto-square.el ends here
