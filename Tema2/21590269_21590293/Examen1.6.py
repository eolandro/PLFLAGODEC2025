def combinaL(L1, L2):
    match (L1, L2):
        case ([], []):
            return []
        case ([], L2):
            return L2
        case (L1, []):
            return L1
        case ([x, *resto1], [y, *resto2]):
            return [x, y] + combinaL(resto1, resto2)
R = print(combinaL([1,2,3],["a","b","c"]))
R = print(combinaL([1],["a","b","c"]))
R = print(combinaL([1,2,3],["a"]))
R = print(combinaL([1,2,3],[]))
R = print(combinaL([],["a","b","c"]))
