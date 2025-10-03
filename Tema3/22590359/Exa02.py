##R001##
##10##
"""
Define con tus palabras el concepto de una closure
colocalo en una cadena y usa print()
"""
cadena_R001 = '''
    CLOSURE: 
        1. Es una función de orden SUPERIOR que tiene al menos un nivel 1.
        2. Tiene al menos una variable compartida para todo su nivel 1.
        3. Retorna una funcion.

    EJEMPLO:
        def impuesto(Tasa): <---- Función de orden SUPERIOR.
            def aplicacion(M): <- Función de nivel 1.
                if Tasa < 1:   <- Comprueba si la tasa la envian como 16 o 0.16 por ejemplo.
                    return M*(1+Tasa) <----- 0.16
                return M *(1+(Tasa /100)) <- 16
            return aplicacion <-- Retorna la función.

        iva16 = impuesto(16) <--- Esta es una función de donde se obtiene Tasa.

        print(f"$100 con iva 16 es: {iva16(100) <-- Esta es la función retornada pero aplicada a 100}")

        iva8 = impuesto(8) <--- Funcion donde se le proporciona la Tasa.
        print(f"$90 con iva 8 es: {iva8(90)   <-- Esta es la función retornada pero aplicada a 90}")
        
        '''
print(" ##R001## ".center(120,"-"))
print(cadena_R001)
##R002##
##10##
"""
Define con tus palabras el concepto de un wrapper
colocalo en una cadena y usa print() 
"""
cadena_R002 = '''
    WRAPPER:
        1. Un wrapper es una función que envuelve a otra función para especializar o modificar su comportamiento.
        2. Es una especialización de una función general.
        3. Reutiliza la función general con parámetros específicos.
        4. Mantiene la misma interfaz pero con comportamiento especializado.
        
    EJEMPLO:
        FUNCIÓN GENERAL
            def impuesto_no(M, T):
                return M * (T + 1.0)

        WRAPPERS
            def iva16(M):
                return impuesto_no(M, 0.16) <-- Especialización para IVA 16

            def iva8(M):
                return impuesto_no(M, 0.08) <-- Especialización para IVA 8
            
        '''
print(" ##R002## ".center(120,"-"))
print(cadena_R002)
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
print(" ##R003## ".center(120,"-"))
def ley_coulomb_general(q1, q2, r, k_medio):
    return (k_medio * (q1 * q2)) / (r**2)

def fuerza_vacio(q1, q2, r):
    k = 9*10**9
    return ley_coulomb_general(q1, q2, r, k)

def fuerza_aire(q1, q2, r):
    k = 9*10**9 / 1.0005
    return ley_coulomb_general(q1, q2, r, k)

def fuerza_nacl(q1, q2, r):
    k = 9*10**9 / 5.9
    return ley_coulomb_general(q1, q2, r, k)

def fuerza_pvc(q1, q2, r):
    k = 9*10**9 / 3.4
    return ley_coulomb_general(q1, q2, r, k)

def fuerza_agua(q1, q2, r):
    k = 9*10**9 / 81
    return ley_coulomb_general(q1, q2, r, k)

def fuerza_glicerina(q1, q2, r):
    k = 9*10**9 / 43
    return ley_coulomb_general(q1, q2, r, k)

q1 = 3*10**-6
q2 = -8*10**-6  
r = 2
print(f"""
Wrappers:
    Fuerza Vacío:       {fuerza_vacio(q1, q2, r):.6f} N
    Fuerza Aire:        {fuerza_aire(q1, q2, r):.6f} N
    Fuerza NaCL:        {fuerza_nacl(q1, q2, r):.6f} N
    Fuerza PVC:         {fuerza_pvc(q1, q2, r):.6f} N
    Fuerza Agua:        {fuerza_agua(q1, q2, r):.6f} N
    Fuerza Glicerina:   {fuerza_glicerina(q1, q2, r):.6f} N

      """)

##R004##
##20##
"""
Elabora una parcialización de la función que resuelva la Ley de Coulomb.
Compruebe la parcializacion considerando que una carga de 3×10^-6 C 
se encuentra 2 m de una carga de -8×10^-6 C
"""
print(" ##R004## ".center(120,"-"))
def ley_coulomb_parcial(k_medio):
    def nivel1(q1):
        def nivel2(q2):
            def nivel3(r):
                return (k_medio * (q1 * q2)) / (r**2)
            return nivel3
        return nivel2
    return nivel1


k_vacio = 9*10**9
fuerza_vacio_p= ley_coulomb_parcial(k_vacio)(3*10**-6)(-8*10**-6)(2)

