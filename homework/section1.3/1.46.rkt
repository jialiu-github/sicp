(define (iterative-improve good-enough? next-guess)
    (lambda (guess)
        (if (good-enough? guess)
            guess
            (iterative-improve good-enough? (next-guess guess)))))

(define (square x)
    (* x x))
(define (average x y)
    (/ (+ x y) 2))

(define (sqrt guess x)
    (define (good-enough guess)
        (< (abs (- (square guess) x)) 0.001))
    (define (next-guess guess)
        (average guess (/ x guess)))
    ((iterative-improve good-enough next-guess) guess))

(sqrt 1 4)

(define tolerance 0.000001)
(define (fixed-point f first-guess)
    (define (next guess)
        (f guess))
    (define (good-enough guess)
        (< (abs (- guess (next guess)))
            tolerance))
    ((iterative-improve good-enough next) first-guess))

(define (sqrt-by-fixed-point x)
    (fixed-point (lambda (y) (average y (/ x y))) 1.0))

(sqrt-by-fixed-point 9)