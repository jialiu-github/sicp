(define (product-recursive term a next b)
    (if (> a b)
        1
        (* (term a)
            (product-recursive term (next a) next b)))
)

(define (product-iterative term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (* result (term a)))))
    (iter a 1))
(load "inc.rkt")
(load "identity.rkt")
(product-recursive identity 1 inc 4)
(product-iterative identity 1 inc 4)

(define (pi n)
    (define (pi-term i)
        (* (/ (* 2.0 i) (- (* 2.0 i) 1))
           (/ (* 2.0 i) (+ (* 2.0 i) 1))))
    (*  2 
        (product-iterative pi-term 1 inc n)))

(pi 100000)