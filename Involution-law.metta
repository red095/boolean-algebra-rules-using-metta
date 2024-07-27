(: involution (-> Atom Atom))

(= (involution $expr)
   (case $expr
     ; If the expression is NOT (NOT A), simplify it to A
    ( ((NOT (NOT $A)) $A)
     ; If the expression is NOT $expr, recursively apply involution
     ((NOT $expr) (involution (NOT $expr)))
     ; For any other expression, return it as is
     ($other $other)
   )
))

; Test the Involution Law
(= (test-involution $A)
   (involution (NOT (NOT $A))))

; Example usage
! (test-involution A) ; Should simplify to A
