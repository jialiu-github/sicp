(define (e-n i) 1.0)
(define (e-d i)
    (if (= (remainder (+ i 1) 3) 0)
        (* 2 (quotient (+ i 1) 3))
        1))

(define (cont-frac n d k)
    (define (iter result i)
        (if (< i 1)
            result
            (iter (/ (n i) (+ (d i) result)) (- i 1))))
    (iter 0 k))

(cont-frac e-n e-d 100)