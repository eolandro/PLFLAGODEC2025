#-----------------------------------R002-----------------------------------#
#------------------------------------10------------------------------------#


'''
Dada la siguiente secuencia matematica 7, 17, 37, 77, 157, 317
Encuentre la función matematica recursiva e implementela en python
'''


#ANÁLISIS:
'''
- Las diferencias entre términos consecutivos son:
  17 - 7 = 10
  37 - 17 = 20
  77 - 37 = 40
  157 - 77 = 80
  317 - 157 = 160
- Estas diferencias siguen la regla: 10 * 2^(n-1)
'''

#FÓRMULA RECURSIVA:
'''
    seq0(0) = 7
    seq0(n) = seq0(n-1) + 10 * 2^(n-1),  para n > 0
'''

def seq0(n):
    if n == 0:  # caso base
        return 7
    return seq0(n-1) + 10 * (2**(n-1))  # caso recursivo


# Ejemplos de uso
print(seq0(0))  # 7
print(seq0(1))  # 17
print(seq0(2))  # 37
print(seq0(3))  # 77
print(seq0(4))  # 157
print(seq0(5))  # 317