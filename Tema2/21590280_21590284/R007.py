def parcial_gravitacion(g):
    def nivel1(m1):
        def nivel2(m2):
            def nivel3(d):
                return (g * m1 * m2) / (d**2)
            return nivel3
        return nivel2
    return nivel1

g_tierra = 9.81
m1_test = 100
m2_test = 130
d_test = 2

fuerza = parcial_gravitacion(g_tierra)(m1_test)(m2_test)(d_test)
print(f"Resultado con parcialización: {fuerza}")