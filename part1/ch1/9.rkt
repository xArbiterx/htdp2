;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |9|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
(define in "false")
(define (translate-on-in sth)
  (if(string? sth)
     (string-length sth)
     (if(image? sth)
        (* (image-height sth) (image-width sth))
        (if(number? sth)
           (if(> sth 0)
              (- sth 1)
              sth)
           (if(boolean? sth)
              (if sth
                 10
                 20)
              0)))))
(translate-on-in in)