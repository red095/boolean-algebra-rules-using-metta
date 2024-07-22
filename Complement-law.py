from hyperon import MeTTa

metta = MeTTa()

metta_code = '''
    (= (AND $A (not $A)) 0)
    (= (OR $A (not $A)) 1)
    
    ; Test the Complement laws
    ! (AND A (not A))
    ! (OR B (not B))
'''

result = metta.run(metta_code)

print("Results of Complement Law Tests:")
for res in result:
    print(res)
