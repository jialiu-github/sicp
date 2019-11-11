(define (square x) (* x x))
(define (tree-map f tree)
    (cond ((not (pair? tree)) 
                (f tree))
          ((null? (cdr tree)) (list (tree-map f (car tree))))
          (else (cons (tree-map f (car tree)) 
                      (tree-map f (cdr tree))))))

(define (square-tree-map tree)
    (tree-map square tree))

(square-tree-map  (list 1 2 3))
(square-tree-map 
    (list 1
        (list 2 (list 3 4) 5) (list 6 7)))
