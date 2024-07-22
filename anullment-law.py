from hyperon import MeTTa
metta=MeTTa()

metta.run('''(0)(1)''')
metta.run('''(=(AND $A 0)0)(=(OR $A 1)1)''')

result_AND= metta.run('!(AND A 0)')
result_or= metta.run('!(OR A 1)')

print("result of A AND 0: ",result_AND)
print("result of A OR 1: ",result_or)