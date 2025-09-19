##R006##
##20##
"""
Una funcion toma dos listas L1 y L2, las une en una sola
combiando primer elemento de L1 con el primer elemento de L2.

Si una de las dos listas se agota simplemente une el resto de la lista a
la lista resultante


def combinaListas(L1,L2):
	pass

R = combinaListas([1,2,3],["a","b","c"])
print(R)
# [1,"a",2,"b",3,"c"]

R = combinaListas([1],["a","b","c"])
print(R)
# [1,"a","b","c"]

R = combinaListas([1,2,3],["a"])
print(R)
# [1,"a",2,3]


R = combinaListas([1,2,3],[])
print(R)
# [1,2,3]


R = combinaListas([],["a","b","c"])
print(R)
# ["a","b","c"]

"""
def combinaListas(L1, L2):
    match (L1, L2):
        case ([], []):
            return [] # ambas listas vacías, retorna lista vacía.
        case ([], _):
            return L2 # L1 vacía, retorna L2.
        case (_, []):
            return L1 # L2 vacía, retorna L1.
        case ([el1, *r1], [el2, *r2]): # ambas listas tienen al menos un elemento
            return [el1, el2] + combinaListas(r1, r2) # extraemos el primero de cada una, llamamos recursivamente con los restos


print(combinaListas([1,2,3], ["a","b","c"]))  #Se espera... [1, 'a', 2, 'b', 3, 'c']
print(combinaListas([1], ["a","b","c"]))  #Se espera... [1, 'a', 'b', 'c']
print(combinaListas([1,2,3], ["a"]))  #Se espera... [1, 'a', 2, 3]
print(combinaListas([1,2,3], []))  #Se espera... [1, 2, 3]
print(combinaListas([], ["a","b","c"]))  #Se espera... ['a', 'b', 'c']

