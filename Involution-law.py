from hyperon import MeTTa

metta = MeTTa()

metta_code = '''
    ; Define the Involution Law
    (= (not (not $A)) $A)
    
    ; Test the Involution Law
    ! (not (not A))
    ! A
'''

result = metta.run(metta_code)

print("Results of Involution Law Tests:")
for res in result:
    print(res)
