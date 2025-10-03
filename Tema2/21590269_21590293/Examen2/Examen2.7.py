def graviUP(m1):
    def masa2(m2):
        def distancia(d):
            G = 6.674e-11
            F = (G * (m1 * m2)) / d**2
            return F
        return distancia
    return masa2

step1 = graviUP(100)
step2 = step1(130)
resultado = step2(2)
print(f"   Resultado: {resultado:.6e} N")

fuerzaTotal = graviUP(100)(130)(2)
print(f"   graviUP(100)(130)(2) = {fuerzaTotal:.6e} N")

masa100 = graviUP(100)
print(f"   Creamos función con m1 = 100kg")

masa100_130 = masa100(130)
print(f"   Creamos función con m1 = 100kg y m2 = 130kg")

f_2m = masa100_130(2)
f_3m = masa100_130(3)
f_5m = masa100_130(5)

print(f"\n   Con las mismas masas (100kg y 130kg):")
print(f"   - A 2 metros: {f_2m:.6e} N")
print(f"   - A 3 metros: {f_3m:.6e} N")
print(f"   - A 5 metros: {f_5m:.6e} N")