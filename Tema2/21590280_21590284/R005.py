def curry_coulomb(k):
    def con_q1(q1):
        def con_q2(q2):
            def con_r(r):
                return (k * q1 * q2) / (r**2)
            return con_r
        return con_q2
    return con_q1

k_const = 9e9
q1_test = 3e-6
q2_test = -8e-6
r_test = 2
    
fuerza_curry = curry_coulomb(k_const)(q1_test)(q2_test)(r_test)
print(f"Resultado con currificación: {fuerza_curry}")