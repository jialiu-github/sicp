(define (log-f x)
    (/ (log 1000) (log x)))

(define tolerance 0.000001)
(define (fixed-point f first-guess)
    (define (close-enough? v1 v2)
        (< (abs (- v1 v2))
            tolerance))
    (define (try guess)
        (let ((next (f guess)))
            (newline)
            (display next)
            (if (close-enough? guess next)
                next
                (try next))))
    (try first-guess))

(fixed-point log-f 100)