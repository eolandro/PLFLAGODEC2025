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
            return []
        case ([], R2):
            return R2                   
        case (R1, []):
            return R1                   
        case ([P1, *R1], [P2, *R2]):
            return [P1, P2] + combinaListas(R1, R2)


R = combinaListas([1, 2, 3], ["a", "b", "c"])
print(R)  # [1, "a", 2, "b", 3, "c"]

R = combinaListas([1], ["a", "b", "c"])
print(R)  # [1, "a", "b", "c"]

R = combinaListas([1, 2, 3], ["a"])
print(R)  # [1, "a", 2, 3]

R = combinaListas([1, 2, 3], [])
print(R)  # [1, 2, 3]

R = combinaListas([], ["a", "b", "c"])
print(R)  # ["a", "b", "c"]
