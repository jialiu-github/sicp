;(1 3 (5 7) 9)
(define first (list 1 3 (cons 5 7) 9))
(cdr (car (cdr (cdr first))))

;((7))
(define second (list (list 7)))
(car (car second))

;(1 (2 (3 (4 (5 (6 (7))))))
(define third (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 (list 7))))))))
(car (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr third)))))))))))))