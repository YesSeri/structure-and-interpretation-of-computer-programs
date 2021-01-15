#lang racket
(define (square x)(* x x))
(define (sum-of-squares x y)(+ (square x) (square y)))
(define (sum-of-largest-squares x y z)
  (cond ((and (< x y)(< x z)(sum-of-squares y z)))
        ((< y z)(sum-of-squares z x))
        (else (sum-of-squares y x))))
