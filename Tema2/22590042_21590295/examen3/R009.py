def compoGen(valor):
    Terminado = False
    Resultado = valor
    while not Terminado:
        function = yield Resultado
        if function == None:
            Terminado = True
            continue
        Resultado = function(Resultado)
    yield Resultado

fun0 = lambda R: R.split(',')
fun1 = lambda R: [int(R[0])] + R[1:]
fun2 = lambda R: R[:-1] + [float(R[-1]) * 100]
fun3 = lambda R: R[0:2] + R[-1:]

R = "29590097,ROMAY TACITURNO RENE FERNANDA,0.7,1,1,1,1,1,1,0.7"
T = compoGen(R)
next(T)
R = T.send(fun0)
R = T.send(fun1)
R = T.send(fun2)
R = T.send(fun3)
R = T.send(None)
print(R)
