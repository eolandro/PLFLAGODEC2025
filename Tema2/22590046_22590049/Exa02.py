##R001##
##10##
"""
Define con tus palabras el concepto de una closure
colocalo en una cadena y usa print() 
"""
print ("\n R001 \n")
closure = """Un closure es una función que captura y recuerda las variables de su entorno léxico,
incluso después de que ese entorno haya terminado su ejecución.
Esto significa que una función interna puede acceder a las variables definidas en la función externa,
aunque la función externa ya haya finalizado."""
print(closure)

print("")
##R002##
##10##
"""
Define con tus palabras el concepto de un wrapper
colocalo en una cadena y usa print() 
"""
print ("\n R002 \n")
wrapper = """Un wrapper es una función que envuelve otra función para modificar o extender su comportamiento,
sin cambiar su estructura interna. Se utiliza para agregar un funcionalidades como validaciones y
manejo de errores o control de acceso, manteniendo la lógica original intacta."""
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
print ("\n R003 \n")

def vacio():
    k0 = 9e9
    K = k0 / 1.0
    def fuerza(q1, q2, r):
        return K * (q1 * q2) / (r ** 2)
    return fuerza

def aire():
    k0 = 9e9
    K = k0 / 1.0005
    def fuerza(q1, q2, r):
        return K * (q1 * q2) / (r ** 2)
    return fuerza

def nacl():
    k0 = 9e9
    K = k0 / 5.9
    def fuerza(q1, q2, r):
        return K * (q1 * q2) / (r ** 2)
    return fuerza

def pvc():
    k0 = 9e9
    K = k0 / 3.4
    def fuerza(q1, q2, r):
        return K * (q1 * q2) / (r ** 2)
    return fuerza

def agua():
    k0 = 9e9
    K = k0 / 81.0
    def fuerza(q1, q2, r):
        return K * (q1 * q2) / (r ** 2)
    return fuerza

def glicerina():
    k0 = 9e9
    K = k0 / 43.0
    def fuerza(q1, q2, r):
        return K * (q1 * q2) / (r ** 2)
    return fuerza


coulomb_vacio     = vacio()
coulomb_aire      = aire()
coulomb_nacl      = nacl()
coulomb_pvc       = pvc()
coulomb_agua      = agua()
coulomb_glicerina = glicerina()

print("Fuerza en Vacío:     ", coulomb_vacio(3e-6, -8e-6, 2.0))
print("Fuerza en Aire:      ", coulomb_aire(3e-6, -8e-6, 2.0))
print("Fuerza en NaCl:      ", coulomb_nacl(3e-6, -8e-6, 2.0))
print("Fuerza en PVC:       ", coulomb_pvc(3e-6, -8e-6, 2.0))
print("Fuerza en Agua:      ", coulomb_agua(3e-6, -8e-6, 2.0))
print("Fuerza en Glicerina: ", coulomb_glicerina(3e-6, -8e-6, 2.0))


print ("\n R003 currying \n")

def coulomb(k):
    def fuerza(exp=2):
        def potencia(base, n):
            if n == 0:
                return 1
            return base * potencia(base, n - 1)
        return ((9 * (10 ** 9))/ k) * (3e-6 * -8e-6) / potencia(2, exp)
    return fuerza

coulomb_vacio = coulomb(1)
coulomb_aire = coulomb(1.0005)
coulomb_nacl = coulomb(5.9)
coulomb_pvc = coulomb(3.4)
coulomb_agua = coulomb(81)
coulomb_glicerina = coulomb(43)

print("Fuerza en Vacío:     ", coulomb_vacio())
print("Fuerza en Aire:      ", coulomb_aire())
print("Fuerza en NaCl:      ", coulomb_nacl())
print("Fuerza en PVC:       ", coulomb_pvc())
print("Fuerza en Agua:      ", coulomb_agua())
print("Fuerza en Glicerina: ", coulomb_glicerina())

