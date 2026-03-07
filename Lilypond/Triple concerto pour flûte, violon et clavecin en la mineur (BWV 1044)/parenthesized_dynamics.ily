paren =
#(define-event-function (parser location dyn) (ly:event?)
   (make-dynamic-script
    #{ \markup \concat {
      \normal-text \italic \fontsize #2 (
      \pad-x #0.2 #(ly:music-property dyn 'text)
      \normal-text \italic \fontsize #2 )
       }
    #}))

brack =
#(define-event-function (parser location dyn) (ly:event?)
   (make-dynamic-script
    #{ \markup \concat {
      \normal-text \fontsize #2 [
      \pad-x #0.2 #(ly:music-property dyn 'text)
      \normal-text \fontsize #2 ]
       }
    #}))