#lang racket

(provide (struct-out ans) (struct-out halt)
         result? result-value result-state)

; Represents the result of symbolic evaluation,
; which includes an output value and a representation
; of some aspect of the symbolic state.
(struct result (value state) #:transparent)

; Represents the result of a normally terminated evaluation.
(struct ans result () #:transparent)

; Represents the result of an evaluation that resulted in
; an exn:fail? exception being raised. In this case,
; the result-value field stores the exception that was raised.
(struct halt result () #:transparent)