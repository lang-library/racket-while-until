#lang info
(define collection "while-until")
(define name "while-until: While/Until loops for Racket")
(define categories '(devtools))
(define can-be-loaded-with 'all)
(define required-core-version "5.1.1")
(define version "1.0")
(define repositories '("4.x"))
(define scribblings '(("while-until.scrbl")))
(define primary-file "main.rkt")
(define blurb
  '("While/Until loops for Racket."))
(define deps '("base"
               "compatibility-lib"
               "pprint-all"
               "while-loop"
               ))
(define build-deps '("racket-doc"
                     "scribble-lib"))
(define release-notes
  '((p "First release")))
