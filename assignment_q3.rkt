#lang racket

; a)
(define tree1 '(((() 3 ()) 9 (() 15 ())) 18 ((() 29 ()) 40 (() 49 (() 78())))))
(define example_to_sort '(2 12 93 5 4 98 76 1))

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
