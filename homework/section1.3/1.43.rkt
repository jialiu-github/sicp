
(load "1.42.rkt")
(define (repeated f n)
    (if (= n 1)
        f 
        (compose (repeated f (- n 1)) f)))
        
; (define (repeated f n result)
;     (if (= n 1)
;         result 
;         (compose (repeated f (- n 1)) f))
;     (repeated f n f)
        
(load "inc.rkt")
((repeated inc 3) 1)
