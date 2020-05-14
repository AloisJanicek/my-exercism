;;; roman-numerals.el --- roman-numerals Exercise (exercism)

;;; Commentary:

;;; Code:

(defun to-roman (number)
  "Return roman numeral representing NUMBER.

Works up to NUMBER equal 3999."
  (let* ((roman-numerals-alist '(("I" . "V")
                                 ("X" . "L")
                                 ("C" . "D")
                                 ("M")))
         (digit-list (mapcar #'string-to-number
                             (split-string (number-to-string number) "" t)))
         (number-size (length digit-list))
         (digit-place 1) i roman current-digit)

    (when (zerop number)
      (error ">>%d<< doesn't look like anythig to me" number))

    (when (> number 3999)
      (error "Numbers bigger then 3999 like %d are illegal in Roman Empire" number))

    (while (<= digit-place number-size)
      (let ((current-digit (nth (1- digit-place) digit-list))
            (next-digit (nth digit-place digit-list))
            (current-place (nth (- number-size digit-place) roman-numerals-alist))
            (next-place (nth (+ (- number-size digit-place) 1) roman-numerals-alist)))
        (setq i 1)
        (cond ((= current-digit 0) t)
              ((<= current-digit 3)
               (while (<= i current-digit)
                 (setq roman (concat roman (car current-place)))
                 (setq i (1+ i))))
              ((= current-digit 4)
               (setq roman (concat roman (concat
                                          (car current-place)
                                          (cdr current-place)))))
              ((= current-digit 5)
               (setq roman (concat roman (cdr current-place))))
              ((<= current-digit 8)
               (setq roman (concat roman (cdr current-place)))
               (setq i 6)
               (while (<= i current-digit)
                 (setq roman (concat roman (car current-place)))
                 (setq i (1+ i))))
              ((= current-digit 9)
               (setq roman (concat roman (concat
                                          (car current-place)
                                          (car next-place))))))
        (setq digit-place (1+ digit-place))))
    roman
    ))

(provide 'roman-numerals)
;;; roman-numerals.el ends here
