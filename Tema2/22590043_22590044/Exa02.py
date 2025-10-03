##R001##
##10##
"""
Define con tus palabras el concepto de una closure
colocalo en una cadena y usa print() 
"""
print('---Esejercico 1:---')
titulo="Closure"
closure="Es una funcion interna que se encarga de recordar variables de la funcion externa aunque ya haya terminado"
print(titulo)
print(closure)


##R002##
##10##
"""
Define con tus palabras el concepto de un wrapper
colocalo en una cadena y usa print() 
"""
print('---Esejercico 2:---')
titulo="Wrapper"
wrapper = "Es una funcion que envuelve otra funcion para modificar o extender su comportamiento"

print(titulo)
print(wrapper)
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
def coulomb(K, q1, q2, r):
    return (K * (q1 * q2)) / r**2

def vacio(q1, q2, r):
    K = 9 * (10**9)
    return coulomb(K, q1, q2, r)

def aire(q1, q2, r):
    K = 9 * (10**9) / 1.0005
    return coulomb(K, q1, q2, r)

def NaCL(q1, q2, r):
    K = 9 * (10**9) / 5.9
    return coulomb(K, q1, q2, r)

def PVC(q1, q2, r):
    K = 9 * (10**9) / 3.4
    return coulomb(K, q1, q2, r)

def agua(q1, q2, r):
    K = 9 * (10**9) / 81
    return coulomb(K, q1, q2, r)

def glicerina(q1, q2, r):
    K = 9 * (10**9) / 43
    return coulomb(K, q1, q2, r)

q1 = 3 * (10**-6)
q2 = -8 * (10**-6)
r = 2
print('---Esejercico 3:---')
print(f'Vacio:     {vacio(q1, q2, r)} N')
print(f'Aire:      {aire(q1, q2, r)} N') 
print(f'NaCL:      {NaCL(q1, q2, r)} N')
print(f'PVC:       {PVC(q1, q2, r)} N')
print(f'Agua:      {agua(q1, q2, r)} N')
print(f'Glicerina: {glicerina(q1, q2, r)} N')





##R004##
##20##
"""
Elabora una parcialización de la función que resuelva la Ley de Coulomb.
Compruebe la parcializacion considerando que una carga de 3×10^-6 C 
se encuentra 2 m de una carga de -8×10^-6 C
"""
# Función general de Coulomb
def coulomb(K, q1, q2, r):
    return (K * q1 * q2) / (r**2)

# Parcialización sobre K
def parcializacion(K):
    def nivel1(q1):
        def nivel2(q2):
            def nivel3(r):
                return coulomb(K, q1, q2, r)
            return nivel3
        return nivel2
    return nivel1

# Valores de K en diferentes medios
#k = 9 * (10**9)   # vacío
K = 9 * (10**9) / 1.0005  # aire
#K = 9 * (10**9) / 5.9     # NaCL
#K = 9 * (10**9) / 3.4     # PVC
#K = 9 * (10**9) / 81      # agua
#K = 9 * (10**9) / 43      # glicerina
q1 = 3e-6         # Carga 1
q2 = -8e-6        # Carga 2
r  = 2            # Distancia

# Uso de la parcialización
r0 = parcializacion(K)   # fija K
r1 = r0(q1)              # fija q1
r2 = r1(q2)              # fija q2
resultado = r2(r)        # fija r

# Resultado
print('--- Ejercicio 4 ---')
print(f'Parcialización: {resultado} N')

##R005##
##20##
"""
Elabora una currificación de la función que resuelva la Ley de Coulomb.
Compruebe la currificación considerando que una carga de 3×10^-6 C 
se encuentra 2 m de una carga de -8×10^-6 C
"""

def coulomb(K, q1, q2, r):
    return (K * q1 * q2) / (r**2)

# -------------------------------
# Currificación SIN lambda
def currificacion(K):
    def nivel1(q1):
        def nivel2(q2):
            def nivel3(r):
                return coulomb(K, q1, q2, r)
            return nivel3
        return nivel2
    return nivel1

