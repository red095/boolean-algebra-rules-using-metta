from hyperon import MeTTa

metta = MeTTa()

metta_code = '''
    (= (AND $A 1) $A)
    (= (OR $A 0) $A)
    
    ; Test the identity laws
    ! (AND A 1)
    ! (OR B 0)
'''

result = metta.run(metta_code)

print("Results of Identity Law Tests:")
for res in result:
    print(res)
