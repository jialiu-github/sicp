(load "2.2.rkt")
(define (make-rectangle-by-side l-segment w-segment)
    (cons l-segment w-segment))
(define (l-rectangle rectangle)
    (car rectangle))
(define (w-rectangle rectangle)
    (cdr rectangle))

(load "../section1.3/1.46.rkt")
(define (length-segment segment)
    (let ((start (start-segment segment))
         (end (end-segment segment)))
    (sqrt 1 (+ (square (- (x-point start) (x-point end)))
             (square (- (y-point start) (y-point end)))))))

(define (make-rectangle-by-point a b c)
    (cons (make-segment a b) (make-segment b c)))

(define (s-rectangle rectangle)
    (* (length-segment (l-rectangle rectangle))
       (length-segment (w-rectangle rectangle))))

(define (c-rectangle rectangle)
    (* (+ (length-segment (l-rectangle rectangle))
          (length-segment (w-rectangle rectangle)))
       2))
       
(define (rectangle1)
    (make-rectangle-by-side 
        (make-segment (make-point 1 0) (make-point 1 1))
        (make-segment (make-point 1 0) (make-point 2 0))))
(s-rectangle (rectangle1))
(c-rectangle (rectangle1))

(define (rectangle2)
    (make-rectangle-by-point 
        (make-point 1 1) 
        (make-point 1 0)
        (make-point 2 0)))
(s-rectangle (rectangle2))
(c-rectangle (rectangle2))
