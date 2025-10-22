##R001##
##10##

from pathlib import Path

path = Path('cct22.csv')

try:
    with path.open('r', encoding='utf-8') as archivo:
        # Usar map y filter para procesar
        R = map(lambda linea: linea.strip().split(','), archivo)
        R = filter(lambda lista: len(lista) > 0, R)
        T = list(R)
        
        print(T)

except FileNotFoundError:
    print(f"Error: El archivo '{path}' no existe.")
