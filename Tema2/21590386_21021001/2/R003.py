##R003##
##30##

# Ley de Coulomb

# F = (K*(q1 * q2)) /r**2

# k = 9 * (10**9) ((N m²) / C)

# Valores de K en diferentes medios

# Vacio ==> K = k
# Aire  ==> K = k / 1.0005
# NaCL  ==> K = k / 5.9
# PVC  ==> K = k / 3.4
# Agua  ==> K = k / 81
# Glicerina  ==> K = k / 43

# --Elabora 6 wrappers de la Ley de Coulomb para calcular la fuerza,
# entre dos cargas en una distancia determinada, correspondientes a los 6
# medios diferentes presentados anteriormente.
# Compruebe los wrappers considerando que una carga de 3×10^-6 C
# se encuentra 2 m de una carga de -8×10^-6 C


def coulomb(medio, k, q1, q2, r):
    K = k / medio
    F = (K * (q1 * q2)) / r**2
    return F


def coulombVacio(k, q1, q2, r):
    return coulomb(1, k, q1, q2, r)


def coulombAire(k, q1, q2, r):
    return coulomb(1.0005, k, q1, q2, r)


def coulombNaCL(k, q1, q2, r):
    return coulomb(5.9, k, q1, q2, r)


def coulombPVC(k, q1, q2, r):
    return coulomb(3.4, k, q1, q2, r)


def coulombAgua(k, q1, q2, r):
    return coulomb(81, k, q1, q2, r)


def coulombGlicerina(k, q1, q2, r):
    return coulomb(43, k, q1, q2, r)


k = 9 * (10**9)
q1 = 3 * (10**-6)
q2 = -8 * (10**-6)
r = 2

print(
    "\nEjercicio 3 (R003)\n",
    f"Vacío: {coulombVacio(k, q1, q2, r)}",
    f"Aire: {coulombAire(k, q1, q2, r)}",
    f"NaCL: {coulombNaCL(k, q1, q2, r)}",
    f"PVC: {coulombPVC(k, q1, q2, r)}",
    f"Agua: {coulombAgua(k, q1, q2, r)}",
    f"Glicerina: {coulombGlicerina(k, q1, q2, r)}",
    sep="\n",
    end="\n\n",
)
