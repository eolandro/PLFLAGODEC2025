##R002##
##10##

from pathlib import Path

path = Path('cct22.csv')

with open(path, 'r', encoding='utf-8') as archivo:
    R = map(lambda linea: linea.strip().split(','), archivo)
    R = filter(lambda lista: len(lista) > 0, R)
    T = list(R)
    
    print(T)
