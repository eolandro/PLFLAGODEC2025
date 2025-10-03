def seq0(n):
    return 7 + 10 * (2**n - 1)

print(seq0(0))
print(seq0(1))
print(seq0(2))
print(seq0(3))
print(seq0(4))
print(seq0(5))

'''
Propuesta #2
def seq0(n):
	match n:
		case 0:
			return 7
		case n:
			P = (2 ** n) - 1
			S = "7"
			Q = str(P)+(S)
			return Q
'''