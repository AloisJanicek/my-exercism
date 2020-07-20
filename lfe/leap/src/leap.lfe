(defmodule leap
  (export all))

(defun leap-year (year)
  (and (== 0 (rem year 4))
       (or (not (== 0 (rem year 100)))
           (== 0 (rem year 400)))))
