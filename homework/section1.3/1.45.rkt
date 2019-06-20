(define tolerance 0.000001)
(define (fixed-point f first-guess)
    (define (close-enough? v1 v2)
        (< (abs (- v1 v2))
            tolerance))
    (define (try guess)
        (newline)
        (display guess)
        (inc counter)
        (let ((next (f guess)))
            (if (close-enough? guess next)
                next
                (try next))))
    (try first-guess))

(define (average-damping f) 
    (lambda (x)
        (/ (+ x (f x))
        2.0)))

(define (f x)
    (lambda (y)
        (/ x (* y y y))))
(load "1.43.rkt")
(fixed-point 
    (repeated 
        (average-damping (f 10000))
        6)
    1)