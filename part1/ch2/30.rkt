;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |30|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
(define TICKET-PRICE 5.0)
(define PRICE-CHANGE-STEP 0.1)
(define FIXED-COST 180)
(define VARIABLE-COST 0.04)
(define AUDIENCE 120)
(define AUDIENCE-STEP 15)
(define PRICE-SENSITIVE (/ AUDIENCE-STEP PRICE-CHANGE-STEP))

(define (attendees ticket-price)
  (- AUDIENCE (* (- ticket-price TICKET-PRICE) PRICE-SENSITIVE)))
(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))
(define (cost ticket-price)
  (+ FIXED-COST (* VARIABLE-COST (attendees ticket-price))))
(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))
(profit 4)