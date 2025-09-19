def patch(nbyte, valor, lbin):
    match lbin:
        case [P, *R] if nbyte == 0:
            return [valor] + R
        case [P, *R]:
            return [P] + patch(nbyte-1, valor, R)

L = [0xff, 0x01, 0xaa, 0xf1]
T = patch(1, 0xFF, L)

print(T)