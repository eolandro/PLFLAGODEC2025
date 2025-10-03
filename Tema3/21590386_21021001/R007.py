##R007##
##20##

# Elabora una parcialización de una función que resuelva la ley de la gravitación universal.
# Compruebe la parcializacion considerando dos masas de 100kg y 130kg a 2 metros de distancia.


# Función General - Obtiene la gravedad según el astro
def gravedad_astro(nastro):
    if nastro == "Luna":
        return 1.62
    elif nastro == "Marte":
        return 3.711
    elif nastro == "Europa":
        return 1.315
    elif nastro == "Encélado":
        return 0.113
    elif nastro == "Titan":
        return 1.352
    elif nastro == "Venus":
        return 8.87
    else:
        return 0


# Función General
def fuerza_gravitacional(G, m1, m2, d):
    return (G * (m1 * m2)) / (d**2)


# Función Parcial
def parcial_gravedad(astro):
    G = gravedad_astro(astro)

    def nivel1(m1):
        def nivel2(m2):
            def nivel3(d):
                return fuerza_gravitacional(G, m1, m2, d)

            return nivel3

        return nivel2

    return nivel1


print("\nEjercicio 7 (R007)\n")
print(f"Luna: {parcial_gravedad("Luna")(100)(130)(2)} N")
print(f"Marte: {parcial_gravedad("Marte")(100)(130)(2)} N")
print(f"Europa: {parcial_gravedad("Europa")(100)(130)(2)} N")
print(f"Encélado: {parcial_gravedad("Encélado")(100)(130)(2)} N")
print(f"Titan: {parcial_gravedad("Titan")(100)(130)(2)} N")
print(f"Venus: {parcial_gravedad("Venus")(100)(130)(2)} N", end="\n\n")
