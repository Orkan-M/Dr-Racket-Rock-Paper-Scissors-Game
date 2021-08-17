#lang racket/gui
(require 2htdp/image) ;Allows the fancy text in the interaction window.

;-------------------------------------MY RACKET PROJECT-----------------------------------;
;                                                                   
;                                                                   
;                                                                   
;                                                                   
;                   ;;;;          ;                                 
;                  ;    ;         ;                                 
;                 ;      ;        ;                                 
;                ;       ;  ; ;;  ;   ;    ;;;  ; ;;                
;                ;       ;  ;; ;  ;  ;    ;  ;  ;;  ;               
;                ;       ;  ;  ;  ; ;    ;   ;  ;   ;               
;  ;;;; ;;;;     ;       ;  ;     ;;;    ;   ;  ;   ;     ;;;; ;;;; 
;                ;      ;   ;     ;  ;   ;   ;  ;   ;               
;                 ;    ;    ;     ;  ;   ;   ;  ;   ;               
;                  ;;;;     ;     ;   ;   ;;; ; ;   ;               
;                                                                   
;                                                                   
;                                                                   
;                                                                   
;-------------------------------------GLOBAL VARIABLES-------------------------------------;

(define gameframe (new frame% ;Function to define a frame
                   [label "Rock Paper Scissors ~ By Orkan"] ;Name at the top of the frame
                   [width 1000] ;Width of Frame
                   [height 800] ;Height of Frame
                   [alignment '(center center)]
                   [style '(no-resize-border)]
                   [stretchable-width #t]
                   ))

(define gamepopup (new frame%
                     [label "The Results"]
                     [width 300] [height 100]
                     ))

(define popupmessage (new message% [parent gamepopup]
                  [label "No valid inputs for either Player 1 or Player 2"]))


(define rockimage (read-bitmap "Rock.jpeg"))
(define paperimage (read-bitmap "Paper.jpeg"))
(define scissorsimage (read-bitmap "Scissors.jpeg"))
(define questionmarkimage (read-bitmap "questionmark.jpeg"))
(define questionmarkimage2 (read-bitmap "questionmark.jpeg"))

(define player1 '())
(define player2 '())

;-------------------------------------GLOBAL VARIABLES-------------------------------------;

;-------------------------------------TEXT / IMAGE TESTING----------------------------------;

(text/font "Welcome" 18 "purple"
             #f 'modern 'italic 'normal #f)

(text/font "to" 18 "red"
             #f 'modern 'italic 'normal #f)

(text/font "Rock" 18 "blue"
             #f 'modern 'italic 'normal #f)

(text/font "Paper" 18 "red"
             #f 'modern 'italic 'normal #f)

(text/font "Scissors" 18 "purple"
             #f 'modern 'italic 'normal #f)

(text/font "Game" 18 "blue"
             #f 'modern 'italic 'normal #f)

(text/font "Made" 18 "red"
             #f 'modern 'italic 'normal #f)

(text/font "In" 18 "purple"
             #f 'modern 'italic 'normal #f)

(text/font "Racket" 18 "blue"
             #f 'modern 'italic 'normal #f)

(text/font "by" 18 "purple"
             #f 'modern 'italic 'normal #f)

(text/font "Orkan" 18 "red"
             #f 'modern 'italic 'normal #f)


;-------------------------------------TEXT TESTING-----------------------------------------;

;-------------------------------------LEFT PANEL W/ TEXT-----------------------------------;

(define panel (new horizontal-panel% ;The panel on the left side of the line
                   [parent gameframe]
                   [alignment '(left top)]
                   ))

(define panel1  (new vertical-panel% ;Panel on the left
                   [parent panel]
                   [alignment '(left top)]
                   [stretchable-width #f]
                   [style '(border)]
                   [border 10]
                   ))

(define LowerLeftPanel (new vertical-panel%
                   (parent panel1)
                   (alignment '(left center))
                   [style '(border)]
                   [border 10]
                   ))

(define EvenLowerLeftPanel (new vertical-panel%
                   (parent panel1)
                   [style '(border)]
                   [border 10]
                   (stretchable-height #f)
                   ))

(define blankspace8 (new message%
                     (parent LowerLeftPanel)
                     (label "----------------------------------------------------")
                     ))

(define howtoplay (new message%
                     (parent LowerLeftPanel)
                     (label "HOW TO PLAY:")
                     ))

(define blankspace (new message%
                     (parent LowerLeftPanel)
                     (label "----------------------------------------------------")
                     ))

(define playingthegame (new message%
                     (parent LowerLeftPanel)
                     (label "To win the game you must beat your opponent's choice.")
                     ))


(define playingthegame1 (new message%
                     (parent LowerLeftPanel)
                     (label "To make a choice, you must first press the white screen at the bottom.")
                     ))


(define playingthegame3 (new message%
                     (parent LowerLeftPanel)
                     (label "To then press a button once (for each player).")
                     ))


(define blankspace5 (new message%
                     (parent LowerLeftPanel)
                     (label "----------------------------------------------------")
                     ))

(define playingthegame2 (new message%
                     (parent LowerLeftPanel)
                     (label "Instructions For Player 1:")
                     ))

(define blankspace4 (new message%
                     (parent LowerLeftPanel)
                     (label "----------------------------------------------------")
                     ))

(define playeroneinstr (new message%
                     (parent LowerLeftPanel)
                     (label "Z = Rock")
                     ))

(define playeroneinstr1 (new message%
                     (parent LowerLeftPanel)
                     (label "X = Paper")
                     ))

(define playeroneinstr2 (new message%
                     (parent LowerLeftPanel)
                     (label "C = Scissors")
                     ))

(define blankspace6 (new message%
                     (parent LowerLeftPanel)
                     (label "----------------------------------------------------")
                     ))

(define playingthegame4 (new message%
                     (parent LowerLeftPanel)
                     (label "Instructions For Player 2:")
                     ))

(define blankspace7 (new message%
                     (parent LowerLeftPanel)
                     (label "----------------------------------------------------")
                     ))

(define playertwoinstr (new message%
                     (parent LowerLeftPanel)
                     (label "I = Rock")
                     ))

(define playertwoinstr1 (new message%
                     (parent LowerLeftPanel)
                     (label "O = Paper")
                     ))

(define playertwoinstr2 (new message%
                     (parent LowerLeftPanel)
                     (label "P = Scissors")
                     ))

(define blankspace9 (new message%
                     (parent LowerLeftPanel)
                     (label "----------------------------------------------------")
                     ))

(define playingthegame5 (new message%
                     (parent LowerLeftPanel)
                     (label "Once you have both selected your choice, press CONFIRM on the right.")
                     ))


(define winconditions (new message%
                     (parent LowerLeftPanel)
                     (label "Here are the win conditions.")
                     ))

(define blankspace1 (new message%
                     (parent LowerLeftPanel)
                     (label "----------------------------------------------------")
                     ))

(define wincond (new message%
                     (parent LowerLeftPanel)
                     (label "Rock vs Paper =  Paper Wins")
                     ))

(define wincond1 (new message%
                     (parent LowerLeftPanel)
                     (label "Rock vs Scissors = Rock Wins")
                     ))


(define wincond2 (new message%
                     (parent LowerLeftPanel)
                     (label "Paper vs Scissors = Scissors Wins")
                     ))


(define blankspace2 (new message%
                     (parent LowerLeftPanel)
                     (label "----------------------------------------------------")
                     ))

(define tiecond (new message%
                     (parent LowerLeftPanel)
                     (label "Rock vs Rock = Tie")
                     ))

(define tiecond2 (new message%
                     (parent LowerLeftPanel)
                     (label "Scissors vs Scissors = Tie")
                     ))

(define tiecond3 (new message%
                     (parent LowerLeftPanel)
                     (label "Paper vs Paper = Tie")
                     ))

(define blankspace3 (new message%
                     (parent LowerLeftPanel)
                     (label "----------------------------------------------------")
                     ))

(define madeby (new message%
                     (parent EvenLowerLeftPanel)
                     (label "Made by Orkan")
                     ))

;-------------------------------------LEFT PANEL W/ TEXT-----------------------------------;

;------------------------------------RIGHT PANEL W/ TEXT-----------------------------------;

(define rightpanel (new horizontal-panel% ;Panel on the right
                        [parent panel]
                        [style '(border)]
                        [border 10]
                        ))


(define panel2 (new vertical-panel% ;Panel on the right
                   [parent rightpanel]
                   [style '(border)]
                   (alignment '(center center))
                   [border 10]
                   ))

(define canvass (instantiate canvas%
                    [panel2]
                    (paint-callback
                     (lambda (canvas dc)
                       (send dc draw-bitmap questionmarkimage 0 250)
                       ))
                    ))

(define panel3 (new vertical-panel% ;Panel on the right
                   [parent rightpanel]
                   (alignment '(center center))
                   [style '(border)]
                   [border 10]
                   ))

(define canvass2 (instantiate canvas%
                    [panel3]
                    (paint-callback
                     (lambda (canvas dc)
                       (send dc draw-bitmap questionmarkimage 0 250)
                       ))
                    ))

(define panel4 (new horizontal-panel% ;Panel on the right
                   [parent rightpanel]
                   [alignment '(center center)]
                   [style '(border)]
                   [border 10]
                   ))

(new button% [parent gamepopup]
     (label "EXIT")
     (callback (λ (a b)
                 (set! questionmarkimage questionmarkimage2)
                 (send canvass on-paint) ;Paint a new questionmark onto the canvas
                 (send canvass refresh-now) ;Refresh the canvas, so only 1 image appears.
                 (send canvass2 on-paint)
                 (send canvass2 refresh-now)
                 (send gamepopup show #f)
                 )))

(new button% [parent panel4]
     [label "CONFIRM"]
     (callback (λ (a b)
            (cond
;Player1
              [(equal? player1 '(Rock))
               (set! questionmarkimage rockimage)
               (send canvass on-paint)] ;<---- Attempt to force this to send a bitmap image back to the canvas to replace it
              [(equal? player1 '(Scissors))
               (set! questionmarkimage scissorsimage)
               (send canvass on-paint)]
              [(equal? player1 '(Paper))
               (set! questionmarkimage paperimage)
               (send canvass on-paint)]
              (else #f))
;Player2
            (cond
              [(equal? player2 '(Rock))
               (set! questionmarkimage rockimage)
               (send canvass2 on-paint)]
              [(equal? player2 '(Scissors))
               (set! questionmarkimage scissorsimage)
               (send canvass2 on-paint)]
              [(equal? player2 '(Paper))
               (set! questionmarkimage paperimage)
               (send canvass2 on-paint)]              
              (else #f))
          
              (send gamepopup show #t)
     (calculationcode player1 player2)
)))

(define keyboardevents%
  (class canvas%
    (define/override (on-char event)
      (displayln (send event get-key-code))
      (cond [ (equal? (send event get-key-code) '#\z)
              (set! player1 '(Rock))]
            
            [ (equal? (send event get-key-code) '#\Z)
              (set! player1 '(Rock))]
            
            [ (equal? (send event get-key-code) '#\x)
              (set! player1 '(Paper))]

            [ (equal? (send event get-key-code) '#\X)
              (set! player1 '(Paper))]
            
            [ (equal? (send event get-key-code)'#\c)
              (set! player1 '(Scissors))]

            [ (equal? (send event get-key-code)'#\C)
              (set! player1 '(Scissors))]            
            
            [ (equal? (send event get-key-code)'#\i)
              (set! player2 '(Rock))]

            [ (equal? (send event get-key-code)'#\I)
              (set! player2 '(Rock))]
            
            [ (equal? (send event get-key-code)'#\o)
              (set! player2 '(Paper))]

            [ (equal? (send event get-key-code)'#\O)
              (set! player2 '(Paper))]
            
            [ (equal? (send event get-key-code)'#\p)
              (set! player2 '(Scissors))]

            [ (equal? (send event get-key-code)'#\p)
              (set! player2 '(Scissors))]))

    (super-new))) ;This now passes all values / fields through the game.


(define calculationcode (λ (x y)
                                (cond
                                  ((empty? (and x y)) (send popupmessage set-label "No input from both Player 1 and Player 2"))
                                  ((empty? x) (send popupmessage set-label "No input for Player 1, Player 2 Wins!"))
                                  ((empty? y) (send popupmessage set-label "No input for Player 2, Player 1 Wins!"))
                                 
                                  ((and (symbol=?(first x) 'Rock)
                                        (symbol=?(first y) 'Paper))
                                  
                                   (send popupmessage set-label "Congratulations Player 2, you win!"))
                                  
                                  ((and (symbol=? (first x) 'Paper)
                                        (symbol=? (first y) 'Rock))
                                   
                                   (send popupmessage set-label "Congratulations Player 1, you win!"))
                                  
                                  ((and (symbol=? (first x) 'Paper)
                                        (symbol=? (first y) 'Paper))
                                 
                                   (send popupmessage set-label "The game ended as a draw!"))
                                  
                                  ((and (symbol=? (first x) 'Rock)
                                        (symbol=? (first y) 'Rock))
                               
                                   (send popupmessage set-label "The game ended as a draw!"))

                                  ((and (symbol=? (first x) 'Rock)
                                        (symbol=? (first y) 'Scissors))
                       
                                   (send popupmessage set-label "Congratulations Player 1, you win!"))

                                  ((and (symbol=? (first x) 'Scissors)
                                        (symbol=? (first y) 'Rock))
                                   
                                   (send popupmessage set-label "Congratulations Player 2, you win!"))

                                  ((and (symbol=? (first x) 'Scissors)
                                        (symbol=? (first y) 'Scissors))
                        
                                   (send popupmessage set-label "The game ended as a draw!"))
                                  
                                  ((and (symbol=? (first x) 'Scissors)
                                        (symbol=? (first y) 'Paper))
                                 
                                   (send popupmessage set-label "Congratulations Player 1, you win!"))
                                  
                                  ((and (symbol=? (first x) 'Paper)
                                        (symbol=? (first y) 'Scissors))
                                  
                                   (send popupmessage set-label "Congratulations Player 2, you win!"))
                                  (#t (send popupmessage set-label "Invalid Input"))
  )))


;------------------------------------RIGHT PANEL W/ TEXT-----------------------------------;

(new keyboardevents% [parent gameframe])
(send gameframe show #t)
(calculationcode player1 player2)