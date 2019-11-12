; (define (count-leaves x)
;     (cond ((null? x) 0)
;           ((not (pair? x)) 1)
;           (else (+ (count-leaves (car x))
;                    (count-leaves (cdr x))))))

(define (accumulate op initial sequence)
    (if (null? sequence)
        initial
        (op (car sequence) (accumulate op initial (cdr sequence)))))

(define (fringe x)
    (cond ((not (pair? x)) (list x))
          ((null? (cdr x)) (fringe (car x)))
          (else (append (fringe (car x)) (fringe (cdr x))))))

(define (count-leaves t)
    (accumulate + 
                0 
                (map (lambda (x) 1) (fringe t))))

(count-leaves (list 1 2 (list 1 2 3)))