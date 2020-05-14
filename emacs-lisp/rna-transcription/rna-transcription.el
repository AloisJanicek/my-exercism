;;; rna-transcription.el -- RNA Transcription (exercism)

;;; Commentary:

;;; Code:

(defun to-rna (strand)
  "Transcribe STRAND from \"DNA\" to \"RNA\"."
  (let ((trans-key-alist '(("G" . "C")
                           ("C" . "G")
                           ("T" . "A")
                           ("A" . "U")))
        (i 0)
        unmerged merged)

    ;; create separate copies of `strand' from each replace pass
    ;; and save them in one `unmerged' list
    (dolist (key trans-key-alist)
      (setq unmerged
            (append unmerged
                    (list (replace-regexp-in-string
                           (car key) (cdr key) strand)))))

    ;; compare all strings in `unmerged' with `strand'
    ;; and construct new string in `merged' from
    ;; changed characters
    (while (< i (length strand))
      (setq merged
            (concat
             merged
             (mapconcat
              #'identity
              (mapcar (lambda (str)
                        (unless (string-equal
                                 (substring strand i (1+ i))
                                 (substring str i (1+ i)))
                          (substring str i (1+ i))))
                      unmerged) "")))
      (setq i (1+ i)))

    ;; `merged' will be shorter for each character
    ;; not presented in `trans-key-alist'
    (if (eq (length merged)
            (length strand))
        merged
      (error "Strands contains illegal nucleotide"))))

(provide 'rna-transcription)
;;; rna-transcription.el ends here
