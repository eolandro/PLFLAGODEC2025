uuid_list([
    A1,A2,A3,A4,A5,A6,A7,A8,"-",
    B1,B2,B3,B4,"-",
    "4",C2,C3,C4,"-",
    V1,D2,D3,D4,"-",
    E1,E2,E3,E4,E5,E6,E7,E8,E9,E10,E11,E12
]) :-

    hex(A1), hex(A2), hex(A3), hex(A4),
    hex(A5), hex(A6), hex(A7), hex(A8),

    hex(B1), hex(B2), hex(B3), hex(B4),

    hex(C2), hex(C3), hex(C4),

    variante(V1),
    hex(D2), hex(D3), hex(D4),

    hex(E1), hex(E2), hex(E3), hex(E4),
    hex(E5), hex(E6), hex(E7), hex(E8),
    hex(E9), hex(E10), hex(E11), hex(E12).
