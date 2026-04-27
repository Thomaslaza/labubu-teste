import random

def gerar_lista(tamanho):
    return [random.randint(1, 100) for _ in range(tamanho)]

def filtrar_pares(lista):
    return [x for x in lista if x % 2 == 0]

def calcular_media(lista):
    if not lista:
        return 0
    return sum(lista) / len(lista)

def main():
    numeros = gerar_lista(10)
    pares = filtrar_pares(numeros)
    media = calcular_media(pares)
    print("Lista:", numeros)
    print("Pares:", pares)
    print("Média dos pares:", media)

if __name__ == "__main__":
    main()
print("labubu rei")
print("caralhoooo")
print("aaaaa")