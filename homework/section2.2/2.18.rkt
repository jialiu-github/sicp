(define (append l1 l2)
    (if (null? l1)
        l2
        (cons (car l1) (append (cdr l1) l2))))

(define (reverse l)
    (if (null? (cdr l))
        l
        (append (reverse (cdr l)) (list (car l)))))

(list 1 2 3 4 5)
(reverse (list 1 2 3 4 5))