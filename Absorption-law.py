from hyperon import MeTTa


metta = MeTTa()


metta_code = '''
    ; Define Absorption laws
    (= (OR $A (AND $A $B)) $A)
    (= (AND $A (OR $A $B)) $A)
    
    ; Test the Absorption laws
    ! (OR A (AND A B))
    ! A
    ! (AND A (OR A B))
    ! A
'''


result = metta.run(metta_code)

print("Results of Absorption Law Tests:")
for res in result:
    print(res)
