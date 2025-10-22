##R003##
##20##


from pathlib import Path

path = Path('cct22.csv')

with open(path, 'r', encoding='utf-8') as archivo:
    R = map(lambda linea: linea.strip().split(','), archivo)
    R = filter(lambda lista: len(lista) > 0, R)
    R = filter(lambda lista: lista[7] == "ACTIVO" or lista[7] == "C_ESTATUS", R)
    T = list(R)
    print(T)
 
