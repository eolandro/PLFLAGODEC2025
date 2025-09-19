def f(n):
    if n == 1:
        return n
    return f(n-1) + (1/n)

def b(n):
    if n == 0:
        return 0
    return b(n-1) + 2

R = "29590095,ROMAY TACITURNO RENE FERNANDA,0.7,1,1,1,1,1,1,0.7"

def compRecu(Valor, LF):
    if Valor == None:
        return None
    match LF:
        case [F]:
            return F(Valor)
        case [F, *R]:
            return compRecu(F(Valor), R)
    return None

def listaDoble(L):
    match L:
        case []:
            return []
        case [A]:
            if A == '':
                return []
            return [float(A)]
        case [P, *R]:
            if P == '':
                return listaDoble(R)
            return [float(P)] + listaDoble(R)

def sumL(L):
    match L:
        case []:
            return 0
        case [x]:
            return x
        case [x, *resto]:
            return x + sumL(resto)

def countE(L):
    match L:
        case []:
            return 0
        case [_]:
            return 1
        case [_, *resto]:
            return 1 + countE(resto)

def prom(calif):
    return sumL(calif) / countE(calif) * 100

fun1 = lambda s: s.split(',')

def fun2(l):
    num = int(l[0])
    resto = l[1:]
    match resto:
        case [nombre, *calificaciones_str]:
            return [num, nombre, calificaciones_str]
        case _:
            return []

def fun3(l):
    num = l[0]
    resto = l[1:]
    match resto:
        case [nombre, calificaciones_str]:
            cal = listaDoble(calificaciones_str)
            promedio = prom(cal)
            return [num, nombre, promedio]
        case _:
            return []

ListaFunciones = [fun1, fun2, fun3]
T = compRecu(R, ListaFunciones)
print(T)