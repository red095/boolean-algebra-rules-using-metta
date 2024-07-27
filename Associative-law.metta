(: and-associative (-> Atom Atom))
(: or-associative (-> Atom Atom))

; AND Associative Law
(= (and-associative $expr)
   (case $expr
     ( ((AND $A (AND $B $C)) (AND (AND $A $B) (and-associative $C)))
       ($other $other)
     )
   )
)

; OR Associative Law 
(= (or-associative $expr)
   (case $expr
     ( ((OR $A (OR $B $C)) (OR (OR $A $B) (or-associative $C)))
       ($other $other)
     )
   )
)
; Test the Associative Law for AND
(= (test-and-associative $A $B $C)
   (and-associative (AND $A (AND $B $C))))

; Test the Associative Law for OR
(= (test-or-associative $A $B $C)
   (or-associative (OR $A (OR $B $C))))

; Example usage
! (test-and-associative A B C) ; Should simplify to (AND (AND A B) C)
! (test-or-associative A B C) ; Should simplify to (OR (OR A B) C)
