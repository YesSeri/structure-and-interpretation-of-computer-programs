#lang racket
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                  x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y )
  (/ (+ x y) 2))

(define  (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x)(* x x))

(define (sqrt x)
    (sqrt-iter 1.0 x))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

; If is a special form. It evaluates the test expression, and if the value if anything other than #f it only invokes the then expression.

; The new-if expression is a normal compound procedure, meaning it evaluates the subexpressions, before applying the functions.
; That means it will get stuck in recursion because of the else expression - (sqrt-iter (improve guess x) x)