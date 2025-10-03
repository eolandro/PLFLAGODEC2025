
##R004##
##20##
"""
Elabora una parcialización de la función que resuelva la Ley de Coulomb.
Compruebe la parcializacion considerando que una carga de 3×10^-6 C 
se encuentra 2 m de una carga de -8×10^-6 C
"""

# Función general de la Ley de Coulomb
def ley_coulomb(q1, q2, r, K):
    if r == 0:
        print("Error! La distancia no puede ser cero :/")
    return (K * (q1 * q2)) / (r ** 2)

def parcializar_ley_coulomb(K): # Crear funciones parciales fijando el valor de K
    return lambda q1, q2, r: ley_coulomb(q1, q2, r, K)

k = 9 * (10 ** 9) # Constante de k
# Creación de las funciones parciales
fuerza_vacio = parcializar_ley_coulomb(k)
fuerza_aire = parcializar_ley_coulomb(k / 1.0005)
fuerza_NaCl = parcializar_ley_coulomb(k / 5.9)
fuerza_PVC = parcializar_ley_coulomb(k / 3.4)
fuerza_agua = parcializar_ley_coulomb(k / 81)
fuerza_glicerina = parcializar_ley_coulomb(k / 43)



# Datos para prueba:
q1 = 3 * (10 ** -6)   # 3 microCoulombs
q2 = -8 * (10 ** -6)  # -8 microCoulombs
r = 2  # distancia 2 metros

#Prueba cada para cada caso de la ley de Coulomb
print("Fuerza en vacío:", fuerza_vacio(q1, q2, r)) # Se espera -> #Fuerza en vacio: -0.054
print("Fuerza en aire:", fuerza_aire(q1, q2, r)) # Se espera -> #Fuerza en aire: -0.053973013493253376
print("Fuerza en NaCl:", fuerza_NaCl(q1, q2, r)) # Se espera -> #Fuerza en NaCl: -0.009152542372881356
print("Fuerza en PVC:", fuerza_PVC(q1, q2, r)) # Se espera -> #Fuerza en -0.015882352941176472
print("Fuerza en agua:", fuerza_agua(q1, q2, r)) # Se espera -> #Fuerza en agua: -0.0006666666666666666
print("Fuerza en glicerina:", fuerza_glicerina(q1, q2, r)) # Se espera -> #Fuerza en glicerina: -0.0012558139534883722
