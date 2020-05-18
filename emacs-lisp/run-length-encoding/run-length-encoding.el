;;; run-length-encoding.el --- run-length-encoding Exercise (exercism)

;;; Commentary:

;;; Code:
(require 'seq)
(require 'subr-x)

(defun run-length-encode (str)
  "Encode STR."
  (let ((dummy "0")
        counter last result)
    (seq-map
     (lambda (char)
       (if (eq last char)
           (setq counter (cons char (1+ (or (ignore-errors (cdr counter)) 1))))
         (if counter
             (and
              (setq result (concat result
                                   (number-to-string (cdr counter))
                                   (char-to-string (car counter))))
              (setq counter nil))
           (setq result (concat result
                                (ignore-errors (char-to-string last))))))
       (setq last char))
     (append (string-to-list str) (list (string-to-char dummy))))
    (string-trim-right result dummy)))

(defun run-length-decode (str)
  "Decode STR."
  (let ((counter 1)
        result last)
    (seq-map (lambda (char)
               (let* ((digits (number-sequence 48 57))
                      (charnum (when (member char digits)
                                 (string-to-number (char-to-string char))))
                      (lastnum (when (member last digits)
                                 (string-to-number (char-to-string last)))))
                 (if (numberp charnum)
                     (if (numberp lastnum)
                         (setq counter (string-to-number (concat
                                                          (char-to-string last)
                                                          (char-to-string char))))
                       (setq counter charnum))
                   (progn
                     (setq result (concat result (make-string counter char)))
                     (setq counter 1))))
               (setq last char))
             str)
    (or result "")))

(provide 'run-length-encoding)
;;; run-length-encoding.el ends here
