(define (cont-frac n d k)
    (define (iter result i)
        (if (< i 1)
            result
            (iter (/ (n i) (+ (d i) result)) 
                  (- i 1))))
    (iter 0 k))

(define (cont-frac-recursive n d k)
    (define (iter i)
        (if (> i k)
            0
            (/ (n i)
               (+ (d i) 
                  (iter (+ i 1))))))
    (iter 1))

(define (n x) 1.0)
(define (d x) 1.0)
(cont-frac n d 1000)
(cont-frac-recursive n d 1000)