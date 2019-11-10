(load "2.18.rkt")
(define (deep-reverse t) 
    (cond 
          ((not (pair? t)) t)
          ((null? (cdr t)) (deep-reverse (car t)))
          (else (list (deep-reverse (cdr t)) (deep-reverse (car t))))))

(define x (list (list 1 2) (list 3 4)))
(reverse x)
(deep-reverse x)