k_aire = 9*10**9 / 1.0005
fuerza_aire_p = ley_coulomb_parcial(k_aire)(3*10**-6)(-8*10**-6)(2)

k_NaCl = 9*10**9 / 5.9
fuerza_NaCl_p = ley_coulomb_parcial(k_NaCl)(3*10**-6)(-8*10**-6)(2)

k_PVC = 9*10**9 / 3.4
fuerza_PVC_p = ley_coulomb_parcial(k_PVC)(3*10**-6)(-8*10**-6)(2)

k_Agua = 9*10**9 / 81
fuerza_Agua_p = ley_coulomb_parcial(k_Agua)(3*10**-6)(-8*10**-6)(2)

k_Gli = 9*10**9 / 43
fuerza_Gli_p = ley_coulomb_parcial(k_Gli)(3*10**-6)(-8*10**-6)(2)


print(f"""
Parcialización:
    Fuerza Vacío:       {fuerza_vacio_p:.6f} N
    Fuerza Aire:        {fuerza_aire_p:.6f} N
    Fuerza NaCL:        {fuerza_NaCl_p:.6f} N
    Fuerza PVC:         {fuerza_PVC_p:.6f} N
    Fuerza Agua:        {fuerza_Agua_p:.6f} N
    Fuerza Glicerina:   {fuerza_Gli_p:.6f} N

      """)
##R005##
##20##
"""
Elabora una currificación de la función que resuelva la Ley de Coulomb.
Compruebe la currificación considerando que una carga de 3×10^-6 C 
se encuentra 2 m de una carga de -8×10^-6 C
"""
print(" ##R005## ".center(120,"-"))

def ley_coulomb_currificacion(k_medio):
    def nivel1(q1):
        calculo1 = k_medio * (q1)#<----------------------- Primer cálculo k*q1
        def nivel2(q2):
            calculo2 = calculo1 * (q2)#<------- Segundo cálculo: (k * q1) * q2 
            def nivel3(r):
                return calculo2 / (r**2)#<---------------- Cálculo final ((k * q1) * q2) / r**2
            return nivel3
        return nivel2
    return nivel1

fuerza_vacio_c = ley_coulomb_currificacion(9*10**9)(3*10**-6)(-8*10**-6)(2)
fuerza_aire_c = ley_coulomb_currificacion(9*10**9 / 1.0005)(3*10**-6)(-8*10**-6)(2)
fuerza_NaCl_c = ley_coulomb_currificacion(9*10**9 / 5.9)(3*10**-6)(-8*10**-6)(2)
fuerza_PVC_c = ley_coulomb_currificacion(9*10**9 / 3.4)(3*10**-6)(-8*10**-6)(2)
fuerza_Agua_c = ley_coulomb_currificacion(9*10**9 / 81)(3*10**-6)(-8*10**-6)(2)
fuerza_Gli_c = ley_coulomb_currificacion(9*10**9 / 43)(3*10**-6)(-8*10**-6)(2)
print(f"""
Currificación:
    Fuerza Vacío:       {fuerza_vacio_c:.6f} N
    Fuerza Aire:        {fuerza_aire_c:.6f} N
    Fuerza NaCL:        {fuerza_NaCl_c:.6f} N
    Fuerza PVC:         {fuerza_PVC_c:.6f} N
    Fuerza Agua:        {fuerza_Agua_c:.6f} N
    Fuerza Glicerina:   {fuerza_Gli_c:.6f} N

      """)
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
print(" ##R006## ".center(120,"-"))
def gravitacion_closure(astro):
    #Closure que retorna función con la gravedad del astro
    gravedades = {
        'Luna': 1.62,
        'Marte': 3.711,
        'Europa': 1.315,
        'Encélado': 0.113,
        'Titan': 1.352,
        'Venus': 8.87
    }
    
    g_astro = gravedades[astro]  # gravedad del astro
    
    def calcular_fuerza(m1, m2, d):
        # La gravedad del astro en lugar de G
        return g_astro * (m1 * m2) / (d**2)
    
    return calcular_fuerza

m1 = 100
m2 = 130
d = 2

fuerza_luna = gravitacion_closure('Luna')(m1, m2, d)
fuerza_marte = gravitacion_closure('Marte')(m1, m2, d)
fuerza_europa = gravitacion_closure('Europa')(m1, m2, d)
fuerza_encelado = gravitacion_closure('Encélado')(m1, m2, d)
fuerza_titan = gravitacion_closure('Titan')(m1, m2, d)
fuerza_venus = gravitacion_closure('Venus')(m1, m2, d)

