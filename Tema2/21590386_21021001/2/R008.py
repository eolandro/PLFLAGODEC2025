##R008##
##20##

# Elabora una currificación de una función que resuelva la ley de la gravitacion universal.
# Compruebe la currificación considerando dos masas de 100kg y 130kg  a 2 metros de distancia


# Función General - Obtiene la gravedad según el astro
def obtener_gravedad(astro):

    if astro == "Luna":
        return 1.62
    elif astro == "Marte":
        return 3.711
    elif astro == "Europa":
        return 1.315
    elif astro == "Encélado":
        return 0.113
    elif astro == "Titan":
        return 1.352
    elif astro == "Venus":
        return 8.87
    else:
        return 0


# Función Currificada
def cgravedad(astro):
    G = obtener_gravedad(astro)

    def nivel1(m1):
        r1 = G * m1

        def nivel2(m2):
            r2 = r1 * m2

            def nivel3(d):
                return r2 / (d**2)

            return nivel3

        return nivel2

    return nivel1


print("\nEjercicio 8 (R008)\n")
print(f"Luna: {cgravedad("Luna")(100)(130)(2)} N")
print(f"Marte: {cgravedad("Marte")(100)(130)(2)} N")
print(f"Europa: {cgravedad("Europa")(100)(130)(2)} N")
print(f"Encélado: {cgravedad("Encélado")(100)(130)(2)} N")
print(f"Titan: {cgravedad("Titan")(100)(130)(2)} N")
print(f"Venus: {cgravedad("Venus")(100)(130)(2)} N", end="\n\n")
