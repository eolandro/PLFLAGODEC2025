from pathlib import Path
##R007##
##20##
"""
Del ejercicio anterior, recupera las coordenas geograficas del tec
de san juan y su clave 'CV_CCT'
"""

def coordenas(fila):
    U = fila[1]
    R = [ U == 'INSTITUTO TECNOLOGICO DE SAN JUAN DEL RIO']
    
    return any(R)

Arch = Path('.').resolve()
print('Carpeta actual:', Arch)
CSVAR = Arch / 'cct22.csv'
if CSVAR.exists():
    print('El archivo CSV existe')
    with CSVAR.open('rt', encoding='utf-8-sig') as archivo:
        A = archivo.readline()
        F = lambda B: B.strip().split(',')
        R = map(F, archivo)
        U = filter(coordenas, R)
        V = list(set((fila[32], fila[33]) for fila in U))  
        print(V)  
        
else:
    print('El archivo CSV no existe')