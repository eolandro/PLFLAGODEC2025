#-----------------------------------R003-----------------------------------#

#Grafo como lista de aristas
#[origen, destino]
Grafo = [
    ["AZ","BX"],
    ["BX","CY"],
    ["CY","DW"],
    ["DW","EV"],
    ["EV","FU"],
    ["FU","GR"],
    ["GR","HS"],
    ["HS","IT"],
    ["IT","JU"],
    ["JU","AZ"]
]


def buscdest(grafo, nodo): #recibe la lista grafo y un  nodo de búsqueda
    #Busca el destino a partir de un nodo en el grafo
    if not grafo:
        return None #no hay destino
    cabeza, *R = grafo #separa el primer elemento del resto
    origen, destino = cabeza #extrae los nodos origen, destino
    if origen == nodo:
        return destino #si encontramos una arista que empieza en el nodo
						#buscado, devolvemos el destino
    else:
        return buscdest(R, nodo) #si no coincide, seguimos buscando recursivamente
								#en el resto del grafo

#función principal
def impGrafCir(grafo, inicio, limite):
    #Imprime recursivamente el recorrido desde inicio hasta limite.
    print(inicio)
    if inicio == limite:
        return #si el nodo actual es el nodo límite
				#terminamos la recursión
    siguiente = buscdest(grafo, inicio) #buscamos el siguiente nodo al
										#se conecta el actual
    if siguiente:
        impGrafCir(grafo, siguiente, limite) #si existe un nodo siguiente,
											#hacemos llamada recursiva para continuar 


#AZ - EV
print("Recorrido hasta EV:")
impGrafCir(Grafo, "AZ", "EV")

#AZ - GR
print("\nRecorrido hasta GR:")
impGrafCir(Grafo, "AZ", "GR")

