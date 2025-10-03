##R007##
##20##
"""
Elabora una parcialización de una función que resuelva la ley de
la gravitacion universal.
Compruebe la parcializacion considerando dos masas de 100kg y 130kg 
a 2 metros de distancia
"""

#Funcion general
def gravity(m1, m2, d, g):
    F = (g * (m1 * m2)) / d**2
    return F

#Parcializacion
def distancia(d):
    def masa1(m1):
        def masa2(m2):
            def gravedad(g):
                return gravity(m1, m2, d, g)
            return gravedad
        return masa2
    return masa1

#Corrida
print("Bienvenidos")
d = 2
m1 = 100
m2 = 130
#g = 9.81

#resultado = distancia(d)(m1)(m2)(g)
distanciaf = distancia(d)
masa1f = distanciaf(m1)
masa2f = masa1f(m2)
resultado = masa2f(float(input("Ingrese la gravedad del lugar: ")))
print("El resultado de la fuerza gravitacional es:", resultado, "N")