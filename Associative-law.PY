from hyperon import MeTTa


metta = MeTTa()

metta_code = '''
    ; Define Associative laws
    (= (AND (AND $A $B) $C) (AND $A (AND $B $C)))
    (= (OR (OR $A $B) $C) (OR $A (OR $B $C)))
    
    ; Test the Associative laws
    ! (AND (AND A B) C)
    ! (AND A (AND B C))
    ! (OR (OR A B) C)
    ! (OR A (OR B C))
'''

result = metta.run(metta_code)

print("Results of Associative Law Tests:")
for res in result:
    print(res)
