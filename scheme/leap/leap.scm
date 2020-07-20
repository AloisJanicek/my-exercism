(import (rnrs))

(define (leap-year? year)
  (let ((divisible-by
         (lambda (num)
           (= 0 (mod year num)))))
    (and (divisible-by 4)
         (or (not (divisible-by 100))
             (divisible-by 400)))))
