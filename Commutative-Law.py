from hyperon import MeTTa

metta = MeTTa()

metta_code = '''
    ; Define Commutative laws
    (= (AND $A $B) (AND $B $A))
    (= (OR $A $B) (OR $B $A))
    
    ; Test the Commutative laws
    ! (AND A B)
    ! (AND B A)
    ! (OR A B)
    ! (OR B A)
'''


result = metta.run(metta_code)

print("Results of Commutative Law Tests:")
for res in result:
    print(res)
