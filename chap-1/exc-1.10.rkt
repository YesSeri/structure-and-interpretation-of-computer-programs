#lang sicp
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(define (f n) (A 0 n))
(define (g n) (A 1 n))
(define (h n) (A 2 n))
(define (k n) (* 5 n n))

(define (sum FN FN2 a b)
    (if (> a b)
        0
        (+ (FN a)(sum FN FN2 (FN2 a) b))))
(define (square x)(* x x))
(define (odd-numbers x)
  (+ x 2))

