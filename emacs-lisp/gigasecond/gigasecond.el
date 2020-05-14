;;; gigasecond.el --- Gigasecond exercise (exercism)

;;; Commentary:
;; Calculate the date one gigasecond (10^9 seconds) from the
;; given date.
;;
;; NB: Pay attention to  Emacs' handling of time zones and dst
;; in the encode-time and decode-time functions.

;;; Code:


(defun from (sec min hour day mon year)
  " Calculate the date one gigasecond (10^9 seconds) from the given date."
  (let ((gigasecond (decode-time
                     (time-add
                      (encode-time sec min hour day mon year nil nil t) 1e9)
                     t)))
    (list
     (decoded-time-second gigasecond)
     (decoded-time-minute gigasecond)
     (decoded-time-hour gigasecond)
     (decoded-time-day gigasecond)
     (decoded-time-month gigasecond)
     (decoded-time-year gigasecond)
     )
    )
  )

(provide 'gigasecond)
;;; gigasecond.el ends here
