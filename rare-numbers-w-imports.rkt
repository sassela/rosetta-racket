#lang racket
(require control)
(require text-block/text)
(require "palindrome.rkt")
(require "perfect-square.rkt")
(require "reverse-number.rkt")

(define (find-rare-numbers count)
  (define rare-numbers '())
  (define i 1)
  
  (define (is-rare? n)
    (and (not (is-palindrome n))
         (let* ((r (reverse-number n))
                (sum (+ n r))
                (diff (- n r)))
           (and (perfect-square? sum)
                (perfect-square? diff)))))
  
  (while (< (length rare-numbers) count)
    (cond [(is-rare? i)
        (set! rare-numbers (cons i rare-numbers))])
    (set! i (+ i 1)))
  
  (reverse rare-numbers))

(displayln "The first 5 rare numbers are:")
(for-each (λ (x) (display x) (display " ")) (find-rare-numbers 5))
