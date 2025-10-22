class CompoGen:
    """Patrón composición con generadores"""
    def __init__(self, valor):
        self.valor = valor
    
    def next(self, funcion):
        if funcion is None:
            return self.valor
        self.valor = funcion(self.valor)
        return self


def lDoble(L):
    """Convierte lista de strings a lista de floats"""
    match L:
        case []:
            return []
        case [A]:
            if A == '':
                return []
            return [float(A)]
        case [P, *R]:
            if P == '':
                return lDoble(R)
            return [float(P)] + lDoble(R)


def sumL(L):
    """Suma recursiva de una lista"""
    match L:
        case []:
            return 0
        case [x]:
            return x
        case [x, *resto]:
            return x + sumL(resto)


def countEr(L):
    """Cuenta elementos de una lista recursivamente"""
    match L:
        case []:
            return 0
        case [_]:
            return 1
        case [_, *resto]:
            return 1 + countEr(resto)


def prom(calif):
    """Calcula el promedio de calificaciones"""
    return sumL(calif) / countEr(calif) * 100


fun0 = lambda s: s.split(',')


def fun1(l):
    """Separa matrícula, nombre y calificaciones"""
    num = int(l[0])
    resto = l[1:]
    match resto:
        case [nombre, *calificaciones_str]:
            return [num, nombre, calificaciones_str]
        case _:
            return []


def fun2(l):
    """Calcula el promedio de las calificaciones"""
    num = l[0]
    resto = l[1:]
    match resto:
        case [nombre, calificaciones_str]:
            cal = lDoble(calificaciones_str)
            promedio = prom(cal)
            return [num, nombre, promedio]
        case _:
            return []


def compoGen(valor):
    """Factory function que crea un CompoGen"""
    return CompoGen(valor)


if __name__ == "__main__":
    R = "29590097,ROMAY TACITURNO RENE FERNANDA,0.7,1,1,1,1,1,1,0.7"
    
    T = compoGen(R)
    T.next(fun0)
    T.next(fun1)
    T.next(fun2)
    R = T.next(None)
    
    print(R)

[29590097, 'ROMAY TACITURNO RENE FERNANDA', 92.5]