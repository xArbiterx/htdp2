;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |5|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
(define REC-Y 15)
(define REC-X 2)
(define CIR-WIDTH 5)
(define SCE-X 20)
(define SCE-Y 20)
(define tree-leaves (circle CIR-WIDTH "solid" "green"))
(define tree-trunk (rectangle REC-X REC-Y "solid" "brown"))
(define scene (empty-scene SCE-X SCE-Y))
(define tree (overlay/xy tree-leaves 4 1 tree-trunk))
(place-image tree
             10 10
             scene)
