def ley_coulomb(K):
    def con_cargas(q1, q2):
        def con_distancia(r):
            return (K * q1 * q2) / (r * r)
        return con_distancia
    return con_cargas

calculo_vacio = ley_coulomb(9e9)
con_cargas = calculo_vacio(3e-6,-8e-6)
fuerza_resultante = con_cargas(2)

print("Fuerza en el vacío: ",fuerza_resultante," N")