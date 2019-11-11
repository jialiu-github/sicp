(define (make-mobile left right)
    (list left right))
(define (make-branch length structure)
    (list length structure))
;a
(define (left-branch mobile)
    (car mobile))
(define (right-branch mobile)
    (cdr mobile))
(define (branch-length branch)
    (car branch))
(define (branch-structure branch)
    (cdr branch))

;b
(define (total-weight mobile)
    (define (branch-weight branch)
        (if (not (pair? (branch-structure branch)))
            (branch-structure branch)
            (total-weight (branch-structure branch))))
    (+ (branch-weight (left-branch mobile))
       (branch-weight (right-branch mobile))))

;c
(define (leave-branch? branch)
    (not (pair? (branch-structure branch))))

(define (moment branch)
    (if (leave-branch? branch)
        (* (branch-length branch) (branch-structure branch)))
        (* (branch-length branch) (total-weight (branch-structure branch))))

(define (balance-mobile? mobile)
    (if (not (pair? mobile))
        #t
        (let ((left (left-branch mobile))
            (right (right-branch mobile)))
            (and (= (moment left) (moment right))
                (balance-mobile? (branch-structure left))
                (balance-mobile? (branch-structure right))))))
         