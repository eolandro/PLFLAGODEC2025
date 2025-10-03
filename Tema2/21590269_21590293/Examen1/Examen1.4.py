def bdb(n=1):
    if n > 100:
        return []
    valor_actual = ("Bada Boom!!" if n % 15 == 0 else
						"Bada" if n % 3 == 0 else
						"Boom!!" if n % 5 == 0 else n)
    return [valor_actual] + bdb(n + 1)
L = bdb()
print(L)