#lang racket

(provide two-fer)

(define two-fer
  (case-lambda
    [() "One for you, one for me."]
    [(name) (format "One for ~a, one for me." name)]))
