;;; luhn.el --- Luhn exercise (exercism)

;;; Commentary:

;;; Code:

(require 'seq)

(defun luhn-p (num-str)
  "Return non-nil if NUM-STR is valid Luhn number."
  (let ((regexp (rx (or "^\s" "\s$" "\s\s" )))
        (regexp-error (rx (or alpha punct))))

    (when (string-match regexp-error num-str)
      (error "Invalid character: %s" (match-string 0 num-str)))

    (if (or (string-match regexp num-str)
            (<= (length num-str) 1))
        nil
      (progn
        (if (zerop (% (seq-reduce
                       #'+
                       (seq-map-indexed
                        (lambda (char index)
                          (let ((char-num (string-to-number (char-to-string char))))
                            (if (zerop (% (1+ index) 2))
                                (if (>= char-num 5)
                                    (- (* char-num 2) 9)
                                  (* char-num 2))
                              char-num)))
                        (reverse (string-to-list
                                  (replace-regexp-in-string (rx (+? space)) "" num-str))))
                       0) 10))
            t
          nil)))))

(provide 'luhn)
;;; luhn.el ends here
