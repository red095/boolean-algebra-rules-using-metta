; Associative Law
(= (AND $A (AND $B $C)) (AND (AND $A $B) $C))
(= (OR $A (OR $B $C)) (OR (OR $A $B) $C))

; Test the Associative Law
! (AND A (AND B C))
! (OR A (OR B C))
