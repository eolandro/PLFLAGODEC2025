##R005##
##20##

# Elabora una currificación de la función que resuelva la Ley de Coulomb.
# Compruebe la currificación considerando que una carga de 3×10^-6 C
# se encuentra 2 m de una carga de -8×10^-6 C


def coulombCurry(medio):
    def n1(k):
        K = k / medio

        def n2(q1):
            def n3(q2):
                qs = q1 * q2

                def n4(r):
                    return (K * qs) / r**2

                return n4

            return n3

        return n2

    return n1


k = 9 * (10**9)
q1 = 3 * (10**-6)
q2 = -8 * (10**-6)
r = 2

print(
    "\nEjercicio 5 (R005)\n",
    f"Vacío: {coulombCurry(1)(k)(q1)(q2)(r)}",
    f"Aire: {coulombCurry(1.0005)(k)(q1)(q2)(r)}",
    f"NaCL: {coulombCurry(5.9)(k)(q1)(q2)(r)}",
    f"PVC: {coulombCurry(3.4)(k)(q1)(q2)(r)}",
    f"Agua: {coulombCurry(81)(k)(q1)(q2)(r)}",
    f"Glicerina: {coulombCurry(43)(k)(q1)(q2)(r)}",
    sep="\n",
    end="\n\n",
)
