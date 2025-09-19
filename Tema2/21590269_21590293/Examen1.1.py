def matrix(M):
    match M:
        case []:
            return []
        case [P,*R]:
            print(P, end=",\n" if R else "")
            matrix(R)

M = [
    [9,8,7],
    [4,5,6],
    [3,2,1]
]

matrix(M)