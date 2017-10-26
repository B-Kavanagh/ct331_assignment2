#lang racket

; a)
(define tree1 '(((() 6 ()) 4 (() 67 ())) 12 ((() 32 ()) 43 (() 56 (() 38())))))
(define example_to_sort '(4 14 56 3 17 97 42 2))

(define (dispSorted tree)
  (begin (cond [(not (empty?( car tree))) (dispSorted (car tree))])
         (printf "~a~n" (cadr tree))
         (cond [(not (empty? (caddr tree))) (dispSorted (caddr tree))])))

(dispSorted tree1)


;b)

(define (inTree item tree)
  (cond [(empty? tree) #f];present
        [(equal? item (cadr tree)) #t];not present 
        [(< item (cadr tree)) (inTree item (car tree))]
        [else (inTree item (caddr tree))]))
(display "Is Number Present??:\n")
(inTree 50 tree1)
(inTree 500 tree1)

;c)
(define (insert item tree)
  (cond [(empty? tree)(list'() item'())];null
        [(equal? item (cadr tree)) tree];has a 
        [(< item (cadr tree)) (insert item (car tree))]
        [else (insert item (caddr tree))]))
(display "Insert Function:\n")
(insert 69 '())

;d)
(define (insert_list lst tree)
  (if (empty? lst) tree
(insert_list (cdr lst) (insert (car lst) tree))))
