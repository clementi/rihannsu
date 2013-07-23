#lang racket

(define r-values #("H'" "Ae" "D'" "W" "U" "N'" "R'" "O" "V" "Ll"))
(define vowels #("ae" "A" "i'" "a" " Eh" "e" "T'" "I" "u'" "s" " " "ae" "ea" "ei" "e" "a" "iu" "o" "ie" "i" "eo" "i " "ae" "ie" "ai" " " "au" "a" "ei" "ah" "ao" "a " "aeu" "u" " " "ae" "oa" "i" " " "s" "i" "  " "ea" "ia" " E" "ei" "ta'" "ra-" "ei" " " " " "'h" "ae" "oi" "iy" "u" "ei" "eh" "s'h" "i" "e'" "ia" " " "ie" "iy" "ih" "ae" "io" "ai" "ui" "ae" "y" " " "ei" "ie" "a'e" "u" "iu" "ou" "aa" "a" "i" "ih" "i'h" "e " "ea" "aa" "ae" "u" "aeih" "ae" "ei" " -- " "iu" "oa" "ei" "o" "oi" "ue" " " "'ss" "l'" "k'h" "hw" "rr" "r" "rr'" "mm" "t'd" "'hh" "qh" "vh" "fv" "nh" "d" "e" "hh" "k" "a" "t" "dl" "dl" "rh" "nnh" "rai" "th" "dh-" "yrh" "aith" "qh" "m" "t" "r" "q" "s" "f" "v" "h" "z" "y"))
(define consonants #("s" "ll" "R" "m" "k" "t" "h" "r" "rr" "..." " " "v" "mn" "kh" "d" "hv" "fv" " " "r" "t" "-" "th" "k" "lh" "d" "bh" " " "d'" "dr" "ht" " " "ll" "lh" "dt'" "ht" "th" "kh" "l'" "nn" "n" " " "'rh" "rh" "jh" "kj" "lh" "nv" "tr" "hw" "fv" "nn" "hw" "d" "nv" "! " "mn" "dh" "rh" "ll'" "sw" "lmn" "l" "mn" "-" "h'n" "t" "ss" "hv" "hs" "hr" "hj" " " "hf" "wh" "rrh" "bh" "j" "y" " " "; " "llu" "dh" "kh" "rh" " " "  " "; " "wh" " " "mn" "e" "ii" "a" "ee" "eu" "i" "o" "iu" "uu" " " "uy" "ae" "e" " i" "'i" "'u" "'u" "iae" "eu" "a" "ae" "hl" "iu" "-a" "ss" "-t" "r-" "nn" " 'nh" "ai" "iu" "iu" "hu" "ha" "la" "se" "mo" "tha" "kha" "dha" "a" " i" "t" "e" "e" "ae" "ai" "ia" "ia" "ou"))

(define (get-r-value)
  (vector-ref r-values (random 10)))

(define (get-vowel offset)
  (vector-ref vowels (+ (* offset 10) (random 10))))

(define (get-more-vowel-adjustment)
  (vector-ref vowels (+ (random 10) 130)))

(define (get-consonant offset)
  (vector-ref consonants (+ (* offset 10) (random 10))))

(define (get-word-break)
  (when [< (random 10) 4]
    " "))

(define (get-terminal-adjustment)
  (let ([rand-val (random 10)])
    (cond [(and (>= rand-val 0) (<= rand-val 4)) " "]
          [(= rand-val 5) "?"]
          [(= rand-val 6) "...."]
          [(= rand-val 7) ", "]
          [(= rand-val 8) " "])))
