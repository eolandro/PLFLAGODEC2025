## EXa02 ##

#//////////////////////////////////////////////////////////////#

##R001##
##10##

definicion_closure = """
Un closure o cierre es una funcion interna que logra capturar 
y recordar las variables de la funcion externa en la que fue creada. 
Permite que la funcion interna siga accediendo a esas variables 
compartidas incluso despues de que la funcion externa haya 
terminado de ejecutarse y retorne la funcion interna.
"""
print(definicion_closure)

#//////////////////////////////////////////////////////////////#

##R002##
##10##

definicion_wrapper = """
Un Wrapper o envoltorio es una funcion interna creada dentro de un decorador 
o una funcion de orden superior. Su proposito es envolver a la funcion original, 
añadiendole codigo o logica adicional sin modificar el codigo de la funcion original. 
Es el encargado de ejecutar tanto la nueva logica como la funcion envuelta.
"""
print(definicion_wrapper)

#//////////////////////////////////////////////////////////////#

##R003##
##30##

CONSTANTE_K = 9.0 * (10**9)

def coulomb_wrapper(epsilon_r):
    """Closure que genera la funcion de Coulomb para un medio dado"""
    def calcular(q1, q2, r):
        K_medio = CONSTANTE_K / epsilon_r
        return (K_medio * (q1 * q2)) / (r**2)
    return calcular

vacio     = coulomb_wrapper(1.0)
aire      = coulomb_wrapper(1.0005)
nacl      = coulomb_wrapper(5.9)
pvc       = coulomb_wrapper(3.4)
agua      = coulomb_wrapper(81.0)
glicerina = coulomb_wrapper(43.0)

q1 = 3.0 * (10**-6)
q2 = -8.0 * (10**-6)
r  = 2.0

def interpretar(F):
    """Devuelve el valor con 12 decimales y si es atractiva/repulsiva"""
    if F < 0:
        return f"{F:.12f} N  (atractiva)"
    return f"{F:.12f} N  (repulsiva)"

print("--------------------------------------------------")
print(f"Cargas: q1 = {q1:.2e} C, q2 = {q2:.2e} C")
print(f"Distancia: r = {r} m")
print("--------------------------------------------------")
print("Fuerza en Vacio:     ", interpretar(vacio(q1,q2,r)))
print("Fuerza en Aire:      ", interpretar(aire(q1,q2,r)))
print("Fuerza en NaCl:      ", interpretar(nacl(q1,q2,r)))
print("Fuerza en PVC:       ", interpretar(pvc(q1,q2,r)))
print("Fuerza en Agua:      ", interpretar(agua(q1,q2,r)))
print("Fuerza en Glicerina: ", interpretar(glicerina(q1,q2,r)))
print("--------------------------------------------------")

#//////////////////////////////////////////////////////////////#

##R004##
##20##

CONSTANTE_K_VACIO = 9.0 * (10**9)

def coulomb_original(K, q1, q2, r):
    return (K * (q1 * q2)) / (r**2)

def coulomb_parcial_q1(q1):
    """Parcializa la funcion de Coulomb fijando q1."""
    def nivel1_q2(q2):
        def nivel2_r(r):
            return coulomb_original(CONSTANTE_K_VACIO, q1, q2, r)
        return nivel2_r
    return nivel1_q2

def interpretar(F):
    """Devuelve el valor con 12 decimales y si es atractiva/repulsiva."""
    if F < 0:
        return f"{F:.12f} N  (atractiva)"
    return f"{F:.12f} N  (repulsiva)"

Q1 = 3.0 * (10**-6)
Q2 = -8.0 * (10**-6)
R  = 2.0

F_parcial = coulomb_parcial_q1(Q1)(Q2)(R)

print("--------------------------------------------------")
print("Uso de Parcializacion (Currying) para Ley de Coulomb")
print(f"Cargas: q1 = {Q1:.2e} C, q2 = {Q2:.2e} C")
print(f"Distancia: r = {R} m")
print("--------------------------------------------------")
print(f"Fuerza calculada (F(q1)(q2)(r)): {interpretar(F_parcial)}")

