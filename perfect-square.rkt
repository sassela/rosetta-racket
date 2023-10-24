#lang racket
(define (perfect-square? n)
  (if (rational? (sqrt n))
      (= n (expt (floor (sqrt n)) 2))
      false))

(provide perfect-square?)