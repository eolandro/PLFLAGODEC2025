from pathlib import Path

##R001##
##10##
"""
Del archivo cct22.csv abre el archivo en modo de solo lectura, agrega
comprobaciones para verificar la existencia del mismo.

Recomiendo el uso de la biblioteca Pathlib
"""

from pathlib import Path

Arch = Path('.').resolve()
print('Carpeta Actual:', Arch)
CSVAR = Arch / 'cct22.csv'
if CSVAR.exists():
    print('El archivo CSV existe')
else:
    print('El archivo CSV no existe')
    
#Carpeta Actual: C:\Users\javie\OneDrive\Desktop\PROLOG\Unidad_3\exa03
#El archivo CSV existe