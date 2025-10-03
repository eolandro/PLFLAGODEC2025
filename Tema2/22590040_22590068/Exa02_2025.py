#Abelardo Garduño Fuertes 22590040
#Alejandro Pérez Piña 22590068

##R001##
##10##

#Define con tus palabras el concepto de una closure colocalo en una cadena y usa print() 
respuesta1="\n Un closure es una función de orden superior que tiene al menos un nivel, tiene una variable compartida entre su nivel y retorna una función"
print(respuesta1)

#----------------------------------------------------------------------------------------

##R002##
##10##

#Define con tus palabras el concepto de un wrapper colocalo en una cadena y usa print() 
respuesta2="\n Los wrappers son funciones que envuelven otras funciones con el objetivo de agregarle otro comportamiento sin modificar el código de la función original\n"
print(respuesta2)

#-----------------------------------------------------------------------------------------------
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
se encuentra 2 m de una carga de -8×10^-6 C"""

def coulumb(K,q1,q2,r):
    return (K*(q1*q2))/(r**2)

def coulumbVacio(q1,q2,r):
    k=9*(10**9)
    return coulumb(k,q1,q2,r)

def coulumbAire(q1,q2,r):
    k=(9*(10**9))/1.0005
    return coulumb(k,q1,q2,r)

def coulumbNaCl(q1,q2,r):
    k=(9*(10**9))/5.9
    return coulumb(k,q1,q2,r)

def coulumbPVC(q1,q2,r):
    k=(9*(10**9))/3.4
    return coulumb(k,q1,q2,r)

def coulumbAgua(q1,q2,r):
    k=(9*(10**9))/81
    return coulumb(k,q1,q2,r)

def coulumbGlicerina(q1,q2,r):
    k=(9*(10**9))/43
    return coulumb(k,q1,q2,r)

print("Ley de Coulumb para vacio: ",coulumbVacio(3e-6,-8e-6,2))
print("Ley de Coulumb para aire: ",coulumbAire(3e-6,-8e-6,2))
print("Ley de Coulumb para NaCl: ",coulumbNaCl(3e-6,-8e-6,2))
print("Ley de Coulumb para PVC: ",coulumbPVC(3e-6,-8e-6,2))
print("Ley de Coulumb para agua: ",coulumbAgua(3e-6,-8e-6,2))
print("Ley de Coulumb para glicerina: ", coulumbGlicerina(3e-6,-8e-6,2))

#---------------------------------------------------------------------------------------------
##R004##
##20##
"""
Elabora una parcialización de la función que resuelva la Ley de Coulomb.
Compruebe la parcializacion considerando que una carga de 3×10^-6 C 
se encuentra 2 m de una carga de -8×10^-6 C"""

def coulumb(K,q1,q2,r):
    return (K*(q1*q2))/r**2

def coulumbN0(K):
    def coulumbN1(q1):
        def coulumbN2(q2):
            def coulumbN3(r):
                return coulumb(K,q1,q2,r)
            return coulumbN3
        return coulumbN2
    return coulumbN1

R=coulumbN0((9*(10**9)))(3e-6)(-8e-6)(2)
print("\n Ley de Coulumb con parcialización para vacio: ", R)

#----------------------------------------------------------------------------------------------
##R005##
##20##
"""
Elabora una currificación de la función que resuelva la Ley de Coulomb.
Compruebe la currificación considerando que una carga de 3×10^-6 C 
se encuentra 2 m de una carga de -8×10^-6 C
"""

def coulumbN0(K):
    def coulumbN1(q1):
        F1=K
        def coulumbN2(q2):
            F2=(F1*(q1*q2))
            def coulumbN3(r):
                return F2/(r**2)
            return coulumbN3
        return coulumbN2
    return coulumbN1

R=coulumbN0((9*(10**9)))(3e-6)(-8e-6)(2)
print("\n Ley de Coulumb con currificación para vacio: ", R)

#------------------------------------------------------------------------------------------------
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
masas de 100kg y 130kg a 2 metros de distancia"""

