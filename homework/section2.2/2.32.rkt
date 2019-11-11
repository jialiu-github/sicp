(define (subsets s)
    (if (null? s)
        (list '())
        (let ((rest (subsets (cdr s))))
            (append rest (map (lambda (sub-rest) (cons (car s) sub-rest)) rest)))))

(subsets (list 1 2 3))
