;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |39|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
;car setting
;unique variable
(define WHEEL-RADIUS 5)

(define WHEEL-DISTANCE (* WHEEL-RADIUS 2))
(define WHEEL
  (circle WHEEL-RADIUS "solid" "black"))

(define SPACE
  (rectangle WHEEL-DISTANCE WHEEL-RADIUS "solid" "white"))
(define BOTH-WHEELS
  (beside WHEEL SPACE WHEEL))
(define CAR-TOP
  (rectangle (* WHEEL-DISTANCE 3) (* WHEEL-RADIUS 2) "solid" "red"))
(define CAR-BODY
  (rectangle (* WHEEL-DISTANCE 5) (* WHEEL-RADIUS 3) "solid" "red"))
(define CAR-MAIN
  (overlay/xy BOTH-WHEELS
              (- 0 WHEEL-DISTANCE)
              (- 0 WHEEL-DISTANCE)
              CAR-BODY))
(define CAR
  (overlay/xy CAR-TOP
              (- WHEEL-DISTANCE)
              WHEEL-RADIUS
              CAR-MAIN))
 
CAR
