(define (leave? tree)
    (not (pair? tree)))

(define (square-tree tree)
    (cond ((leave? tree) (* tree tree))
        ((null? (cdr tree)) (list (square-tree (car tree))))
        (else (cons (square-tree (car tree)) (square-tree (cdr tree))))))

(list 1 (list 2))
(square-tree (list 1 (list 2)))
(square-tree 
    (list 1
        (list 2 (list 3 4) 5) (list 6 7)))