#lang racket

;; ex1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

;; ex1.3
(define (square x)
  (* x x))

(define (squares-sum a b)
  (+ (square a) (square b)))

(define (squares-sum-two-largest a b c)
  (if (> a b)
      (if (> b c)
          (squares-sum a b)
          (squares-sum a c)
          )
      (if (> a c)
          (squares-sum a b)
          (squares-sum c b)
          )))

(squares-sum-two-largest 1 3 3)
(squares-sum-two-largest -1 3 3)
(squares-sum-two-largest -1 10 10)