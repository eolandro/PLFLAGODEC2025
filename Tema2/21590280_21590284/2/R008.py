def curry_gravitacion(g):
    def con_m1(m1):
        def con_m2(m2):
            def con_d(d):
                return (g * m1 * m2) / (d**2)
            return con_d
        return con_m2
    return con_m1

g_tierra = 9.81
m1_test = 100
m2_test = 130
d_test = 2

fuerza = curry_gravitacion(g_tierra)(m1_test)(m2_test)(d_test)
print(f"Resultado con currificación: {fuerza}")