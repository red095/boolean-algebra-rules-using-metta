from hyperon import MeTTa

# Initialize the MeTTa interpreter
metta = MeTTa()
a
metta_code = '''
    ; Define Distributive laws
    (= (AND $A (OR $B $C)) (OR (AND $A $B) (AND $A $C)))
    (= (OR $A (AND $B $C)) (AND (OR $A $B) (OR $A $C)))
    
    ; Test the Distributive laws
    ! (AND A (OR B C))
    ! (OR (AND A B) (AND A C))
    ! (OR A (AND B C))
    ! (AND (OR A B) (OR A C))
'''

result = metta.run(metta_code)

print("Results of Distributive Law Tests:")
for res in result:
    print(res)
