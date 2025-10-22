##R004##
##20##
"""
Elabora una parcialización de la función que resuelva la Ley de Coulomb.
Compruebe la parcializacion considerando que una carga de 3×10^-6 C 
se encuentra 2 m de una carga de -8×10^-6 C
"""

def coulumb(q1,q2,k,r):
    return (k*(q1 * q2)) /r**2

def step(q1):
    def step2(q2):
        def step3(k):
            def step4(r):
                return coulumb(q1,q2,k,r)
            return step4
        return step3
    return step2

print(step(3e-78)(-8e-15)(9e9)(2))
