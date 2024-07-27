(: and-annulment (-> Atom Atom))
(: or-annulment (-> Atom Atom))

; AND Annulment Law 
(= (and-annulment $expr)
   (case $expr
     ( ((AND $A false) false)
       ((AND false $A) false)
       ((AND $A $B) (AND (and-annulment $A) (and-annulment $B)))
       ($other $other)
     )
   )
)

; OR Annulment Law 
(= (or-annulment $expr)
   (case $expr
     ( ((OR $A true) true)
       ((OR true $A) true)
       ((OR $A $B) (OR (or-annulment $A) (or-annulment $B)))
       ($other $other)
     )
   )
)

; Simplify expressions
(: simplify (-> Atom Atom))
(= (simplify $expr)
   (case $expr
     ( ((AND $A $B) (and-annulment (AND (simplify $A) (simplify $B))))
       ((OR $A $B) (or-annulment (OR (simplify $A) (simplify $B))))
       ($other $other)
     )
   )
)
; Test the Annulment Law for AND
(= (test-and-annulment $A $B)
   (simplify (AND $A $B)))

; Test the Annulment Law for OR
(= (test-or-annulment $A $B)
   (simplify (OR $A $B)))

; Example usage
! (test-and-annulment A false) ; Should simplify to false
! (test-and-annulment false A) ; Should simplify to false
! (test-or-annulment A true) ; Should simplify to true
! (test-or-annulment true A) ; Should simplify to true

; Test nested expressions
! (test-and-annulment (AND A false) (AND false B)) ; Should simplify to false
! (test-or-annulment (OR A true) (OR true B)) ; Should simplify to true
