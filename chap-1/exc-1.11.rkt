#lang sicp

(define (rec n)
  (rec-iter n))

(define (rec-iter n)
  (if (< n 3)
      n
      (+ (rec-iter (- n 1))
         (* 2 (rec-iter(- n 2)))
         (* 3 (rec-iter(- n 3))))))

(define (iter n sum count)
  (