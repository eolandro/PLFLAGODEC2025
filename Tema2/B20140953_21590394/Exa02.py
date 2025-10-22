##R001##
##10##
"""
Define con tus palabras el concepto de una closure
colocalo en una cadena y usa print() 
"""

def_closure = """Definición de closure:
1. Función de orden superior que tiene al menos un nivel 1.
2. Tienen una variable compartida (o al menos una) para todo su nivel 1.
3. Retorna una función (esta puede ser un parámetro o una función interna).
"""
print(def_closure)

##R002##
##10##
"""
Define con tus palabras el concepto de un wrapper
colocalo en una cadena y usa print() 
"""
def ejercicio_wrapper():
    return "Un wrapper es una función o estructura que envuelve otra función u " \
    "objeto para modificar, extender o controlar su comportamiento."

print(ejercicio_wrapper())

##R003##
##30##
"""
Ley de Coulomb
	
F = (K*(q1 * q2)) /r**2

k = 9 * (10**9) ((N m²) / C)

Valores de K en diferentes medios

Vacio ==> K = k
Aire  ==> K = k / 1.0005
NaCL  ==> K = k / 5.9
PVC  ==> K = k / 3.4
Agua  ==> K = k / 81
Glicerina  ==> K = k / 43

--Elabora 6 wrappers de la Ley de Coulomb para calcular la fuerza, 
entre dos cargas en una distancia determinada, correspondientes a los 6
medios diferentes presentados anteriormente.
Compruebe los wrappers considerando que una carga de 3×10^-6 C 
se encuentra 2 m de una carga de -8×10^-6 C

"""
def ley_coulomb(k_valor, q1, q2, r):
    return (k_valor * (q1 * q2)) / (r ** 2)

def coulomb_vacio(q1, q2, r):
    """Calcula la fuerza en el vacío"""
    return ley_coulomb(9 * (10 ** 9), q1, q2, r)

def coulomb_aire(q1, q2, r):
    """Calcula la fuerza en el aire"""
    return ley_coulomb((9 * (10 ** 9)) / 1.0005, q1, q2, r)


def coulomb_nacl(q1, q2, r):
    """Calcula la fuerza en NaCl"""
    return ley_coulomb((9 * (10 ** 9)) / 5.9, q1, q2, r)


def coulomb_pvc(q1, q2, r):
    """Calcula la fuerza en PVC"""
    return ley_coulomb((9 * (10 ** 9)) / 3.4, q1, q2, r)


def coulomb_agua(q1, q2, r):
    """Calcula la fuerza en agua"""
    return ley_coulomb((9 * (10 ** 9)) / 81, q1, q2, r)


def coulomb_glicerina(q1, q2, r):
    """Calcula la fuerza en glicerina"""
    return ley_coulomb((9 * (10 ** 9)) / 43, q1, q2, r)

def probar_todos(q1, q2, r):
    """
    Ejecuta las 6 funciones y retorna una tupla con los resultados.
    Se usa programación funcional (llamadas directas), sin bucles.
    """
    return (
        coulomb_vacio(q1, q2, r),
        coulomb_aire(q1, q2, r),
        coulomb_nacl(q1, q2, r),
        coulomb_pvc(q1, q2, r),
        coulomb_agua(q1, q2, r),
        coulomb_glicerina(q1, q2, r)
    )

resultado = probar_todos(3e-6, -8e-6, 2)

print("Fuerza en vacío:      ", resultado[0], "N")
print("Fuerza en aire:       ", resultado[1], "N")
print("Fuerza en NaCl:       ", resultado[2], "N")
print("Fuerza en PVC:        ", resultado[3], "N")
print("Fuerza en agua:       ", resultado[4], "N")
print("Fuerza en glicerina:  ", resultado[5], "N")




##R004##
##20##
"""
Elabora una parcialización de la función que resuelva la Ley de Coulomb.
Compruebe la parcializacion considerando que una carga de 3×10^-6 C 
se encuentra 2 m de una carga de -8×10^-6 C
"""

