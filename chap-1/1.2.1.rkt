#lang racket
(define (factorial n)
  (f-iter 1 1 n))

(define (f-iter result counter max-count)
  (if (> counter max-count)
      result
      (f-iter (* result counter) (+ 1 counter) max-count)))