def graviU(astro):
    gravityA = {
        "Luna": 1.62,
        "Marte": 3.711,
        "Europa": 1.315,
        "Encélado": 0.113,
        "Titán": 1.352,
        "Venus": 8.87
    }
    g = gravityA.get(astro, 0)
    
    def stre(m1, m2, d):
        F = (g * m1 * m2) / d**2 #Derivar para Masa :D
        return F
    
    return stre


# Luna
lunita = graviU("Luna")
fuerzaLunar = lunita(100, 130, 2)
print(f"\n Luna (g = 1.62 m/s²)")
print(f"   Fuerza gravitacional: {fuerzaLunar:.6e} N")

# Marte
martecillo = graviU("Marte")
fuerzaMarcial = martecillo(100, 130, 2)
print(f"\n Marte (g = 3.711 m/s²)")
print(f"   Fuerza gravitacional: {fuerzaMarcial:.6e} N")

# Europa
euro = graviU("Europa")
fuerzaEuropea = euro(100, 130, 2)
print(f"\n Europa (g = 1.315 m/s²)")
print(f"   Fuerza gravitacional: {fuerzaEuropea:.6e} N")

# Encélado
elado = graviU("Encélado")
fuerzaLado = elado(100, 130, 2)
print(f"\n Encélado (g = 0.113 m/s²)")
print(f"   Fuerza gravitacional: {fuerzaLado:.6e} N")

# Titán
titanico = graviU("Titán")
fuerzaTitanica = titanico(100, 130, 2)
print(f"\n Titán (g = 1.352 m/s²)")
print(f"   Fuerza gravitacional: {fuerzaTitanica:.6e} N")

# Venus
sailorV = graviU("Venus")
fuerzaV = sailorV(100, 130, 2)
print(f"\n Venus (g = 8.87 m/s²)")
print(f"   Fuerza gravitacional: {fuerzaV:.6e} N")