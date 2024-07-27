(: and-identity (-> Atom Atom))
(: or-identity (-> Atom Atom))

; AND Identity Law with recursion and case
(= (and-identity $expr)
   (case $expr
     ( ((AND $A true) $A)
       ((AND true $A) $A)
       ((AND $A $B) (AND (and-identity $A) (and-identity $B)))
       ($other $other)
     )
   )
)

; OR Identity Law with recursion and case
(= (or-identity $expr)
   (case $expr
     ( ((OR $A false) $A)
       ((OR false $A) $A)
       ((OR $A $B) (OR (or-identity $A) (or-identity $B)))
       ($other $other)
     )
   )
)
; Test the Identity Law for AND
(= (test-and-identity $A $B)
   (and-identity (AND $A $B)))

; Test the Identity Law for OR
(= (test-or-identity $A $B)
   (or-identity (OR $A $B)))

; Example usage
! (test-and-identity A true) ; Should simplify to A
! (test-and-identity true A) ; Should simplify to A
! (test-or-identity A false) ; Should simplify to A
! (test-or-identity false A) ; Should simplify to A

; Test nested expressions
! (test-and-identity (AND A true) (AND true B)) ; Should simplify to (AND A B)
! (test-or-identity (OR A false) (OR false B)) ; Should simplify to (OR A B)
