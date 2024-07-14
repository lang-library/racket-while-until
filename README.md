# while/until loops for Racket

JavaCommons Technologies
<[javacommons@gmail.com](mailto:javacommons@gmail.com)>

 (require while-until) package:                                                      
                      [while-until](https://pkgs.racket-lang.org/package/while-until)

This basically provides `while`, `until`, `break` and `continue`.

    1 Example and usage
                       
    2 Reference        

## 1. Example and usage

```racket
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
```

```racket
#lang racket/base    
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
```

## 2. Reference

```racket
(while test body ...)
```

Repeat the evaluation of the `body` so long as `test` is true.

```racket
(until test body ...)
```

Repeat the evaluation of the `body` so long as `test` is false.

```racket
(break)
```

Break out of the innermost loop.

```racket
(continue)
```

Restart the innermost loop.
