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

;; ex1.8
(define (cube-root guess x)
  (if (good-enough? (cube guess) x)
      guess
      (cube-root (improve-cube-guess x guess) x)
      ))

(define (good-enough? guess x)
  (if (< (abs(- guess x)) 0.00000000000000000000000001)
      true
      false))

(define (improve-cube-guess x y)
  (/ (+ (/ x (square y)) (* 2 y)) 3))

(define (cube x)
  (* x x x))

(cube-root 0.1 27)
(cube-root 0.1 8)
(cube-root 0.1 1000)
(cube-root 0.1 -1)
(cube-root 0.1 -27)
(cube-root 0.1 0.25)