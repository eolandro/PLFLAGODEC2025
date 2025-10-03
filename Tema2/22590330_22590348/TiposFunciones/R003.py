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

#Funcion General
def LeyCoulomb(k, q1, q2, r):
    return (k * (q1 * q2)) / r**2
     
#Funciones Wrapper
def vacio(k):
    return LeyCoulomb(k,(3*(10**-6)),(-8*(10**-6)),2)

def aire(k):
    return LeyCoulomb(k/1.0005,(3*(10**-6)),(-8*(10**-6)),2)

def NaCL(k):
    return LeyCoulomb(k/5.9,(3*(10**-6)),(-8*(10**-6)),2)

def PVC(k):
    return LeyCoulomb(k/3.4,(3*(10**-6)),(-8*(10**-6)),2)

def Agua(k):
    return LeyCoulomb(k/81,(3*(10**-6)),(-8*(10**-6)),2)

def Glicerina(k):
    return LeyCoulomb(k/43,(3*(10**-6)),(-8*(10**-6)),2)


print("Vacio: ", vacio(9*(10**9)),"N")
print("Aire: ", aire(9*(10**9)),"N")
print("NaCL: ", NaCL(9*(10**9)),"N")
print("PVC: ", PVC(9*(10**9)),"N")
print("Agua: ", Agua(9*(10**9)),"N")
print("Glicerina: ", Glicerina(9*(10**9)),"N")