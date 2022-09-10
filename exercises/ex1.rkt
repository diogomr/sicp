#lang racket

;; ex1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

;; ex1.3
(define (square x)
  (* x x))

(define (sumOfSquare a b)
  (+ (square a) (square b)))

(define (sumOfSquareOfTwoLargest a b c)
  (if (> a b)
      (if (> b c)
          (sumOfSquare a b)
          (sumOfSquare a c)
          )
      (if (> a c)
          (sumOfSquare a b)
          (sumOfSquare c b)
          )))

(sumOfSquareOfTwoLargest 1 3 3)
(sumOfSquareOfTwoLargest -1 3 3)
(sumOfSquareOfTwoLargest -1 10 10)