;;; etl.el --- etl Exercise (exercism)

;;; Commentary:

;;; Code:

(defun etl (hash)
  "Convert HASH to new format."
  (let ((newhash (make-hash-table)))
    (maphash (lambda (key value)
               (mapcar (lambda (elm)
                         (when (or (< key 0)
                                   (not (stringp elm)))
                           (error "Make sure you provide correct data"))
                         (puthash (downcase elm) key newhash))
                       value))
             hash)
    newhash))

(provide 'etl)
;;; etl.el ends here
