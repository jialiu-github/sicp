(load "2.18.rkt")
(define (same-odevity x y)
    (= (remainder x 2) (remainder y 2)))

(define (filter condition l r)
    (if (null? l)
        r
        (if (condition (car l))
            (filter condition (cdr l) (append r (list (car l))))
            (filter condition (cdr l) r))))

(define (same-parity first . others)
    (filter (lambda (x) (same-odevity first x)) others (list first))
)

(same-parity 1 2 3 4 5)
(same-parity 6 2 3 4 5)
