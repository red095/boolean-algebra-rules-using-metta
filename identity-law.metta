; Identity Law
(= (AND $A true) $A)
(= (AND true $A) $A)
(= (OR $A false) $A)
(= (OR false $A) $A)

; Test the Identity Law
! (AND A true)
! (AND true A)
! (OR A false)
! (OR false A)
