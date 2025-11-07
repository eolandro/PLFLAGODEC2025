def composicion_HOF(valor):
    def procesar(siguiente_funcion):
        resultado = siguiente_funcion(valor)
        if resultado is None:
            return valor
        return composicion_HOF(resultado)
    return procesar

def quitar_primeros(lista, n):
    if n == 0 or not lista:
        return lista
    return quitar_primeros(lista[1:], n - 1)
    
def longitud_recursiva(lista):
    if not lista:
        return 0
    return 1 + longitud_recursiva(lista[1:])

def fun0_separar(cadena):
    return cadena.split(',')

def fun1_calcular(lista):
    def suma_recursiva(numeros):
        return 0 if not numeros else float(numeros[0]) + suma_recursiva(numeros[1:])
    
    id_val = lista[0]
    nombre_val = lista[1]
    notas = quitar_primeros(lista, 2)
    
    suma = suma_recursiva(notas)
    cantidad_notas = longitud_recursiva(notas)
    promedio = (suma / cantidad_notas) * 100
    
    return [id_val, nombre_val, promedio]

def fun2_formatear(lista):
    return [int(lista[0]), lista[1], round(lista[2], 1)]

R_str = "29590097,ROMAY TACITURNO RENE FERNANDA,0.7,1,1,1,1,1,1,0.7"


T = composicion_HOF(R_str)
T = T(fun0_separar)
T = T(fun1_calcular)
T = T(fun2_formatear)
resultado_final = T(lambda e: None)

print(resultado_final)