print(f"""
Closure:
    Luna:       {fuerza_luna:.3f} N
    Marte:      {fuerza_marte:.3f} N
    Europa:     {fuerza_europa:.3f} N
    Encélado:   {fuerza_encelado:.3f} N
    Titan:      {fuerza_titan:.3f} N
    Venus:      {fuerza_venus:.3f} N
""")

##R007##
##20##
"""
Elabora una parcialización de una función que resuelva la ley de
la gravitacion universal.
Compruebe la parcializacion considerando dos masas de 100kg y 130kg 
a 2 metros de distancia

"""
print(" ##R007## ".center(120,"-"))
def gravitacion_parcial(g_astro):
    def con_m1(m1):
        def con_m2(m2):
            def con_d(d):
                return g_astro * (m1 * m2) / (d**2)
            return con_d
        return con_m2
    return con_m1

m1 = 100
m2 = 130
d = 2


m1 = 100
m2 = 130
d = 2

fuerza_luna_p = gravitacion_parcial(1.62)(m1)(m2)(d)
fuerza_marte_p = gravitacion_parcial(3.711)(m1)(m2)(d)
fuerza_europa_p = gravitacion_parcial(1.315)(m1)(m2)(d)
fuerza_encelado_p = gravitacion_parcial(0.113)(m1)(m2)(d)
fuerza_titan_p = gravitacion_parcial(1.352)(m1)(m2)(d)
fuerza_venus_p = gravitacion_parcial(8.87)(m1)(m2)(d)

print(f"""
Parcialización:
    Luna:       {fuerza_luna_p:.3f} N
    Marte:      {fuerza_marte_p:.3f} N
    Europa:     {fuerza_europa_p:.3f} N
    Encélado:   {fuerza_encelado_p:.3f} N
    Titan:      {fuerza_titan_p:.3f} N
    Venus:      {fuerza_venus_p:.3f} N
""")
##R008##
##20##
"""
Elabora una currificación de una función que resuelva la ley de
la gravitacion universal.
Compruebe la currificación considerando dos masas de 100kg y 130kg 
a 2 metros de distancia

"""
print(" ##R008## ".center(120,"-"))
def gravitacion_currificacion(g_astro):
    def nivel1(m1):
        calculo_1 = g_astro * m1
        def nivel2(m2):
            calculo_2 = calculo_1 * m2
            def nivel3(d):
                return calculo_2 / (d**2)
            return nivel3
        return nivel2
    return nivel1


m1 = 100
m2 = 130
d = 2

fuerza_luna_c = gravitacion_currificacion(1.62)(m1)(m2)(d)
fuerza_marte_c = gravitacion_currificacion(3.711)(m1)(m2)(d)
fuerza_europa_c = gravitacion_currificacion(1.315)(m1)(m2)(d)
fuerza_encelado_c = gravitacion_currificacion(0.113)(m1)(m2)(d)
fuerza_titan_c = gravitacion_currificacion(1.352)(m1)(m2)(d)
fuerza_venus_c = gravitacion_currificacion(8.87)(m1)(m2)(d)

print(f"""
Currificación:
    Luna:       {fuerza_luna_c:.3f} N
    Marte:      {fuerza_marte_c:.3f} N
    Europa:     {fuerza_europa_c:.3f} N
    Encélado:   {fuerza_encelado_c:.3f} N
    Titan:      {fuerza_titan_c:.3f} N
    Venus:      {fuerza_venus_c:.3f} N
""")

##R009##
##50##
"""
Recuerda que todos los ejercicios son opcionales ustedes eligen que 
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
print(" ##R010## ".center(120,"-"))

def composicion_HOF(valor):
    def nivel1(func):
        resultado = func(valor)
        if resultado is None:
            return valor
        return composicion_HOF(resultado)
    return nivel1

def fun0(data):
    return data.split(',')

def fun1(data):
    match data:
        case [noControl, *resto]:
            return [int(noControl)] + resto
    return data

def fun2(data):
    match data:
        case [noControl, nombre, *_]:
            cola1 = data[1:]
            cola2 = cola1[1:]
            calif_float = list(map(float, cola2))
            promedio = sum(calif_float) / len(calif_float) * 100
            return [noControl, nombre, round(promedio, 2)]
    return data

R = "29590097,ROMAY TACITURNO RENE FERNANDA,0.7,1,1,1,1,1,1,0.7"

T = composicion_HOF(R)
T = T(fun0)
T = T(fun1)
T = T(fun2)
resultado = T(lambda e: None)

print(f"\nResultado: {resultado}\n")

