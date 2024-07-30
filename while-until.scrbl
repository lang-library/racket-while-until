#lang scribble/manual

@title{while/until loops for Racket}

@author[(author+email "JavaCommons Technologies" "javacommons@gmail.com")]

@defmodule[while-until]

This basically provides @racket[while], @racket[until], @racket[break] and
@racket[continue].

@table-of-contents[]

@section{Example and usage}

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
#lang racket/base
(require while-until)
(require output)

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

@section{Reference}

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