##R004##
##20##
"""
Elabora una parcialización de la función que resuelva la Ley de Coulomb.
Compruebe la parcializacion considerando que una carga de 3×10^-6 C 
se encuentra 2 m de una carga de -8×10^-6 C
"""
print ("\n R004 \n")

def coulomb(K, q1, q2, r):
    return K * (q1 * q2) / (r ** 2)

def parcializar_coulomb(K):
    def con_cargas(q1, q2):
        def con_distancia(r):
            return coulomb(K, q1, q2, r)
        return con_distancia
    return con_cargas

coulomb_parcial = parcializar_coulomb(9e9)
f_con_cargas = coulomb_parcial(3e-6, -8e-6)
resultado = f_con_cargas(2.0)
print("Fuerza =", resultado)

##R005##
##20##
"""
Elabora una currificación de la función que resuelva la Ley de Coulomb.
Compruebe la currificación considerando que una carga de 3×10^-6 C 
se encuentra 2 m de una carga de -8×10^-6 C
"""
print ("\n R005 \n")
def coulomb_currificacion(K):
    def con_carga1(q1):
        def con_carga2(q2):
            def con_distancia(r):
                return (K * (q1 * q2)) / (r ** 2)
            return con_distancia
        return con_carga2
    return con_carga1
finalizacion = coulomb_currificacion(9e9)
resultado = finalizacion(3e-6)(-8e-6)(2.0)
print("Fuerza =", resultado)


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
print ("\n R006 \n")
def ley_gravedad(cuerpo):
    def calcular(m1, m2, d):
        g = 0  # valor por defecto
        if cuerpo == "Luna":
            g = 1.62
        elif cuerpo == "Marte":
            g = 3.711
        elif cuerpo == "Europa":
            g = 1.315
        elif cuerpo == "Encélado":
            g = 0.113
        elif cuerpo == "Titan":
            g = 1.352
        elif cuerpo == "Venus":
            g = 8.87

        return (g * m1 * m2) / (d ** 2)
    return calcular

print(ley_gravedad("Luna")(100, 130, 2))
print(ley_gravedad("Marte")(100, 130, 2))
print(ley_gravedad("Europa")(100, 130, 2))
print(ley_gravedad("Encélado")(100, 130, 2))
print(ley_gravedad("Titan")(100, 130, 2))
print(ley_gravedad("Venus")(100, 130, 2))

##R007##
##20##
"""
Elabora una parcialización de una función que resuelva la ley de
la gravitacion universal.
Compruebe la parcializacion considerando dos masas de 100kg y 120kg 
a 2 metros de distancia
"""
print ("\n R007 \n")
def gravedad(g,m1,m2,d):
    return (g * m1 * m2) / (d ** 2)


def stepl1(g):
    def stepl2(m1):
        def stepl3(m2):
            def stepl4(d):
                return (g * m1 * m2) / (d ** 2)
            return stepl4
        return stepl3
    return stepl2

print(stepl1(1.62)(100)(130)(2))
print(stepl1(3.711)(100)(130)(2))
print(stepl1(1.315)(100)(130)(2))
print(stepl1(0.113)(100)(130)(2))
print(stepl1(1.352)(100)(130)(2))
print(stepl1(8.87)(100)(130)(2))
##R008##
##20##
"""
Elabora una currificación de una función que resuelva la ley de
la gravitacion universal.
Compruebe la currificación considerando dos masas de 100kg y 120kg 
a 2 metros de distancia
"""
print ("\n R008 \n")
def paso1(g):
    def paso2(m1):
        resu1=g*m1
        def paso3(m2):
            resu2= resu1* m2
            def paso4(d):
                return resu2 / d**2
            return paso4
        return paso3
    return paso2
gravity = paso1(1.62)(100)(130)(2)
print(gravity)
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
print ("\n R009 \n")
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
print ("\n R0010 \n")
