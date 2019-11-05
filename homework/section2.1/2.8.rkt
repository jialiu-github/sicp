(load "2.7.rkt")

(define (maxs a b c d)
    (max (max a b) (max c d))
)
(define (mins a b c d)
    (min (min a b) (min c d))
)

(define (sub-interval x y)
    (let
        ((a (- (lower-bound x) (lower-bound y)))
         (b (- (lower-bound x) (upper-bound y)))
         (c (- (upper-bound x) (lower-bound y)))
         (d (- (upper-bound x) (upper-bound y))))
        (make-interval (mins a b c d) (maxs a b c d)))
)

; (define e (make-interval 2 4))
; (define f (make-interval 1 3))
; (sub-interval e f)