(load "2.9.rkt")
(load "2.10.rkt")
(load "2.12.rkt")
(define (par1 r1 r2)
    (div-interval (mul-interval r1 r2)
                  (add-interval r1 r2)))

(define (par2 r1 r2)
    (let ((one (make-interval 1 1)))
        (div-interval one
                      (add-interval (div-interval one r1)
                      (div-interval one r2)))))

(par1 (make-interval 2 1) (make-interval 1 1))
(par2 (make-interval 2 1) (make-interval 1 1))
(par1 (make-center-percent 1 0.01) (make-center-percent 2 0.01))
(par2 (make-center-percent 1 0.01) (make-center-percent 2 0.01))