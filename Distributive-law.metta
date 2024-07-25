; Distributive Law
(= (AND $A (OR $B $C)) (OR (AND $A $B) (AND $A $C)))
(= (OR $A (AND $B $C)) (AND (OR $A $B) (OR $A $C)))

; Test the Distributive Law
! (AND A (OR B C))
! (OR A (AND B C))
