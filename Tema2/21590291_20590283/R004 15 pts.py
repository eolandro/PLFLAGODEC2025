##R004##
##15##
"""
 Bada Boom!!! 
Genere e imprima una lista con los numeros del  1 al 100 
con las siguientes condiciones:
	1) si es multiplo de 3 coloque la cadena "Bada"
	2) si es multiplo de 5 coloque la cadena "Boom!!"
	3) si es multiplo de 3 y 5 coloque "Bada Boom!!"
	
def badaboom():
	pass
	
L = badaboom()
print(L)
#[1,2,"Bada",4,"Boom!!","Bada",7,8,"Bada","Boom!!",11,"Bada",13,14,"BadaBoom!!"...
"""

def badaboom(inicio, termina):
    if inicio > termina:
        return []
    if inicio % 3 == 0:
        if inicio % 5 == 0:
            r = "Bada Boom!!"  # si es multiplo de 5 coloque la cadena "Boom!!"
        else:
            r = "Bada"  # si es multiplo de 3 coloque la cadena "Bada"
    else:
        if inicio % 5 == 0:
            r = "Boom!!"  # si es multiplo de 5 coloque la cadena "Boom!!"
        else:
            r = inicio  #  si es multiplo de 3 y 5 coloque "Bada Boom!!"
    return [r] + badaboom(inicio + 1, termina)

# print(badaboom(1,15)) #[1,2,"Bada",4,"Boom!!","Bada",7,8,"Bada","Boom!!",11,"Bada",13,14,"BadaBoom!!"]
print(badaboom(1,100)) #[1,2,"Bada",4,"Boom!!","Bada",7,8,"Bada","Boom!!",11,"Bada",13,14,"BadaBoom!!"...

