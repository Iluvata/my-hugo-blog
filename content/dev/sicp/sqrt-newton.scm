
(define (average x y)
  (/ (+ x y) 2))
(define (square x)
  (* x x))
(define (better-guess guess x)
  (average guess (/ x guess)))
(define (good-enough? guess x)
  (< (abs (- x (square guess))) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (better-guess guess x) x)))

;(define (sqrt x)
; (sqrt-iter 2.0 x))

(define (sqrt x)
  (define (better-guess guess)
    (average guess (/ x guess)))
  (define (good-enough? guess)
    (< (abs (- x (square guess))) 0.001))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (better-guess guess))))
  (sqrt-iter 1.0))

(display (sqrt 6))
