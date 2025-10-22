def cHOF(valor):
    def app(funcion):
        nonlocal valor
        if funcion is None:
            return valor
        valor = funcion(valor)
        return app
    return app


def lDoble(L):
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
    match L:
        case []:
            return 0
        case [x]:
            return x
        case [x, *resto]:
            return x + sumL(resto)


def countEr(L):
    match L:
        case []:
            return 0
        case [_]:
            return 1
        case [_, *resto]:
            return 1 + countEr(resto)


def prom(calif):
    return sumL(calif) / countEr(calif) * 100


fun0 = lambda s: s.split(',')


def fun1(l):
    num = int(l[0])
    resto = l[1:]
    match resto:
        case [nombre, *calificaciones_str]:
            return [num, nombre, calificaciones_str]
        case _:
            return []


def fun2(l):
    num = l[0]
    resto = l[1:]
    match resto:
        case [nombre, calificaciones_str]:
            cal = lDoble(calificaciones_str)
            promedio = prom(cal)
            return [num, nombre, promedio]
        case _:
            return []


R = "29590097,ROMAY TACITURNO RENE FERNANDA,0.7,1,1,1,1,1,1,0.7"
T = cHOF(R)
T = T(fun0)
T = T(fun1)
T = T(fun2)
R = T(None)
print(R)