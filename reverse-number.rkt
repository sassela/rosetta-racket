#lang racket

(define (reverse-number n)
    (string->number (list->string (reverse (string->list (number->string n))))))

(provide reverse-number)