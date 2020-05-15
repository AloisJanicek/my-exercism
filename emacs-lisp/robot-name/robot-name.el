;;; robot-name.el --- Robot Name (exercism)

;;; Commentary:
;;
;; Build a robot with a name like AA000, that can be reset
;; to a new name. Instructions are in README.md
;;

;;; Code:
(require 'seq)

(defvar robot-register '()
  "Where the information about robots is stored.")

(defun build-robot ()
  "Return robot named in two capital chars and 3 digits format."
  (let ((robot (concat
                (char-to-string (+ 65 (random 23)))
                (char-to-string (+ 65 (random 23)))
                (number-to-string (+ 111 (random 888))))))
    (add-to-list 'robot-register robot)
    robot))

(defun robot-name (robot)
  "Return ROBOT if it is in `robot-register'."
  (car
   (seq-filter
    (lambda (register-item)
      (string-equal register-item robot))
    robot-register)))

(defun reset-robot (robot)
  "Delete ROBOT from `robot-register'."
  (setq robot-register
        (seq-remove
         (lambda (register-item)
           (string-equal register-item robot))
         robot-register)))

(provide 'robot-name)
;;; robot-name.el ends here
