(: de-morgan (-> Atom Atom))


(= (de-morgan $expr)
   (case $expr
     ; Apply De Morgan's Law for NOT over AND
     (((NOT (AND $A $B))
      (OR (de-morgan (NOT $A)) (de-morgan (NOT $B))))
     ; Apply De Morgan's Law for NOT over OR
     ((NOT (OR $A $B))
      (AND (de-morgan (NOT $A)) (de-morgan (NOT $B))))
     
     ; Handle other cases
     ($other $other)
   )
))

; Test De Morgan's Laws
(= (test-de-morgan $expr)
   (de-morgan $expr))

; Example usage
! (test-de-morgan (NOT (AND A B))) ; Expected: (OR (NOT A) (NOT B))
! (test-de-morgan (NOT (OR A B))) ; Expected: (AND (NOT A) (NOT B))