def leyGravitacion(astro):
    def calculo(m1,m2,d):
        if astro=="luna":
            gravedad=1.62
            return (gravedad*(m1*m2))/(d**2)
        if astro=="marte":
            gravedad=3.711
            return (gravedad*(m1*m2))/(d**2)
        if astro=="europa":
            gravedad=1.315
            return (gravedad*(m1*m2))/(d**2)
        if astro=="encelado":
            gravedad=0.113
            return (gravedad*(m1*m2))/(d**2)
        if astro=="titan":
            gravedad=1.352
            return (gravedad*(m1*m2))/(d**2)
        if astro=="venus":
            gravedad=8.87
            return (gravedad*(m1*m2))/(d**2)
    return calculo

luna=leyGravitacion("luna")
res1=luna(100,130,2)
print("\n La fuerza de gravedad en la luna es de: ",res1)

marte=leyGravitacion("marte")
res2=marte(100,130,2)
print(" La fuerza de gravedad en marte es de: ",res2)

europa=leyGravitacion("europa")
res3=europa(100,130,2)
print(" La fuerza de gravedad en europa es de: ",res3)

encelado=leyGravitacion("encelado")
res4=encelado(100,130,2)
print(" La fuerza de gravedad en encelado es de: ",res4)

titan=leyGravitacion("titan")
res5=titan(100,130,2)
print(" La fuerza de gravedad en titan es de: ",res5)

venus=leyGravitacion("venus")
res6=venus(100,130,2)
print(" La fuerza de gravedad en venus es de: ",res6)

#------------------------------------------------------------------------------------------------

##R007##
##20##
"""
Elabora una parcialización de una función que resuelva la ley de
la gravitacion universal.
Compruebe la parcializacion considerando dos masas de 100kg y 130kg 
a 2 metros de distancia"""

def leyGravitacion(g,m1,m2,d):
    return (g*(m1*m2))/(d**2)

def leyGravitacionN0(g):
    def leyGravitacionN1(m1):
        def leyGravitacionN2(m2):
            def leyGravitacionN3(d):
                return leyGravitacion(g,m1,m2,d)
            return leyGravitacionN3
        return leyGravitacionN2
    return leyGravitacionN1

resultado1=leyGravitacionN0(1.62)(100)(130)(2)
print("\n La fuerza de gravedad en la luna es de: ",resultado1)

#------------------------------------------------------------------------------------------------
##R008##
##20##
"""
Elabora una currificación de una función que resuelva la ley de
la gravitacion universal.
Compruebe la currificación considerando dos masas de 100kg y 130kg 
a 2 metros de distancia"""

def leyGravitacionN0(m1):
    def leyGravitacionN1(m2):
        m=m1*m2
        def leyGravitacionN2(g):
            r=g*m
            def leyGravitacionN3(d):
                return (r)/(d**2)
            return leyGravitacionN3
        return leyGravitacionN2
    return leyGravitacionN1

ans1=leyGravitacionN0(100)(130)(1.62)(2)
print("\n La fuerza de gravedad en la luna es de: ",ans1,"\n")

#------------------------------------------------------------------------------------------------
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
#------------------------------------------------------------------------------------------------
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

R = "29590097,ROMAY TACITURNO RENE FERNANDA,0.7,1,1,1,1,1,1,0.7"

def composicion_HOF(valor):
    def nivel1(func):
        R=func(valor)
        if R==None:
            return valor
        return composicion_HOF(R)
    return nivel1

fun0=lambda s:s.split(",")
def fun1(L):
    nc,n,n1,n2,n3,n4,n5,n6,n7,n8=L
    return [int(nc),str(n),float(n1),float(n2),float(n3),
            float(n4),float(n5),float(n6),float(n7),float(n8)]
        

def fun2(L):
    match L:
        case[P]:
            return P*100
        case[int(P),str(S),*R]:
            return [P,S,fun2(R)]
        case[P,*R]:
            return (P*100)+fun2(R)

def fun3(L):
    match L:
        case[int(P),str(S),float(U)]:
                return [P,S,(U/8)]
            
T=composicion_HOF(R)
T=T(fun0)
T=T(fun1)
T=T(fun2)
T=T(fun3)
R = T(lambda e: None)
print(R)


