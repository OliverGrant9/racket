#lang typed/scheme #:optimize
(require racket/unsafe/ops)
(let* ((unboxed-gensym-1 1.0+2.0i)
       (unboxed-gensym-2 (unsafe-flreal-part unboxed-gensym-1))
       (unboxed-gensym-3 (unsafe-flimag-part unboxed-gensym-1))
       (unboxed-gensym-4 2.0+4.0i)
       (unboxed-gensym-5 (unsafe-flreal-part unboxed-gensym-4))
       (unboxed-gensym-6 (unsafe-flimag-part unboxed-gensym-4))
       (unboxed-gensym-7 (unsafe-fl+ unboxed-gensym-2 unboxed-gensym-5))
       (unboxed-gensym-8 (unsafe-fl+ unboxed-gensym-3 unboxed-gensym-6))
       (unboxed-gensym-9 (unsafe-fl- 0.0 unboxed-gensym-8)))
  (unsafe-make-flrectangular unboxed-gensym-7 unboxed-gensym-9))