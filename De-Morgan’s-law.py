from hyperon import MeTTa

metta = MeTTa()
a
metta_code = '''
    ; Define De Morgan's Laws
    (= (not (AND $A $B)) (OR (not $A) (not $B)))
    (= (not (OR $A $B)) (AND (not $A) (not $B)))

    ; Test De Morgan's Laws
    ! (not (AND A B))
    ! (OR (not A) (not B))
    ! (not (OR A B))
    ! (AND (not A) (not B))
'''

result = metta.run(metta_code)

print("Results of De Morgan's Laws Tests:")
for res in result:
    print(res)
