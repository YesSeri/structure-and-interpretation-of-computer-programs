#lang racket

(define (sqrt-iter guess oldguess x)
  (if (good-enough? guess oldguess)
      guess
      (sqrt-iter (improve guess x)
                 guess
                  x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y )
  (/ (+ x y) 2))


(define (good-enough? guess oldguess) 
   (< (abs (- guess oldguess))
      (* guess 0.001))) 

(define (square x)(* x x))

(define (sqrt x)
    (sqrt-iter 1.0 2.0 x))

; For a very big number it will take an very long time to reach a good-enough vlaue of 0.001, and inversely for a small number it might be reached on the first instance.
; A different solution is to calculate the difference, and if it is less than 0.1 percent it is good enough.