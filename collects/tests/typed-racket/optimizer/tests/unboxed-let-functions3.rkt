#;
(
TR opt: unboxed-let-functions3.rkt 21:7 f -- fun -> unboxed fun
TR opt: unboxed-let-functions3.rkt 21:20 x -- unboxed var -> table
TR opt: unboxed-let-functions3.rkt 22:18 (+ x y) -- unboxed binary float complex
TR opt: unboxed-let-functions3.rkt 22:21 x -- leave var unboxed
TR opt: unboxed-let-functions3.rkt 22:21 x -- unbox float-complex
TR opt: unboxed-let-functions3.rkt 22:23 y -- float-arg-expr in complex ops
TR opt: unboxed-let-functions3.rkt 23:2 (f (+ 1.0+2.0i 2.0+4.0i) 3.0) -- call to fun with unboxed args
TR opt: unboxed-let-functions3.rkt 23:2 (f (+ 1.0+2.0i 2.0+4.0i) 3.0) -- unboxed call site
TR opt: unboxed-let-functions3.rkt 23:5 (+ 1.0+2.0i 2.0+4.0i) -- unboxed binary float complex
TR opt: unboxed-let-functions3.rkt 23:8 1.0+2.0i -- unboxed literal
TR opt: unboxed-let-functions3.rkt 23:17 2.0+4.0i -- unboxed literal
6.0+6.0i
)

#lang typed/scheme
#:optimize

;; function with a mix of complex and non-complex args
(let ((f (lambda: ((x : Float-Complex) (y : Float))
                  (+ x y))))
  (f (+ 1.0+2.0i 2.0+4.0i)
     3.0))
