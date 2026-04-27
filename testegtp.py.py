import string
import random

def gerar_senha(tamanho):
    caracteres = string.ascii_letters + string.digits
    return ''.join(random.choice(caracteres) for _ in range(tamanho))

def verificar_palindromo(texto):
    return texto == texto[::-1]

def embaralhar_texto(texto):
    lista = list(texto)
    random.shuffle(lista)
    return ''.join(lista)

def main():
    senha = gerar_senha(8)
    print("Senha gerada:", senha)
    print("É palíndromo?", verificar_palindromo(senha))
    print("Senha embaralhada:", embaralhar_texto(senha))

if __name__ == "__main__":
    main()


    if tam < 1:
      print("labubu")