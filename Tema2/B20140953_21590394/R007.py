"""
Procesar data

Utilizando el patron de diseño composicion recursiva obten la
salida correspondiente:

R = "29590095,GUERRA TACITURNO RENE FERNANDA,0.7,1,1,1,1,1,1,0.7"

T = composicion_recursiva(R,[fun1,fun2,fun3,funN..])
print(T)
# [29590095,"GUERRA TACITURNO RENE FERNANDA",92.5]

"""

def composicion_recursiva(data, funcs):
     if not funcs:
          return data
     func = funcs[0]
     nuevo_dato = func(data)
     return composicion_recursiva(nuevo_dato, funcs[1:])

def fun1(cadena):
     return cadena.split(',')

def fun2(lista):
    lista[0] = int(lista[0])
    return lista

def fun3(lista):
     match lista:
          case [id_, nombre, *notas]:
               notas = [float(nota) for nota in notas]
               return [id_, nombre, notas]
          case _:
               return lista

def calcular_promedio(notas, suma=0, contador=0):
     if not notas:
          return suma / contador * 100
     suma += notas[0]
     return calcular_promedio(notas[1:], suma, contador + 1)

def fun4(lista):
     match lista:
          case [id_, nombre, notas]:
               promedio = calcular_promedio(notas)
               return [id_, nombre, round(promedio, 1)]
          case _:
               return lista

R = "29590095,GUERRA TACITURNO RENE FERNANDA,0.7,1,1,1,1,1,1,0.7"

T = composicion_recursiva(R, [fun1, fun2, fun3,fun4])
print(T)
