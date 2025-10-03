##R008##
##20##
"""
Elabora una currificación de una función que resuelva la ley de
la gravitacion universal.
Compruebe la currificación considerando dos masas de 100kg y 130kg 
a 2 metros de distancia

"""

def gravity(m1):
    def masa2(m2):
        def distancia(d):
            def resultado(g):
                return (g * (m1 * m2)) / d**2
            return resultado
        return distancia
    return masa2

#Corrida
print("Bienvenidos")
masa1=100
ma1=gravity(masa1)
masa2=130
ma2=ma1(masa2)
dist=2
re=ma2(dist)
g=float(input("Ingrese la gravedad del lugar: "))
R=re(g)
print("El resultado de la fuerza gravitacional es:", R, "N")
