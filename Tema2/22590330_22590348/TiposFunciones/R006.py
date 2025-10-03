def impuesto(Tasa):
    def aplicacion(M):
        if Tasa < 1:
            return M * (1+Tasa)
        return M * (1+(Tasa / 100))
    return aplicacion

iva16 = impuesto(16)
iva8 = impuesto(0.08)
print(f"$100 con iva 16 es: {iva16(100)}")
print(f"$100 con iva 8 es: {iva8(100)}")

##R006##
##30##
"""
Ley de la Gravitacion universal
#La fuerza de atracción gravitatoria (F) entre dos masas (m1 y m2)
#La G constante de gravitación universal (G) y la distancia (d)
#m1 y m2 son las masas de los dos objetos.
#d es la distancia entre los centros de las masas.

F = (G*(m1*m2)) / d**2

Aceleracion por Gravedad en diferentes lugares del sistema solar

Luna 1.62 m/s²
Marte 3.711 m/s²
Europa (Satelite de jupiter) 1.315 m/s²
Encélado 0.113 m/s²
Titan 1.352 m/s²
Venus 8.87 m/s²
Elabora un closure que dependiendo el nombre de astro, te retorne
la funcion con la gravedad adecuada
Comprueba cada caso del closure en los 6 astros considerando dos 
masas de 100kg y 130kg a 2 metros de distancia
"""

def gravityU(astro):
    def gravedad(m1, m2, d):
        if astro == "Luna":
            g = 1.62
        elif astro == "Marte":
            g = 3.711
        elif astro == "Europa":
            g = 1.315
        elif astro == "Encélado":
            g = 0.113
        elif astro == "Titan":
            g = 1.352
        elif astro == "Venus":
            g = 8.87
        F = (g * (m1 * m2)) / d**2
        return F
    return gravedad

luna = gravityU("Luna")
marte = gravityU("Marte")
europa = gravityU("Europa")
encelado = gravityU("Encélado")
titan = gravityU("Titan")
venus = gravityU("Venus")

print("Los objetos son de 100kg y 130kg a 2 metros de distancia:")
print(f"La fuerza en la Luna es: {luna(100, 130, 2)} N")
print(f"La fuerza en Marte es: {marte(100, 130, 2)} N")
print(f"La fuerza en Europa es: {europa(100, 130, 2)} N")
print(f"La fuerza en Encélado es: {encelado(100, 130, 2)} N")
print(f"La fuerza en Titan es: {titan(100, 130, 2)} N")
print(f"La fuerza en Venus es: {venus(100, 130, 2)} N")