# -------------------------------
# Valores
k = 9 * (10**9)   # Constante de Coulomb en el vacío
q1 = 3e-6         # Carga 1
q2 = -8e-6        # Carga 2
r  = 2            # Distancia

# -------------------------------
# Uso de la currificación
curri = currificacion(k)    # fija K
nivel1 = curri(q1)          # fija q1
nivel2 = nivel1(q2)         # fija q2
resultado = nivel2(r)       # fija r

# -------------------------------
# Resultado
print('--- Ejercicio 5 ---')
print(f'Currificación: {resultado} N')


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
def leyGravitacion(astro):
    def calculo(m1, m2, d):
        G = 6.67430e-11
        match astro:
            case "luna":
                gravedad = 1.62
            case "marte":
                gravedad = 3.711
            case "europa":
                gravedad = 1.315
            case "encelado":
                gravedad = 0.113
            case "titan":
                gravedad = 1.352
            case "venus":
                gravedad = 8.87
            case _:
                return None  # Astro no reconocido
        return (G * gravedad * (m1 * m2)) / (d ** 2)
    return calculo

# Prueba para los 6 astros
m1 = 100
m2 = 130
d = 2

print("---Ejercicio 6---")
print("Luna:", leyGravitacion("luna")(m1, m2, d), "N")
print("Marte:", leyGravitacion("marte")(m1, m2, d), "N")
print("Europa:", leyGravitacion("europa")(m1, m2, d), "N")
print("Encélado:", leyGravitacion("encelado")(m1, m2, d), "N")
print("Titan:", leyGravitacion("titan")(m1, m2, d), "N")
print("Venus:", leyGravitacion("venus")(m1, m2, d), "N")

##R007##
##20##
"""
Elabora una parcialización de una función que resuelva la ley de
la gravitacion universal.
Compruebe la parcializacion considerando dos masas de 100kg y 130kg 
a 2 metros de distancia

"""
def leyGravitacionUniversal():
    def conG(G):
        def conM1(m1):
            def conM2(m2):
                def conD(d):
                    return (G * m1 * m2) / (d ** 2)
                return conD
            return conM2
        return conM1
    return conG

# Prueba de parcialización
print("---Ejercicio 7---")
print("---Parcialización Ley de Gravitación Universal---")
resultado = leyGravitacionUniversal()(6.67430e-11)(100)(130)(2)
print("Resultado:", resultado, "N")

##R008##
##20##
"""
Elabora una currificación de una función que resuelva la ley de
la gravitacion universal.
Compruebe la currificación considerando dos masas de 100kg y 130kg 
a 2 metros de distancia

"""
def currificacion_ley_gravitacion_args():
    def f(G):
        def g(m1):
            def h(m2):
                def i(d):
                    return (G * m1 * m2) / (d ** 2)
                return i
            return h
        return g
    return f

# Ejemplo de uso
print('---Ejercicio 8:---')
resultado = currificacion_ley_gravitacion_args()(6.67430e-11)(100)(130)(2)
print("---Currificación con función args---")
print("Resultado:", resultado, "N")

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
def composicion_HOF(valor):
    def nivel1(composicion):
        resultado = composicion(valor)
        if resultado is None:
            return valor
        return composicion_HOF(resultado)
    return nivel1

def fun0(L):
    match L.split(','):
        case [a, b, *calificaciones]:
            def convertir(lista):
                if not lista:
                    return []
                return [float(lista[0])] + convertir(lista[1:])
            return [a, b] + convertir(calificaciones)
        
def fun1(L):
    a, b, *calificaciones = L
    Promedio = sum(calificaciones) / len(calificaciones)
    return [a, b, Promedio]

def fun2(L):
    a, b, c = L
    return [a, b, c]

def fun3(L):
    a, b, c = L
    c = round(c, 1)
    return [a, b, c]

l = "29590097,ROMAY TACITURNO RENE FERNANDA,0.7,1,1,1,1,1,1,0.7"
T = composicion_HOF(l)
T = T(fun0)
T = T(fun1)
T = T(fun2)
T = T(fun3)
R = T(lambda e: None)
print('---Esejercico 10:---')
print(R)
# [29590097,"ROMAY TACITURNO RENE FERNANDA",92.5]