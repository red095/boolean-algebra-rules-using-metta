; Complement Law
(= (AND $A (NOT $A)) false)
(= (AND (NOT $A) $A) false)
(= (OR $A (NOT $A)) true)
(= (OR (NOT $A) $A) true)

; Test the Complement Law
! (AND A (NOT A))
! (OR A (NOT A))
