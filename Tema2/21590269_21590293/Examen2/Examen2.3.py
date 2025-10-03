def leyCoulomb(q1, q2, r):
    k = 9e9
    F = (k * q1 * q2) / r**2
    return F


def wrapperVacio(func):
    def wrapper(q1, q2, r):
        K = 1
        resultado = func(q1, q2, r) * K
        return resultado
    return wrapper


def wrapperAire(func):
    def wrapper(q1, q2, r):
        K = 1 / 1.0005
        resultado = func(q1, q2, r) * K
        return resultado
    return wrapper


def wrapperNaCL(func):
    def wrapper(q1, q2, r):
        K = 1 / 5.9
        resultado = func(q1, q2, r) * K
        return resultado
    return wrapper


def wrapperPVC(func):
    def wrapper(q1, q2, r):
        K = 1 / 3.4
        resultado = func(q1, q2, r) * K
        return resultado
    return wrapper


def wrapperAgua(func):
    def wrapper(q1, q2, r):
        K = 1 / 81
        resultado = func(q1, q2, r) * K
        return resultado
    return wrapper


def wrapperGlicerina(func):
    def wrapper(q1, q2, r):
        K = 1 / 43
        resultado = func(q1, q2, r) * K
        return resultado
    return wrapper


q1 = 3e-6
q2 = -8e-6
r = 2

print("=" * 70)
print("LEY DE COULOMB EN DIFERENTES MEDIOS")
print("=" * 70)
print(f"q1 = {q1:.2e} C")
print(f"q2 = {q2:.2e} C")
print(f"r = {r} m")
print("=" * 70)

coulombVacio = wrapperVacio(leyCoulomb)
fuerzaVacio = coulombVacio(q1, q2, r)
print(f"\nVacío (K = k): {fuerzaVacio:.6e} N")

coulombAire = wrapperAire(leyCoulomb)
fuerzaAire = coulombAire(q1, q2, r)
print(f"Aire (K = k/1.0005): {fuerzaAire:.6e} N")

coulombNaCL = wrapperNaCL(leyCoulomb)
fuerzaNaCL = coulombNaCL(q1, q2, r)
print(f"NaCL (K = k/5.9): {fuerzaNaCL:.6e} N")

coulombPVC = wrapperPVC(leyCoulomb)
fuerzaPVC = coulombPVC(q1, q2, r)
print(f"PVC (K = k/3.4): {fuerzaPVC:.6e} N")

coulombAgua = wrapperAgua(leyCoulomb)
fuerzaAgua = coulombAgua(q1, q2, r)
print(f"Agua (K = k/81): {fuerzaAgua:.6e} N")

coulombGlicerina = wrapperGlicerina(leyCoulomb)
fuerzaGlicerina = coulombGlicerina(q1, q2, r)
print(f"Glicerina (K = k/43): {fuerzaGlicerina:.6e} N")

print("\n" + "=" * 70)