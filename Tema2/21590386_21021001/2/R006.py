##R006##
##30##

# Ley de la Gravitacion universal

# F = (G*(m1*m2)) / d**2

# Aceleracion por Gravedad en diferentes lugares del sistema solar

# Luna 1.62 m/s²
# Marte 3.711 m/s²
# Europa (Satelite de jupiter) 1.315 m/s²
# Encélado 0.113 m/s²
# Titan 1.352 m/s²
# Venus 8.87 m/s²

# Elabora un closure que dependiendo el nombre de astro, te retorne
# la funcion con la gravedad adecuada

# Comprueba cada caso del closure en los 6 astros considerando dos
# masas de 100kg y 130kg a 2 metros de distancia


def funcion_gravedad(nastro):

    if nastro == "Luna":
        G = 1.62
    elif nastro == "Marte":
        G = 3.711
    elif nastro == "Europa":
        G = 1.315
    elif nastro == "Encélado":
        G = 0.113
    elif nastro == "Titan":
        G = 1.352
    elif nastro == "Venus":
        G = 8.87
    else:
        G = 0

    def calcular_fuerza(m1, m2, d):
        return (G * (m1 * m2)) / (d**2)

    return calcular_fuerza


print("\nEjercicio 6 (R006)\n")

# Luna
luna = funcion_gravedad("Luna")
print(f"Luna: {luna(100, 130, 2)} N")

# Marte
marte = funcion_gravedad("Marte")
print(f"Marte: {marte(100, 130, 2)} N")

# Europa
europa = funcion_gravedad("Europa")
print(f"Europa: {europa(100, 130, 2)} N")

# Encélado
encelado = funcion_gravedad("Encélado")
print(f"Encélado: {encelado(100, 130, 2)} N")

# Titan
titan = funcion_gravedad("Titan")
print(f"Titan: {titan(100, 130, 2)} N")

# Venus
venus = funcion_gravedad("Venus")
print(f"Venus: {venus(100, 130, 2)} N", end="\n\n")
