; Absorption Law
(= (OR $A (AND $A $B)) $A)
(= (AND $A (OR $A $B)) $A)

; Test the Absorption Law
! (OR A (AND A B))
! (AND A (OR A B))
