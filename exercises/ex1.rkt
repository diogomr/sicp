#lang racket

(define (expect a b)
  (if (not(= a b))
      (raise 'failed 'expectation)
      true))

;; ex1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

;; ex1.3
(define (square x)
  (* x x))

(define (sum_of_square_of_two_largest a b c)
  (if (> a b)
      (if (> b c)
          (+ (square a) (square b))
          (+ (square a) (square c))
          )
      (if (> a c)
          (+ (square a) (square b))
          (+ (square c) (square b))
          )))

(expect (sum_of_square_of_two_largest 1 3 3) 18)
(expect (sum_of_square_of_two_largest -1 3 3) 18)
(expect (sum_of_square_of_two_largest -1 10 10) 200)