fuerza_fija_q1 = coulomb_parcial_q1(Q1)
print("\nEjemplo de Parcializacion avanzada:")
print(f"Función fija para q1 ({Q1:.2e}) creada.")
F_parcial_ejemplo = fuerza_fija_q1(Q2)(R)
print(f"Resultado usando funcion parcial: {interpretar(F_parcial_ejemplo)}")
print("--------------------------------------------------")

#//////////////////////////////////////////////////////////////#

##R005##
##20##

CONSTANTE_K = 9.0 * (10**9)

def coulomb_curried(K):
    """Currificacion completa de la Ley de Coulomb"""
    def nivel1_q1(q1):
        def nivel2_q2(q2):
            def nivel3_r(r):
                return (K * (q1 * q2)) / (r**2)
            return nivel3_r
        return nivel2_q2
    return nivel1_q1

def interpretar(F):
    """Devuelve el valor con 12 decimales y la naturaleza de la fuerza"""
    if F < 0:
        return f"{F:.12f} N  (atractiva)"
    return f"{F:.12f} N  (repulsiva)"

K_VACIO = CONSTANTE_K
Q1 = 3.0 * (10**-6)
Q2 = -8.0 * (10**-6)
R  = 2.0

F_curried = coulomb_curried(K_VACIO)(Q1)(Q2)(R)

print("--------------------------------------------------")
print("Uso de Currificación para la Ley de Coulomb")
print("Forma: F(K)(q1)(q2)(r)")
print("Medio: Vacio")
print(f"Cargas: q1 = {Q1:.2e} C, q2 = {Q2:.2e} C")
print(f"Distancia: r = {R} m")
print("--------------------------------------------------")
print("Fuerza calculada:", interpretar(F_curried))
print("--------------------------------------------------")

#//////////////////////////////////////////////////////////////#

##R006##
##30##

G = 6.67430 * (10**-11)

def fuerza_gravitacional(nombre, g_astro):
    """Closure que guarda el astro y su gravedad asociada"""
    def calcular(m1, m2, d):
        return (G * m1 * m2) / (d**2)
    return calcular

luna     = fuerza_gravitacional("Luna", 1.62)
marte    = fuerza_gravitacional("Marte", 3.711)
europa   = fuerza_gravitacional("Europa", 1.315)
encelado = fuerza_gravitacional("Encelado", 0.113)
titan    = fuerza_gravitacional("Titan", 1.352)
venus    = fuerza_gravitacional("Venus", 8.87)

M1 = 100.0
M2 = 130.0
D  = 2.0

def interpretar(F):
    """Imprime con 12 decimales exactos"""
    return f"{F:.12f} N  (atraccion universal)"

print("--------------------------------------------------")
print("Closure para Ley de Gravitacion Universal")
print(f"Masas: m1 = {M1} kg, m2 = {M2} kg")
print(f"Distancia: d = {D} m")
print("Constante G: 6.67430e-11 N·m²/kg²")
print("--------------------------------------------------")
print("Fuerza en Luna:     ", interpretar(luna(M1, M2, D)))
print("Fuerza en Marte:    ", interpretar(marte(M1, M2, D)))
print("Fuerza en Europa:   ", interpretar(europa(M1, M2, D)))
print("Fuerza en Encelado: ", interpretar(encelado(M1, M2, D)))
print("Fuerza en Titan:    ", interpretar(titan(M1, M2, D)))
print("Fuerza en Venus:    ", interpretar(venus(M1, M2, D)))
print("--------------------------------------------------")

#//////////////////////////////////////////////////////////////#

##R007##
##20##

G = 6.67430 * (10**-11)

def gravOri(G, m1, m2, d):
    return (G * m1 * m2) / (d**2)

def gravParM1(m1):
    """Parcializa la funcion fijando m1."""
    def n1M2(m2):
        def n2D(d):
            return gravOri(G, m1, m2, d)
        return n2D
    return n1M2

