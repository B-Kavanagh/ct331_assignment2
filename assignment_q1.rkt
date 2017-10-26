#lang racket

; A cons pair of two numbers
(cons 4 5)

; A list of 3 numbers, using only the cons function
(cons 9(cons 6(cons 5'())))

; A list containing string, with a number and nested list of 3 numbers
; Using cons
(cons '(7 8 9 )(cons "Test-String"(cons 3'())))

; A list containing string, with a number and nested list of 3 numbers
; Using lists
(list (list 9 6 5) 3 (list "Test-String-2"))

; A list containing string, with a number and nested list of 3 numbers
; Using append
(append '(1 2) '("Test-String-3") '(5))
