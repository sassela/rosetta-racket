#lang racket
(require text-block/text)

(define (is-palindrome n)
  (define s (number->string n))
  (string=? s (string-reverse s)))

(provide is-palindrome)