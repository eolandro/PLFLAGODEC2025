##R001##
##10##
"""
Define con tus palabras el concepto de una closure
colocalo en una cadena y usa print()
"""
print("##R001##")
closure =("Un closure es una función hija que recuerda y accede a variables del ámbito de su función padre, \n"
          "incluso después de que el padre haya terminado de ejecutarse. \n"
          "Así, la función padre actúa como una fábrica que produce funciones especializadas")
print(closure)
print()
##R002##
##10##
"""
Define con tus palabras el concepto de un wrapper
colocalo en una cadena y usa print() 
"""
print("##R002##")
wrapper = ("Un wrapper tiene una función general y varios casos específicos. \n"
           "Las funciones especializadas (wrappers) siempre llaman a la función general, \n"
           "simplificando su uso para casos concretos")
print(wrapper)
print()
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
print("##R003##")
def coulomb(k,q1,q2,r):
    return (k * (q1 * q2) / r**2)

def coulomb_vacio(k,q1,q2,r):
    K = k
    return coulomb(K,q1,q2,r)

def coulomb_aire(k,q1,q2,r):
    K = k/1.0005
    return coulomb(K,q1,q2,r)

def coulomb_nacl(k,q1,q2,r):
    K = k/5.9
    return coulomb(K,q1,q2,r)

def coulomb_pvc(k,q1,q2,r):
    K=k/3.4
    return coulomb(K,q1,q2,r)

def coulomb_agua(k,q1,q2,r):
    K = k/81
    return coulomb(K,q1,q2,r)

def coulomb_gliderina(k,q1,q2,r):
    K = k/43
    return coulomb(K,q1,q2,r)

k = 9 * (10**9)
q1 = 3 * (10**-6)
q2 = -8 * (10**-6)
r = 2

vacio = coulomb_vacio(k,q1,q2,r)
print(f"En vacio: {vacio}")
aire = coulomb_aire(k,q1,q2,r)
print(f"En aire: {aire}")
nacl = coulomb_nacl(k,q1,q2,r)
print(f"En NaCl: {nacl}")
pvc = coulomb_pvc(k,q1,q2,r)
print(f"En Pvc: {pvc}")
agua = coulomb_agua(k,q1,q2,r)
print(f"En agua: {agua}")
glicerina = coulomb_gliderina(k,q1,q2,r)
print(f"En glicerina: {glicerina}")
print()
##R004##
##20##
"""
Elabora una parcialización de la función que resuelva la Ley de Coulomb.
Compruebe la parcializacion considerando que una carga de 3×10^-6 C 
se encuentra 2 m de una carga de -8×10^-6 C
"""
print("##R004##")

def Coulomb(K,q1,q2,r):
    return (K * (q1 * q2) / r ** 2)

def Pcoulomb(k,q1,q2,r):
    def calculoK(m):
        return coulomb(k/m,q1,q2,r)
    return calculoK

k = 9 * (10**9)
q1 = 3 * (10**-6)
q2 = -8 * (10**-6)
r = 2

calcou = Pcoulomb(k,q1,q2,r)

vacio = calcou(1)
print(f"En vacio: {vacio}")
aire = calcou(1.0005)
print(f"En aire: {aire}")
nacl = calcou(5.9)
print(f"En NaCl: {nacl}")
pvc = calcou(3.4)
print(f"En Pvc: {pvc}")
agua = calcou(81)
print(f"En agua: {agua}")
glicerina = calcou(43)
print(f"En glicerina: {glicerina}")
print()
##R005##
##20##
"""
Elabora una currificación de la función que resuelva la Ley de Coulomb.
Compruebe la currificación considerando que una carga de 3×10^-6 C 
se encuentra 2 m de una carga de -8×10^-6 C
"""
print("##R005##")
def Ccoulomb(q1):
    def carga2(q2):
        def distancia(r):
            def obtk(k):
                def medio(m):
                    K = k / m
                    return (K * (q1 * q2) / r**2)
                return medio
            return obtk
        return distancia
    return carga2

k = 9 * (10**9)
q1 = 3 * (10**-6)
q2 = -8 * (10**-6)
r = 2

Q1 = Ccoulomb(q1)
Q2 = Q1(q2)
dist = Q2(r)
medio = dist(k)

