(define (D x) (- (* 2.0 x) 1))

(define (cont-frac n d k)
    (define (iter result i)
        (if (< i 1)
            result
            (iter (/ (n i) (+ (d i) result)) 
                  (- i 1))))
    (iter 0 k))

(define (tan-cf x k)
    (define (N i) 
        (if (= 1 i)
            x
            (* x x)))
    (cont-frac N D k))

(tan-cf 45 100)