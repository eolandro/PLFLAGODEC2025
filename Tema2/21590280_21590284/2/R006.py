def selector_astro(nombre_astro):
    gravedades = {
        "Luna": 1.62, "Marte": 3.711, "Europa": 1.315,
        "Encelado": 0.113, "Titan": 1.352, "Venus": 8.87
    }
    g = gravedades.get(nombre_astro, 9.81)

    def calcular_fuerza(m1, m2, d):
        return (g * m1 * m2) / (d**2)
    
    return calcular_fuerza

m1_test = 100
m2_test = 130
d_test = 2
astros = ["Luna", "Marte", "Europa", "Encelado", "Titan", "Venus"]

def probar_astros(lista_astros):
    if not lista_astros:
        return
    astro_actual = lista_astros[0]
    calculadora = selector_astro(astro_actual)
    fuerza = calculadora(m1_test, m2_test, d_test)
    print(f"Fuerza en {astro_actual}: {fuerza}")
    probar_astros(lista_astros[1:])

probar_astros(astros)