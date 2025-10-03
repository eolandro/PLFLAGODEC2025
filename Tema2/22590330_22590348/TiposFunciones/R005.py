##R005##
##20##
"""
Elabora una currificación de la función que resuelva la Ley de Coulomb.
Compruebe la currificación considerando que una carga de 3×10^-6 C 
se encuentra 2 m de una carga de -8×10^-6 C
"""

#Funcion Currificada (Curry jsjsjs)
def cCoulomb(k):
    def nivel1(q1):
        def nivel2(q2):
            Multi = (k * (q1 * q2))
            def nivel3(r):
                return Multi / r**2
            return nivel3
        return nivel2
    return nivel1


#R = cCoulomb(9*(10**9))(3*(10**(-6)))(-8*(10**(-6)))(2)
k = (9*(10**9))
R0 = cCoulomb(k)
q1 = (3*(10**(-6)))
R1 = R0(q1)
q2 = (-8*(10**(-6)))
R2 = R1(q2)
r = 2
Rx = R2(r)

print("La magnitud de la fuerza electrica es: ",Rx, "N")