
idade=int(input("quantas idades deseja por: "))

cont= 0
idademax=0
idademin=0
soma=0
while(0>idade):
    idade2=int(input("digite a idade: "))
    
    soma= soma+idade2
    
    if(idade<idademin):
        idademin=idade
    if(idade>idademax):
        idademax=idade
cont=cont+1

media=soma/idade

print("a: ",media)
print("b:",idademin)
print("c:",idademax)