(: complement-law (-> Atom Atom))


(= (complement-law $expr)
   (case $expr
     ; Apply Complement Law for AND
     (((AND $A (NOT $A))
      false)
     ((AND (NOT $A) $A)
      false)
     ; Apply Complement Law for OR
     ((OR $A (NOT $A))
      true)
     ((OR (NOT $A) $A)
      true)
     ; Recursively apply to AND and OR expressions
     ((AND $A $B)
      (AND (complement-law $A) (complement-law $B)))
     ((OR $A $B)
      (OR (complement-law $A) (complement-law $B)))
     ; Handle other cases
     ($other $other)
   )
))

; Test the Complement Law
(= (test-complement-law $expr)
   (complement-law $expr))

; Example usage
! (test-complement-law (AND A (NOT A))) ; Expected: false
! (test-complement-law (OR A (NOT A)))  ; Expected: true
