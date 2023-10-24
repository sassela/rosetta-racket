#lang racket
(require "reverse-number.rkt")

(= 0 (reverse-number 0))
(= 123 (reverse-number 321))
(= 8397439847204 (reverse-number 4027489347938))