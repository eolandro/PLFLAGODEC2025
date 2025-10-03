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
# Funcion general para la ley de Coulumb
def ley_coulomb(q1, q2, r, K):
    if r == 0:
        print ("Error! La distancia no puede ser cero :/")
    return (K * (q1 * q2)) / (r ** 2)


k=9 * (10 ** 9)# Valor fijo de k = 9 * (10**9) ((N m²) / C)

# Wrapper para cada caso
def fuerza_vacio(q1, q2, r): # Vacio ==> K = k
    return ley_coulomb(q1, q2, r,k)

def fuerza_aire(q1, q2, r): # Aire  ==> K = k / 1.0005
    return ley_coulomb(q1, q2, r, k/ 1.0005)

def fuerza_NaCl(q1, q2, r):# NaCL  ==> K = k / 5.9
    return ley_coulomb(q1, q2, r, k/ 5.9)

def fuerza_PVC(q1, q2, r): # PVC  ==> K = k / 3.4
    return ley_coulomb(q1, q2, r, k/ 3.4)

def fuerza_agua(q1, q2, r):# Agua  ==> K = k / 81
    return ley_coulomb(q1, q2, r, k/ 81)

def fuerza_glicerina(q1, q2, r):# Glicerina  ==> K = k / 43
    return ley_coulomb(q1, q2, r, k/ 43)


q1 = 3 * (10 ** -6)   # 3 microCoulombs
q2 = -8 * (10 ** -6)  # -8 microCoulombs
r = 2  # distancia 2 

# Prueba para cada wrapper
print("Fuerza en vacío:", fuerza_vacio(q1, q2, r)) # Se espera -> # Fuerza en vacío: -0.054
print("Fuerza en aire:", fuerza_aire(q1, q2, r)) # Se espera -> # Fuerza en aire: -0.053973013493253376
print("Fuerza en NaCl:", fuerza_NaCl(q1, q2, r)) # Se espera -> # Fuerza en NaCl: -0.009152542372881356
print("Fuerza en PVC:", fuerza_PVC(q1, q2, r)) # Se espera -> # Fuerza en PVC: -0.015882352941176472
print("Fuerza en agua:", fuerza_agua(q1, q2, r)) # Se espera -> # Fuerza en agua: -0.0006666666666666666
print("Fuerza en glicerina:", fuerza_glicerina(q1, q2, r)) # Se espera -> # Fuerza en glicerina: -0.0012558139534883722
