(load "2.7.rkt")
(define (width interval) 
    (/ (- (upper-bound interval) (lower-bound interval))
       2)
)
(define (add-interval x y) 
    (make-interval (+ (lower-bound x) (lower-bound y))
                   (+ (upper-bound x) (upper-bound y)))
)

;width(i) = (i-upper - i-lower) / 2
;interval = add-interval(x, y)
;interval-lower = x-lower + y-lower
;interval-upper = x-upper + y-upper
;width(interval) = ((x-upper + y-upper) - (x-lower + y-lower)) / 2
;                = ((x-upper - x-lower) + (y-upper - y-lower)) / 2
;                = width(x) + width(y)