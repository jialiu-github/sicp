(define (accumulate op initial sequence)
    (if (null? sequence)
        initial
        (op (car sequence) (accumulate op initial (cdr sequence)))))

(define (map p sequence)
    (accumulate (lambda (current acc) (cons (p current) acc)) '() sequence))

(map (lambda (x) (* x 2)) (list 1 2 3 4))

(define (append seq1 seq2)
    (accumulate cons seq2 seq1))
(append (list 1 2) (list 3 4))

(define (length sequence)
    (accumulate (lambda (current acc) (+ acc 1)) 0 sequence))
(length (list 1 2 3 4 5))