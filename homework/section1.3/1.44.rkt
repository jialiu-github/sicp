(define dx 0.00001)
(define (smooth f)
    (lambda (x)
        (/ (+ (f x)
              (f (- x dx)
              (f (+ x dx))))
              3)))

(load "1.43.rkt")
(define (smooth-n f n)
    ((repeated smooth n) f)