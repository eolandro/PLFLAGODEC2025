def coulombC(q1):
    return lambda q2: lambda r: (9e9 * q1 * q2) / r**2


q1 = 3e-6
q2 = -8e-6
r = 2

print("=" * 70)
print("CURRIFICACIÓN DE LA LEY DE COULOMB")
print("=" * 70)

step1 = coulombC(q1)
print(f"   Paso 1 - q1 = {q1:.2e} C: {step1}")

step2 = step1(q2)
print(f"   Paso 2 - q2 = {q2:.2e} C: {step2}")

resultado = step2(r)
print(f"   Paso 3 - r = {r} m")
print(f"   Resultado: {resultado:.6e} N")

fuerzaTotal = coulombC(q1)(q2)(r)
print(f"   coulombC({q1:.2e})({q2:.2e})({r}) = {fuerzaTotal:.6e} N")

carga3e6 = coulombC(q1)
print(f"   Creamos función con q1 = {q1:.2e} C")

carga3e6_8e6 = carga3e6(q2)
print(f"   Creamos función con q1 = {q1:.2e} C y q2 = {q2:.2e} C")

f_1m = carga3e6_8e6(1)
f_2m = carga3e6_8e6(2)
f_3m = carga3e6_8e6(3)

print(f"\n   Con las mismas cargas ({q1:.2e} C y {q2:.2e} C):")
print(f"   - A 1 metro: {f_1m:.6e} N")
print(f"   - A 2 metros: {f_2m:.6e} N")
print(f"   - A 3 metros: {f_3m:.6e} N")

print("\n" + "=" * 70)