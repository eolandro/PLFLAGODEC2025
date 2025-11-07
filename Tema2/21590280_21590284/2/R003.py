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
def coulomb(q1,q2,k,r):
    return (k*(q1 * q2)) /r**2

def vacio(q1,q2,r):
    k= 9*(10**9)
    return coulomb(q1,q2,k,r)

def aire(q1,q2,r):
    k= 9*(10**9)/1.0005
    return coulomb(q1,q2,k,r)

def NaCl(q1,q2,r):
    k= 9*(10**9)/5.9
    return coulomb(q1,q2,k,r)

def PVC(q1,q2,r):
    k = 9*(10**9)/3.4
    return coulomb(q1,q2,k,r)

def agua(q1,q2,r):
    k = 9*(10**9)/81
    return coulomb(q1,q2,k,r)

def glicerina(q1,q2,r):
    k = 9*(10**9)/43
    return coulomb(q1,q2,k,r)


print("Vacio: ",vacio(3e-78,-8e-15,2),'N')
print("Aire: ",aire(3e-78,-8e-15,2),'N')
print("Nacl: ",NaCl(3e-78,-8e-15,2),'N')
print("PVC: ",PVC(3e-78,-8e-15,2),'N')
print("Agua: ",agua(3e-78,-8e-15,2),'N')
print("Glicerina: ",glicerina(3e-78,-8e-15,2),'N')