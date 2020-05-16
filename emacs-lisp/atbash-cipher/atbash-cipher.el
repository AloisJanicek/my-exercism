;;; atbash-cipher.el --- Atbash-Cipher (exercism)

;;; Commentary:




;;; Code:

(require 'seq)

(defun encode (plaintext)
  "Encode PLAINTEXT to atbash-cipher encoding."
  (let* ((alphabet (number-sequence 97 122))
         (reversed (reverse alphabet))
         (plaintext (string-to-list (downcase
                                     (replace-regexp-in-string
                                      "[[:blank:][:punct:]]" "" plaintext)))))
    (string-trim
     (mapconcat
      #'identity
      (seq-map-indexed (lambda (char index)
                         (concat
                          (char-to-string
                           (if (< char (car alphabet))
                               char
                             (elt reversed (seq-position alphabet char))))
                          (when (and (zerop (mod (+ index 1) 5))
                                     (not (eq index 0)))
                            " ")))
                       plaintext)
      ""))))

(provide 'atbash-cipher)
;;; atbash-cipher.el ends here
