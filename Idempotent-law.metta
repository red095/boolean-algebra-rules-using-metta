(: idempotent (-> Atom Atom))

; Apply the Idempotent Law
(= (idempotent $expr)
   (case $expr
     ; If the expression is AND A A, simplify to A
     (((AND $A $A) $A)
     ; If the expression is OR A A, simplify to A
     ((OR $A $A) $A)
     ; For other expressions, return them unchanged
     ($other $other)
   )
)
)
; Test the Idempotent Law
(= (test-idempotent $expr)
   (idempotent $expr))

; Example usage
! (test-idempotent (AND A A)) ; Should simplify to A
! (test-idempotent (OR A A)) ; Should simplify to A
