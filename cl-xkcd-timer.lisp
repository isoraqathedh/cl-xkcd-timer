;;;; cl-xkcd-timer.lisp

(in-package #:cl-xkcd-timer)
(in-readtable :qtools)

(defun years-backward (percentage)
  "Computes the number of years backward that percentage corresponds to."
  (- (exp (+ 3 (* (expt percentage 3) 20.3444)))
     (exp 3)))

;;; Widgets
(define-widget main-window (QWidget) ())

;; Settings: from and to
(define-subwidget (main-window from-time)
    (q+:make-qdatetimeedit main-window) ())
(define-subwidget (main-window to-time)
    (q+:make-qdatetimeedit main-window) ())
(define-subwidget (main-window from-to) (q+:make-qvboxlayout main-window)
  (q+:add-widget layout from-time)
  (q+:add-widget layout to-time))

;; Current time and associated time markers

;; Percentage and total time

;; Progress bars

;; Putting it all together
(define-subwidget (main-window main-layout) (q:make-qhboxlayout main-window)
  (q:add-widget main-layout progress-bars)
  (q:add-widget main-layout time-values)
  (q:add-widget main-layout current-time)
  (q:add-widget main-layout associated-time)
  (q:add-widget main-layout from-to))

