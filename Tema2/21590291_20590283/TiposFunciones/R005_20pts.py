##R005##
##20##
"""
Elabora una currificación de la función que resuelva la Ley de Coulomb.
Compruebe la currificación considerando que una carga de 3×10^-6 C 
se encuentra 2 m de una carga de -8×10^-6 C
"""

def ley_coulomb_currificada(q1):
    def con_q2(q2):
        def con_r(r):
            def con_K(K):
                if r == 0:
                    print("Error! La distancia no puede ser cero :/")
                return (K * (q1 * q2)) / (r ** 2)
            return con_K
        return con_r
    return con_q2

# Currificación parcial para algunos medios
k = 9 * (10 ** 9)

fuerza_vacio = ley_coulomb_currificada(3*(10**-6))(-8 *(10**-6))(2)(k)
fuerza_aire = ley_coulomb_currificada(3*(10**-6))(-8 *(10**-6))(2)(k / 1.0005)
fuerza_NaCl = ley_coulomb_currificada(3*(10**-6))(-8 *(10**-6))(2)(k / 5.9)
fuerza_PVC = ley_coulomb_currificada(3*(10**-6))(-8 *(10**-6))(2)(k / 3.4)
fuerza_agua = ley_coulomb_currificada(3*(10**-6))(-8 *(10**-6))(2)(k / 81)
fuerza_glicerina = ley_coulomb_currificada(3*(10**-6))(-8 *(10**-6))(2)(k / 43)

print("Fuerza en vacío:", fuerza_vacio) # Se espera -> # Fuerza en vacío: -0.054
print("Fuerza en aire:", fuerza_aire) # Se espera -> # Fuerza en aire: -0.053973013493253376
print("Fuerza en NaCl:", fuerza_NaCl) # Se espera -> # Fuerza en NaCl: -0.009152542372881356
print("Fuerza en PVC:", fuerza_PVC) # Se espera -> # Fuerza en PVC: -0.015882352941176472
print("Fuerza en agua:", fuerza_agua) # Se espera -> # Fuerza en agua: -0.0006666666666666666
print("Fuerza en glicerina:", fuerza_glicerina) # Se espera -> # Fuerza en glicerina: -0.0012558139534883722
