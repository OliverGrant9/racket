#lang typed/scheme
(require racket/unsafe/ops)
(let* ((unboxed-real-1 1.0)
       (unboxed-imag-2 2.0)
       (unboxed-real-3 0.0)
       (unboxed-imag-4 1.0)
       (unboxed-real-5 2.0)
       (unboxed-imag-6 4.0)
       (unboxed-real-7 (unsafe-fl- (unsafe-fl* unboxed-real-3
                                               unboxed-real-5)
                                   (unsafe-fl* unboxed-imag-4
                                               unboxed-imag-6)))
       (unboxed-imag-8 (unsafe-fl+ (unsafe-fl* unboxed-imag-4
                                               unboxed-real-5)
                                   (unsafe-fl* unboxed-real-3
                                               unboxed-imag-6)))
       (unboxed-real-9 (unsafe-fl+ unboxed-real-1 unboxed-real-7))
       (unboxed-imag-10 (unsafe-fl+ unboxed-imag-2 unboxed-imag-8)))
  (unsafe-make-flrectangular unboxed-real-9 unboxed-imag-10))