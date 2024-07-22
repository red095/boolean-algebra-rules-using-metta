from hyperon import MeTTa

metta = MeTTa()

metta_code = '''
    (= (AND $A $A) $A)
    (= (OR $A $A) $A)
    
    ; Test the Idempotent laws
    ! (AND A A)
    ! (OR B B)
'''

result = metta.run(metta_code)

print("Results of Idempotent Law Tests:")
for res in result:
    print(res)
