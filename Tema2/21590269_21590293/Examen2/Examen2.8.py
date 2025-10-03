def graviUC(m1):
    return lambda m2: lambda d: (6.674e-11 * m1 * m2) / d**2

step1 = graviUC(100)
step2 = step1(130)
resultado = step2(2)

fuerzaTotal = graviUC(100)(130)(2)
print(f"   graviUC(100)(130)(2) = {fuerzaTotal:.6e} N")

masa100 = graviUC(100)
masa100_130 = masa100(130)

f_2m = masa100_130(2)
f_3m = masa100_130(3)
f_5m = masa100_130(5)

print(f"\n   Con las mismas masas (100kg y 130kg):")
print(f"   - A 2 metros: {f_2m:.6e} N")
print(f"   - A 3 metros: {f_3m:.6e} N")
print(f"   - A 5 metros: {f_5m:.6e} N")