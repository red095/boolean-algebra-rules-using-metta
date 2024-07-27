(: or-absorption (-> Atom Atom))
(: and-absorption (-> Atom Atom))

; OR Absorption Law with recursion and case
(= (or-absorption $expr)
   (case $expr
     ( ((OR $A (AND $A $B)) $A)
       ((OR $A $B) (OR (or-absorption $A) (or-absorption $B)))
       ($other $other)
     )
   )
)

; AND Absorption Law with recursion and case
(= (and-absorption $expr)
   (case $expr
     ( ((AND $A (OR $A $B)) $A)
       ((AND $A $B) (AND (and-absorption $A) (and-absorption $B)))
       ($other $other)
     )
   )
)

; Simplify expressions by applying both or-absorption and and-absorption recursively
(: simplify (-> Atom Atom))
(= (simplify $expr)
   (case $expr
     ( ((OR $A $B) (or-absorption (OR (simplify $A) (simplify $B))))
       ((AND $A $B) (and-absorption (AND (simplify $A) (simplify $B))))
       ($other $other)
     )
   )
)
; Test the Absorption Law for OR
(= (test-or-absorption $A $B)
   (simplify (OR $A (AND $A $B))))

; Test the Absorption Law for AND
(= (test-and-absorption $A $B)
   (simplify (AND $A (OR $A $B))))

; Example usage
! (test-or-absorption A B) ; Should simplify to A
! (test-and-absorption A B) ; Should simplify to A

; Test nested expressions
! (simplify (OR (OR A (AND A B)) (AND A B))) ; Should simplify to A
! (simplify (AND (AND A (OR A B)) (OR A B))) ; Should simplify to A
