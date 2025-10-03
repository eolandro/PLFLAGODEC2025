##R004##
##20##
"""
Elabora una parcialización de la función que resuelva la Ley de Coulomb.
Compruebe la parcializacion considerando que una carga de 3×10^-6 C 
se encuentra 2 m de una carga de -8×10^-6 C

Ley de Coulomb
	
F = (K*(q1 * q2)) /r**2

k = 9 * (10**9) ((N m²) / C)
"""

#Funcion general
def LeyCoulomb(k, q1, q2, r):
    return (k * (q1 * q2)) / r**2

#Funcion parcial
def pCoulomb(k):
    def nivel1(q1):
        def nivel2(q2):
            def nivel3(r):
                return LeyCoulomb(k, q1, q2, r)
            return nivel3
        return nivel2
    return nivel1

R = pCoulomb(9*(10**9))(3*(10**(-6)))(-8*(10**(-6)))(2)
print("La magnitud de la fuerza electrica es: ",R, "N")