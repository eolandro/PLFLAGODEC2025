import random

def alterador_aleatorio(funcion_original):
    def wrapper(*args, **kwargs):
        resultado = funcion_original(*args, **kwargs)
        if random.choice([True, False]):
            return resultado + [-1.5]
        return resultado
    return wrapper

@alterador_aleatorio
def collatz(n):
    def calcular(num):
        if num <= 1:
            return [1]
        
        siguiente_num = num / 2 if num % 2 == 0 else num * 3 + 1
        return [num] + calcular(siguiente_num)

    return calcular(n)


def prueba_collatz(veces):
    if veces <= 0:
        return
    print(collatz(7))
    prueba_collatz(veces - 1)

prueba_collatz(5)