m1 = 100.0
m2 = 130.0
d = 2.0

Fpar = gravParM1(m1)(m2)(d)

print("--------------------------------------------------")
print("Uso de Parcializacion (Currying) para Ley de Gravitacion")
print(f"Masas: m1 = {m1} kg, m2 = {m2} kg")
print(f"Distancia: d = {d} m")
print(f"Constante G: {G:.2e} N·m²/kg²")
print("--------------------------------------------------")
print(f"Fuerza calculada (F(m1)(m2)(d)): {Fpar:.12f} N")

fij = gravParM1(m1)(m2)
print("\nEjemplo de Parcializacion avanzada (fijando m1 y m2):")
print("Funcion parcial creada.")
FparEj = fij(d)
print(f"Resultado usando funcion parcial: {FparEj:.12f} N")
print("--------------------------------------------------")


#//////////////////////////////////////////////////////////////#

##R008##
##20##

G = 6.67430 * (10**-11)

def gravCur(G):
    """Función curried de la Ley de Gravitacion Universal"""
    def n1m1(m1):
        def n2m2(m2):
            def n3d(d):
                return (G * m1 * m2) / (d**2)
            return n3d
        return n2m2
    return n1m1

m1 = 100.0
m2 = 130.0
d = 2.0

Fcur = gravCur(G)(m1)(m2)(d)

print("--------------------------------------------------")
print("Uso de Currificacion pura para Ley de Gravitacion")
print("Forma: F(G)(m1)(m2)(d)")
print(f"Masas: m1 = {m1} kg, m2 = {m2} kg")
print(f"Distancia: d = {d} m")
print(f"Constante G: {G:.12f} N·m²/kg²")
print("--------------------------------------------------")
print(f"Fuerza calculada: {Fcur:.12f} N")
print("--------------------------------------------------")


#//////////////////////////////////////////////////////////////#
##R009##
##50##

#XLibrary.py

import random

def al_alea(Func, p=0.5):
    def decorado(N):
        R = Func(N)
        if R == None:
            return R
        if random.random() < p:
            return R + [-1.5]
        return R
    return decorado

def collatz(N):
	if N == 1:
		return [N]
	if N % 2 == 0:
		return [N] + collatz(N/2)
	else:
		return [N] + collatz((N*3) + 1)

collatz = al_alea(collatz, 0.5)



#//////////////////////////////////////////////////////////////#

##R010##
##35##

def composicion_HOF(Valor):
    """Implementa composicion recursiva de funciones (estilo profesor)."""
    def nivel1(Func):
        R = Func(Valor)
        if R is None:   
            return Valor
        return composicion_HOF(R)   
    return nivel1

def fun0(R_str):
    """Divide la cadena inicial en lista de 10 elementos"""
    return R_str.split(',')

def fun1(L):
    """Convierte las calificaciones y calcula la nota final (%)"""
    ID_str, Nombre, c1, c2, c3, c4, c5, c6, c7, c8 = L
    suma = float(c1)+float(c2)+float(c3)+float(c4)+float(c5)+float(c6)+float(c7)+float(c8)
    nota_final = (suma / 8.0) * 100.0
    return [ID_str, Nombre, nota_final]

def fun2(L):
    """Convierte el ID a entero"""
    ID_str, Nombre, Nota = L
    return [int(ID_str), Nombre, Nota]

def fun3(L):
    """Funcion identidad para continuar el flujo"""
    return L

R_INICIAL = "29590097,ROMAY TACITURNO RENE FERNANDA,0.7,1,1,1,1,1,1,0.7"

T = composicion_HOF(R_INICIAL)
T = T(fun0)
T = T(fun1)
T = T(fun2)
T = T(fun3)

R_FINAL = T(lambda e: None)

print("--------------------------------------------------")
print("Procesamiento de Data con Composicion HOF")
print("Entrada:", R_INICIAL)
print("Salida final:", R_FINAL)
print("--------------------------------------------------")



