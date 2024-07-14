#lang scribble/manual
@(require (for-label "main.rkt"
                     racket/base))

@title{while/until loops for Racket}

This basically provides @racket[while], @racket[until], @racket[break] and
@racket[continue].

@section{Example and usage}
@defmodule[while-until]

@codeblock|{
#lang racket/base
(require while-until)

(while (not (string=? (read-line)
                      "quit"))
  (printf "quit?  "))

(while #t
  (define input (read-line))
  (unless (regexp-match #px"please" input)
    (printf "You didn't say please\n")
    (continue))
  (when (regexp-match #px"quit" input)
    (break)))
}|

@codeblock|{
#lang racket
(require while-until)
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
}|

@defform[(while test body ...)]{
Repeat the evaluation of the @racket[body] so long as @racket[test]
is true.
}

@defform[(until test body ...)]{
Repeat the evaluation of the @racket[body] so long as @racket[test]
is false.
}

@defform[(break)]{Break out of the innermost loop.}

@defform[(continue)]{Restart the innermost loop.}
