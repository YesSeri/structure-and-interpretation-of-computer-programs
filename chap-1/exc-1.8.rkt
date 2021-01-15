#lang racket
(define (cube-iter guess oldguess x)
  (if (good-enough? guess x)
      guess
      (cube-iter (improve guess x)
                 guess
                 x)))

(define (good-enough? guess oldguess) 
   (< (abs (- guess oldguess))
      (* guess 0.001)))

(define (improve guess x)
  (= (improve guess x) guess)) 

(define (square x)(* x x))

(define (cbrt x )(cube-iter 1.0 2.0 x))