vacio = medio(1)
print(f"En vacio: {vacio}")
aire = medio(1.0005)
print(f"En aire: {aire}")
nacl = medio(5.9)
print(f"En NaCl: {nacl}")
pvc = medio(3.4)
print(f"En Pvc: {pvc}")
agua = medio(81)
print(f"En agua: {agua}")
glicerina = medio(43)
print(f"En glicerina: {glicerina}")



print()
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
print("##R006##")
def Clgrav_U(m1,m2,d):
    def calculo(g):
        return (g*(m1*m2)) / (d**2)
    return calculo

f = Clgrav_U(100,130,2)

luna = f(1.62)
print("luna:",luna)
marte = f(3.711)
print("marte:",marte)
europa = f(1.315)
print("europa:",europa)
encelado = f(0.113)
print("encelado:",encelado)
titan = f(1.352)
print("titan:",titan)
venus = f(8.87)
print("venus:",venus)
print()

##R007##
##20##
"""
Elabora una parcialización de una función que resuelva la ley de
la gravitacion universal.
Compruebe la parcializacion considerando dos masas de 100kg y 130kg 
a 2 metros de distancia
"""
print("##R007##")
def gravU_gen(d, m1,m2, g):
    return (g * (m1 * m2)) / (d ** 2)

def Pgrav_U(d,m1,m2):
    def calculo(g):
        return gravU_gen(d, m1, m2, g)
    return calculo


GravU = Pgrav_U(2,100,130)


luna = GravU(1.62)
print("luna:",luna)
marte = GravU(3.711)
print("marte:",marte)
europa = GravU(1.315)
print("europa:",europa)
encelado = GravU(0.113)
print("encelado:",encelado)
titan = GravU(1.352)
print("titan:",titan)
venus = GravU(8.87)
print("venus:",venus)
print()

##R008##
##20##
"""
Elabora una currificación de una función que resuelva la ley de
la gravitacion universal.
Compruebe la currificación considerando dos masas de 100kg y 130kg 
a 2 metros de distancia
"""
print("##R008##")
def Cgrav_U(d):
    def mas1(m1):
        def mas2(m2):
            mulmas = m1*m2
            def calculo(g):
                return (g*mulmas) / d**2
            return calculo
        return mas2
    return mas1


distancia = Cgrav_U(2)
masa1 = distancia(100)
masa2 = masa1(130)

luna = masa2(1.62)
print("luna:",luna)
marte = masa2(3.711)
print("marte:",marte)
europa = masa2(1.315)
print("europa:",europa)
encelado = masa2(0.113)
print("encelado:",encelado)
titan = masa2(1.352)
print("titan:",titan)
venus = masa2(8.87)
print("venus:",venus)

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
print()
##R010##
##35##
"""
Procesar data

Utilizando el patron de diseño composicion por funciones de orden
superior obten la salida correspondiente:
"""
print("##R010##")
def composicion_HOF(Valor):
    def nivel1(Func):
        R = Func(Valor)
        if R == None:
            return Valor
        return composicion_HOF(R)
    return nivel1

def fun0(S): #Busca separar argumentos por ,
    return S.split(',')     #Separamos argumentos por ,

def fun1(L): #Busca convertir el primer arg en int
    return [int(L[0])]+ L[1:]   #convertimos el primer elemento en Int

def fun2(IS): #Convertimmos los elementos apartir del 3ro en flotantes
    match IS:
        case [No,Nm,*cal]:
            a,b,c,d,e,f,g,h = cal
            return [No,Nm, float(a), float(b), float(c), float(d), float(e), float(f), float(g), float(h)]

def fun3(ISFl):
    match ISFl:
        case [No,Nm,*cal]:
            return [No,Nm,(sum(cal)/len(cal))*100] #calculo de promedio a partir de lista

R = "29590097,ROMAY TACITURNO RENE FERNANDA,0.7,1,1,1,1,1,1,0.7"

T = composicion_HOF(R)
T = T(fun0)
T = T(fun1)
T = T(fun2)
T = T(fun3) #...
R = T(lambda e: None)
print(R)
# [29590097,"ROMAY TACITURNO RENE FERNANDA",92.5]