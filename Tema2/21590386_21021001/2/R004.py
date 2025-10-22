##R004##
##20##

# Elabora una parcialización de la función que resuelva la Ley de Coulomb.
# Compruebe la parcializacion considerando que una carga de 3×10^-6 C se encuentra 2 m de una carga de -8×10^-6 C


def coulomb(medio, k, q1, q2, r):
    K = k / medio
    F = (K * (q1 * q2)) / r**2
    return F


def coulombParcial(medio):
    def n1(k):
        def n2(q1):
            def n3(q2):
                def n4(r):
                    return coulomb(medio, k, q1, q2, r)

                return n4

            return n3

        return n2

    return n1


k = 9 * (10**9)
q1 = 3 * (10**-6)
q2 = -8 * (10**-6)
r = 2

print(
    "\nEjercicio 4 (R004)\n",
    f"Vacío: {coulombParcial(1)(k)(q1)(q2)(r)}",
    f"Aire: {coulombParcial(1.0005)(k)(q1)(q2)(r)}",
    f"NaCL: {coulombParcial(5.9)(k)(q1)(q2)(r)}",
    f"PVC: {coulombParcial(3.4)(k)(q1)(q2)(r)}",
    f"Agua: {coulombParcial(81)(k)(q1)(q2)(r)}",
    f"Glicerina: {coulombParcial(43)(k)(q1)(q2)(r)}",
    sep="\n",
    end="\n\n",
)
