#lang racket/base
(require "./main.rkt")
(require pprint-all)

(define n 5)
(while (> n 0)
  (dump n)
  (set! n (- n 1))
  )
(define m 5)
(until (< m 1)
  (dump m)
  (set! m (- m 1))
  )
