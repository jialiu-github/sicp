(load "2.7.rkt")
(define (make-center-percent c p)
    (make-interval (- c (* c p)) (+ c (* c p))))

(define (center i)
    (/ (+ (lower-bound i) (upper-bound i)) 2))

(define (percent i)
    (/ (- (center i) (lower-bound i)) (center i)))


;(define i (make-center-percent 1 0.1))
;(center i)
;(percent i)
