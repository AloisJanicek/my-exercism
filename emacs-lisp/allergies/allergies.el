;;; allergies.el --- Allergies Exercise (exercism)

;;; Commentary:

;;; Code:

(require 'seq)

(defvar allergens-alist '(
                          (cats . 128)
                          (pollen . 64)
                          (chocolate . 32)
                          (tomatoes . 16)
                          (strawberries . 8)
                          (shellfish . 4)
                          (peanuts . 2)
                          (eggs . 1)
                          )
  "Alist of (allergen . score) pairs.")

(defun allergic-to-p (number allergen)
  "Check if NUMBER and ALLERGEN are valid according to `allergens-alist'."
  (unless (zerop number)
    (member allergen (allergen-list number))))

(defun allergen-list (num)
  "For NUM return list of all allergens, if any."
  (let (result)
    (while (not (zerop num))
      (let* ((pair (catch 'pair
                     (seq-filter
                      (lambda (x)
                        (when (>= num (cdr x))
                          (throw 'pair x)))
                      allergens-alist)))
             (allergen (car pair))
             (score (cdr pair)))
        (setq result (append result (list (symbol-name allergen))))
        (setq num (- num score))))
    (reverse (delete-dups result))))

(provide 'allergies)
;;; allergies.el ends here
