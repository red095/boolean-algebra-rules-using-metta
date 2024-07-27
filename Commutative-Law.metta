(: commutative-law (-> Atom Atom))

; Recursive application of the Commutative Law
(= (commutative-law $expr)
   (case $expr
     ; Apply Commutative Law for AND
     (((AND $A $B)
      (AND (commutative-law $B) (commutative-law $A)))
     ; Apply Commutative Law for OR
     ((OR $A $B)
      (OR (commutative-law $B) (commutative-law $A)))
     ; Handle other cases
     ($other $other)
   )
))

; Test the Commutative Law
(= (test-commutative-law $expr)
   (commutative-law $expr))

; Example usage
! (test-commutative-law (AND A B)) ; Expected: (AND B A)
! (test-commutative-law (OR A B))  ; Expected: (OR B A)
