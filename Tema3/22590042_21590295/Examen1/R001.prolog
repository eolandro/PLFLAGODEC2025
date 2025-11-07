% --- Familia Weasley–Prewett ---
descendiente(arthur, bill).
descendiente(arthur, charlie).
descendiente(arthur, percy).
descendiente(arthur, fred).
descendiente(arthur, george).
descendiente(arthur, ronald).
descendiente(arthur, ginny).

descendiente(molly, bill).
descendiente(molly, charlie).
descendiente(molly, percy).
descendiente(molly, fred).
descendiente(molly, george).
descendiente(molly, ronald).
descendiente(molly, ginny).

% Hijos de Bill y Fleur
descendiente(bill, victoire).
descendiente(bill, dominique).
descendiente(bill, louis).
descendiente(fleur, victoire).
descendiente(fleur, dominique).
descendiente(fleur, louis).

% Hijos de Percy y Audrey
descendiente(percy, molly2).
descendiente(percy, lucy).
descendiente(audrey, molly2).
descendiente(audrey, lucy).

% Hijos de George y Angelina
descendiente(george, fred2).
descendiente(george, roxanne).
descendiente(angelina, fred2).
descendiente(angelina, roxanne).

% Hijos de Ron y Hermione
descendiente(ronald, rose).
descendiente(ronald, hugo).
descendiente(hermione, rose).
descendiente(hermione, hugo).

% Hijos de Harry y Ginny
descendiente(harry, james).
descendiente(harry, albus).
descendiente(harry, lily).
descendiente(ginny, james).
descendiente(ginny, albus).
descendiente(ginny, lily).

% Padres de Harry
descendiente(james_potter, harry).
descendiente(lily_potter, harry).

% --- Familia Black–Malfoy–Lestrange–Tonks ---
descendiente(cygnus, bellatrix).
descendiente(cygnus, andromeda).
descendiente(cygnus, narcissa).
descendiente(druella, bellatrix).
descendiente(druella, andromeda).
descendiente(druella, narcissa).

descendiente(andromeda, nymphadora).
descendiente(ted, nymphadora).

descendiente(nymphadora, teddy).
descendiente(remus, teddy).

descendiente(lucius, draco).
descendiente(narcissa, draco).

descendiente(draco, scorpius).
descendiente(astoria, scorpius).

% --- Familia Dursley ---
descendiente(vernon, dudley).
descendiente(petunia, dudley).

% --- Familia Longbottom ---
descendiente(mr_longbottom, frank).
descendiente(augusta, frank).
descendiente(frank, neville).
descendiente(alice, neville).

descendiente(neville, --). 
descendiente(hannah, --).

% --- Familia Delacour ---
descendiente(monsieur, fleur).
descendiente(monsieur, gabrielle).
descendiente(apolline, fleur).
descendiente(apolline, gabrielle).

descendiente(fleur, victoire).
descendiente(fleur, dominique).
descendiente(fleur, louis).
descendiente(bill, victoire).
descendiente(bill, dominique).
descendiente(bill, louis).

% --- Familia Lovegood–Scamander ---
descendiente(xenophilius, luna).
descendiente(lunas_mum, luna).

descendiente(luna, lorcan).
descendiente(luna, lysander).
descendiente(rolf, lorcan).
descendiente(rolf, lysander).


% --- Esposos/esposas ---
esposo(arthur, molly).
esposo(bill, fleur).
esposo(percy, audrey).
esposo(george, angelina).
esposo(ronald, hermione).
esposo(harry, ginny).
esposo(james_potter, lily_potter).

esposo(cygnus, druella).
esposo(rodolphus, bellatrix).
esposo(ted, andromeda).
esposo(remus, nymphadora).
esposo(lucius, narcissa).
esposo(draco, astoria).
esposo(vernon, petunia).

esposo(frank, alice).
esposo(neville, hannah).
esposo(monsieur_delacour, apolline).
esposo(xenophilius, lunas_mum).
esposo(rolf, luna).

% --- Reglas ---
esposa(X,Y) :- esposo(Y,X).
pareja(X,Y) :- esposo(X,Y).
pareja(X,Y) :- esposa(X,Y).

% Herman@
hermano(P1, P2) :- P1 \== P2, descendiente(As, P1), descendiente(As, P2).

% Abuel@
abuelo(P1, P2) :- descendiente(P2, H), descendiente(H, P1).

% Bisniet@
bisnieto(P1, P2) :- descendiente(P1, N), descendiente(N, H), descendiente(H, P2).

% Nuer@
nuera(P1, P2) :- esposo(Hijo, P1), descendiente(P2, Hijo).

% Sobrin@
sobrino(P1, P2) :- descendiente(P1, P), hermano(P, P2).

% Ti@_abuel@
tio_abuelo(P1, P2) :- abuelo(A, P2), hermano(P1, A).
