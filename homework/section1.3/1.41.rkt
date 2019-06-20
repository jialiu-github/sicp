(define (double f)
    (lambda (x)
        (f (f x))))
(load "inc.rkt")
((double inc) 2)
#|
总共执行inc16次
(double double) -> d(d(f)) = h(f)
(double (double double))
= (double h) -> h(h(x)) = d(d(h(f))) = d(d(d(d(f))))
|#
(((double (double double)) inc) 5)