##R006##
##20##
from pathlib import Path

path = Path('cct22.csv')
with open(path, 'r', encoding='utf-8') as archivo:
    R = map(lambda linea: linea.strip().split(','), archivo)
    R = filter(lambda lista: len(lista) > 0, R)
    R = filter(lambda lista: lista[7] == "ACTIVO" or lista[7] == "C_ESTATUS", R)
    Num_col = [2, 3, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92]
    R = map(lambda lista: [elem for i, elem in enumerate(lista) if i not in Num_col], R)
    R = filter(lambda lista: lista[70] != "actualizar@hotmail.com" and lista[70] != " ", R)
    R = filter(lambda lista: lista[68].strip() != "" and lista[69].strip() != "", R)
    T = list(R)
    print(T)
    