#General
def coulomb(k, q1, q2, r):
    return (k * q1 * q2) / (r * r)

#Parcial
def pCoulomb(q1):
    def nivel1(q2):
        def nivel2(r):
            return coulomb(8.9875517923e9, q1, q2, r)
        return nivel2
    return nivel1

#Comprobación
R = pCoulomb(3e-6)(-8e-6)(2)
print(R)


##R005##
##20##
"""
Elabora una currificación de la función que resuelva la Ley de Coulomb.
Compruebe la currificación considerando que una carga de 3×10^-6 C 
se encuentra 2 m de una carga de -8×10^-6 C
"""
#Constante de Coulomb
k = 9e9

#Función general
def ley_coulomb(q1, q2, r):
    return k * q1 * q2 / (r ** 2)

#Currificación (parcialización en niveles)
def pCoulomb(q1):
    def nivel1(q2):
        def nivel2(r):
            return ley_coulomb(q1, q2, r)
        return nivel2
    return nivel1

#Comprobación
q1= 3e-6
q2= -8e-6 
r= 2

# Aplicando currificación
F= pCoulomb(q1)(q2)(r)
print("\nLa fuerza de Coulomb es:", F, "N")



##R006##
##30##
"""
Ley de la Gravitacion universal

F = (G*(m1*m2)) / d**2

Aceleracion por Gravedad en diferentes lugares del sistema solar

Luna 1.62 m/s²
Marte 3.711 m/s²
Europa (Satelite de jupiter) 1.315 m/s²
Encélado 0.113 m/s²
Titan 1.352 m/s²
Venus 8.87 m/s²

Elabora un closure que dependiendo el nombre de astro, te retorne
la funcion con la gravedad adecuada

Comprueba cada caso del closure en los 6 astros considerando dos 
masas de 100kg y 130kg a 2 metros de distancia
"""
print("\t")
#Closure general
def f_g(g):
    def calculo(m1, m2, d):
        return (m1 * m2 * g) / (d ** 2)
    return calculo

#Closures para cada astro
luna= f_g(1.62)
marte= f_g(3.711)
europa= f_g(1.315)
encelado= f_g(0.113)
titan= f_g(1.352)
venus= f_g(8.87)

#Consideraciones
m1 = 100
m2 = 130
d  = 2

#Comprobaciones
print("La fuerza de gravedad en la Luna es de:", luna(m1, m2, d))
print("La fuerza de gravedad en Marte es de:", marte(m1, m2, d))
print("La fuerza de gravedad en Europa es de:", europa(m1, m2, d))
print("La fuerza de gravedad en Encelado es de:", encelado(m1, m2, d))
print("La fuerza de gravedad en Titan es de:", titan(m1, m2, d))
print("La fuerza de gravedad en Venus es de:", venus(m1, m2, d))


##R007##
##20##
"""
Elabora una parcialización de una función que resuelva la ley de
la gravitacion universal.
Compruebe la parcializacion considerando dos masas de 100kg y 130kg 
a 2 metros de distancia
"""
#General
def gravedad_general(m1, m2, d, g):
    return (m1 * m2 * g) / (d ** 2)

#Parcialización
def pgravedad(m1):
    def nivel1(m2):
        def nivel2(d):
            def nivel3(g):
                return gravedad_general(m1, m2, d, g)
            return nivel3
        return nivel2
    return nivel1

#Comprobación
R = pgravedad(100)(130)(2)(1.62)
print("\nLa fuerza de gravedad es:", R)

##R008##
##20##
"""
Elabora una currificación de una función que resuelva la ley de
la gravitacion universal.
Compruebe la currificación considerando dos masas de 100kg y 130kg 
a 2 metros de distancia
"""
#Función general con gravedad local
def ley_gravitacion_local(m1, m2, d, g):
    return m1 * m2 * g / (d ** 2)

#Currificación (parcialización en niveles)
def pGravitacion(m1):
    def nivel1(m2):
        def nivel2(d):
            def nivel3(g):
                return ley_gravitacion_local(m1, m2, d, g)
            return nivel3
        return nivel2
    return nivel1

