#lang racket

(provide ins_beg)

(define (ins_beg el lst)
  (display "Hello, I'm ins_beg!\n"))

(provide ins_beg)
(provide ins_end)
(provide count_top_level)
(provide count_instances)

;a)
(define (ins_beg el lst)
(cons el lst))

;b)
(define (ins_end el lst)
  (append lst (list el)))

;c)
(define (count_top_level myList)
  (cond ((null? myList) 0)
      ((not (pair? myList)) 1)
      (else (+ (count_top_level (car myList))
                 (count_top_level (cdr myList))))
      )
)

;d)
(define (count_instances item myList) 
  (cond [(null? myList) 0]
        [(equal? item (car myList)) (+ 1 (count_instances item (cdr myList)))] 
        [(count_instances item (cdr myList))]
        ) 
)

;e)
(define (count_instances_tr el lst)
  (tinst el 0 lst)
 )

(define (tinst el total lst)
  (cond ((null? lst)0)
        ((equal? el (car lst))(+ 1 total(tinst el total (cdr lst))))
        ((tinst el total (cdr lst)))
    )
)

;f)
(define (count_instances_deep el lst)
  (cond [(empty? lst) 0]
        [(list? (car lst)) (+ (count_instances_deep el (car lst)) (count_instances_deep el (cdr lst)))]
        [(equal? el (car lst)) (+ 1 (count_instances_deep el (cdr lst)))]
[else (count_instances_deep el (cdr lst))]))
