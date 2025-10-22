##R009##
##10##
"""
Procesar data
Utilizando el patron de diseño composicion con generadores
obten la salida correspondiente:
R = "29590097,ROMAY TACITURNO RENE FERNANDA,0.7,1,1,1,1,1,1,0.7"
T = compoGen(R)
next(T)
R = T.next(fun0)
R = T.next(fun1)
R = T.next(fun2)
R = T.next(fun3) #...
R = T.next(None)
print(R)
# [29590097,"ROMAY TACITURNO RENE FERNANDA",92.5]
"""
#Para estas funciones se ocupa un .send()
def gComposicion(valor):
    Terminado = False
    Resultado = valor
    while not Terminado:
        funcion = yield Resultado
        if funcion == None:
            Terminado = True
            continue
        Resultado = funcion(Resultado)
    yield Resultado


T = gComposicion("29590097,ROMAY TACITURNO RENE FERNANDA,0.7,1,1,1,1,1,1,0.7")
next(T)
print("Primer envio")
print(T.send(lambda e: e.split(",")))
print("Segundo Envio")
print(T.send(lambda l: [int(e) if e.isdigit() else float(e) if isinstance(e, int) else e for e in l]))
print("Tercero Envio")
print(T.send(lambda l: [l[0], l[1]] + [float(e) for e in l[2:]]))
print("Cuarto Envio")
print(T.send(lambda l: [l[0], l[1],  sum(l[2:])/len(l[2:])*100]))
print("Se termina al mandar none")
R = T.send(None)
print(R)


"""
>>> import g2
>>> T = g2.gComposicion("1|2|3|Pedrito destructor de mundos")
>>> next(T)
>>> T.send(lambda e: e.split("|"))
>>> T.send(lambda l: [int(e) if e.isdigit() else e for e in l])
>>> R = T.send(None)
>>> R
[1, 2, 3, 'Pedrito destructor de mundos'] 
"""
"""
>>> import Exa03
>>> T = Exa03.gComposicion("29590097,ROMAY TACITURNO RENE FERNANDA,0.7,1,1,1,1,1,1,0.7")
>>> next(T)
>>> T.send(lambda e: e.split(","))


#Esta linea itera sobre la lista y convierte los numeros en enteros, si no son numeros los deja igual.
>>> T.send(lambda l: [int(e) if e.isdigit() else e for e in l])
#Esta linea convierte los numeros en float, si no son numeros los deja igual.
>>> T.send(lambda l: [float(e) if isinstance(e, int) else e for e in l])



#Lo que hace la siguiente linea es convertir los numeros en float
>>> T.send(lambda l: [int(e) if e.isdigit() else e for e in l])
>>> T.send(lambda l: [float(e) if isinstance(e, int) else e for e in l])







>>> T.send(lambda l: [int(l[0]), l[1]] + [float(e) for e in l[2:]])
>>> T.send(lambda l: [l[0], l[1], sum(l[2:])])
>>> R = T.send(None)
>>> R
[29590097, 'ROMAY TACITURNO RENE FERNANDA', 92.5]
"""