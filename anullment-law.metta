; Null Law (Annulment Law)
(= (AND $A false) false)
(= (AND false $A) false)
(= (OR $A true) true)
(= (OR true $A) true)

; Test the Null Law
! (AND A false)
! (AND false A)
! (OR A true)
! (OR true A)