#Comprobación
m1 = 100
m2 = 130
d  = 2
g  = 1.62  # gravedad de la Luna

#Currificación
F = pGravitacion(m1)(m2)(d)(g)
print("\nLa fuerza de gravedad es:", F)


##R009##
##50##
"""
Recuerda que todos los ejercicios son opcionales ustedes elegen que 
resolver

Para este ejercicio debes ver prime este video

https://www.youtube.com/watch?v=Ku0DRyRjfkk
https://youtu.be/Ku0DRyRjfkk

Lo que ven es un ejemplo de malware muy basico en python,
No quiero que repliquen lo que sucede en el video, pero si notan es 
posible bajar bibliotecas desde pip y pegarlas en una carpeta.

Luego se pueden alterar dichas bibliotecas maliciosamente.
adjunto a este examen hay un par de archivos
XLibrary.py y main.py los cuales funcionan correctamente.

altere el archivo XLibrary.py con un decorador
que de manera aleatoria altere el resultado de <collatz>
agregando el valor -1.5 al final de la lista.
Por lo que el 50% de las veces se modifique la lista y 50% no lo haga.

Espero este codigo les sirva

import random
Moneda = [True,False]
R = random.choice(Moneda)
print(R)
# True
R = random.choice(Moneda)
print(R)
# True
R = random.choice(Moneda)
print(R)
# False
"""
##R010##
##35##
"""
Procesar data

Utilizando el patron de diseño composicion por funciones de orden
superior obten la salida correspondiente:

R = "29590097,ROMAY TACITURNO RENE FERNANDA,0.7,1,1,1,1,1,1,0.7"

T = composicion_HOF(R)
T = T(fun0)
T = T(fun1)
T = T(fun2)
T = T(fun3) #...
R = T(lambda e: None)
print(R)
# [29590097,"ROMAY TACITURNO RENE FERNANDA",92.5]

"""

def fun0(cadena):
    def aux(cad, actual, resultado):
        if cad == "":
            return resultado + [actual]
        cabeza, *resto = cad
        if cabeza == ",":
            return aux("".join(resto), "", resultado + [actual])
            '''
            .join para concatenar los elementos de un iterable (como una lista) 
            en una sola cadena, insertando una cadena separadora entre cada uno
            '''
        else:
            return aux("".join(resto), actual + cabeza, resultado)
    return aux(cadena, "", [])
def fun1(lista):
    def aux(xs, es_primero):
        if xs == []:
            return []
        cabeza, *resto = xs
        if es_primero:
            return [int(cabeza)] + aux(resto, False)
        else:
            return [cabeza] + aux(resto, False)
    return aux(lista, True)


def fun2(lista):
    def aux(xs, contador):
        if xs == []:
            return []
        cabeza, *resto = xs
        if contador < 2:
            return [cabeza] + aux(resto, contador + 1)
        else:
            return [float(cabeza)] + aux(resto, contador + 1)
    return aux(lista, 0)

def fun3(lista):
    numero, nombre, *califs = lista

    def sumar(xs):
        if xs == []:
            return 0
        cabeza, *resto = xs
        return cabeza + sumar(resto)

    def contar(xs):
        if xs == []:
            return 0
        cabeza, *resto = xs
        return 1 + contar(resto)

    total = sumar(califs)
    n = contar(califs)
    promedio = (total / n) * 100 if n != 0 else 0
    return [numero, nombre, round(promedio, 1)]

# Cadena de ejemplo
P = "29590097,ROMAY TACITURNO RENE FERNANDA,0.7,1,1,1,1"

# 1️⃣ Separar cadena en lista
r0 = fun0(P)
print("fun0:", r0)

# 2️⃣ Convertir primer elemento a entero
r1 = fun1(r0)
print("fun1:", r1)

# 3️⃣ Convertir calificaciones a float
r2 = fun2(r1)
print("fun2:", r2)

# 4️⃣ Calcular promedio y generar salida final
r3 = fun3(r2)
print("fun3:", r3)
