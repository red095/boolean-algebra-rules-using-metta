(: distributive (-> Atom Atom))


(= (distributive $expr)
   (case $expr
     ; Apply the distributive law for AND over OR
     (((AND $A (OR $B $C))
      (OR (AND $A $B) (AND $A $C)))
     ; Apply the distributive law for OR over AND
     ((OR $A (AND $B $C))
      (AND (OR $A $B) (OR $A $C)))
     ; For other expressions, return them unchanged
     ($other $other)
   )
))

; Test the Distributive Law
(= (test-distributive $expr)
   (distributive $expr))

; Example usage
! (test-distributive (AND A (OR B C))) ; Should simplify to (OR (AND A B) (AND A C))
! (test-distributive (OR A (AND B C))) ; Should simplify to (AND (OR A B) (OR A C))
