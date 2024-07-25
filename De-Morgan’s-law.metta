; De Morgan's Law
(= (NOT (AND $A $B)) (OR (NOT $A) (NOT $B)))
(= (NOT (OR $A $B)) (AND (NOT $A) (NOT $B)))

; Test De Morgan's Law
! (NOT (AND A B))
! (NOT (OR A B))
