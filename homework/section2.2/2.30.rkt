(define (leave? tree)
    (not (pair? tree)))

(define (square-tree tree)
    (cond ((leave? tree) (* tree tree))
        ((null? (cdr tree)) (list (square-tree (car tree))))
        (else (cons (square-tree (car tree)) (square-tree (cdr tree))))))

(square-tree 
    (list 1
        (list 2 (list 3 4) 5) (list 6 7)))

(define (square x) (* x x))
(define (square-tree-map tree)
    (display tree)
    (map (lambda (sub-tree)
            (if (pair? sub-tree)
                (square-tree-map sub-tree)
                (square sub-tree)))
          tree))

(square-tree-map 
    (list 1
        (list 2 (list 3 4) 5) (list 6 7)))