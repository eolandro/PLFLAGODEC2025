% Examen_03
% Daniel Martinez Hernandez 22590336
% Mauricio Dario Sandoval Mandujano 22590358

% R001

%nuera(Persona1,Persona2)
%bisnieto_a(Persona1,Persona2)
%abuelo_a(Persona1,Persona2)
%tio_abuelo_a(Persona1,Persona2)
%sobrino_a(Persona1,Persona2)

nuera(Mama,Nuera) :- descendiente(Mama,X),pareja(X,Nuera).
bisnieto_a(Bisabuelo,Bisnieto):- sucesor(Bisabuelo,Abuelo),sucesor(Abuelo,Padre),sucesor(Padre,Bisnieto).
abuelo_a(Abuelo,Nieto):- sucesor(Abuelo,Padre),sucesor(Padre,Nieto).

tio_abuelo_a(Tio_abuelo,Sobrino_nieto):- hermano(Tio_abuelo,Abuelo), abuelo_a(Abuelo,Sobrino_nieto).
tio_abuelo_a(Tio_abuelo,Sobrino_nieto):- hermano(Abuelo,Tio_abuelo), abuelo_a(Abuelo,Sobrino_nieto).


% Es hijo directo del hermano del tio
sobrino_a(Tio,Sobrino):- hermano(Tio,Parent),sucesor(Parent,Sobrino).
sobrino_a(Tio,Sobrino):- hermano(Parent,Tio),sucesor(Parent,Sobrino).

% Es hijo directo de la pareja del hermano del tio

sobrino_a(Tio_politico, Sobrino) :- pareja(Tio_politico, Tio_sangre), sobrino_a(Tio_sangre, Sobrino).
sobrino_a(Tio_politico, Sobrino) :- pareja(Tio_sangre,Tio_politico), sobrino_a(Tio_sangre, Sobrino).

% R002
% descendiente(PERSONA1,PERSONA2)
% Verifica si la persona2 es descendiente de la persona1

% Caso base
descendiente(PERSONA1, PERSONA2) :- 
    sucesor(PERSONA1, PERSONA2).

% Caso recursivo
descendiente(PERSONA1, PERSONA2) :- 
    sucesor(PERSONA1, X),
    descendiente(X, PERSONA2).


% R003

%Del arbol familiar anterior, implemente el siguiente predicado: (40pts)
%descendientes(PERSONA1,ListaDESCENDIENTES)
%Verifica obtiene todos los descendientes de PERSONA1

descendientes(PERSONA1, ListaDESCENDIENTES) :-
    findall(Descendiente, descendiente(PERSONA1, Descendiente), ListaDESCENDIENTES).

%set_prolog_flag(answer_write_options,[max_depth(0)])

% Todas las parejas
pareja(monsieur_delacour, apolline_delacour).
pareja(bill_weasley, fleur_isabelle_delacour).
pareja(percy_weasley, audrey_weasley).
pareja(george_weasley, angelina_johnson).
pareja(ron_weasley, hermione_granger).
pareja(harry_james_potter, ginny_weasley).
pareja(arthur_weasley, molly_prewett).
pareja(james_potter, lily_evans).
pareja(vernon_dursley, petunia_evans).
pareja(dudley_dursley, wife_dursley).
pareja(xenophilius_lovegood, pandora_lovegood).
pareja(rolf_scamander, luna_lovegood).
pareja(orion_black, walburga_black).
pareja(frank_longbottom, alice_longbottom).
pareja(neville_longbottom, hannah_abbot).
pareja(cygnus_black_iii, druella_rosier).
pareja(rodolphus_lestrange, bellatrix_black).
pareja(ted_tonks, andromeda_black).
pareja(remus_lupin, nymphadora_tonks).
pareja(lucius_malfoy, narcisa_black).
pareja(draco_lucius_malfoy, astoria_greengrass).
pareja(victoire_weasley,teddy_remus_lupin).


% Todos los hermanos


% hermanas Delacour
hermano(gabrielle_delacour,fleur_isabelle_delacour).
hermano(fleur_isabelle_delacour,gabrielle_delacour).

% Hermanas Evans
hermano(lily_evans, petunia_evans).
hermano(petunia_evans,lily_evans).


% Hermanos Dursley Gen 1
hermano(vernon_dursley, marjorie_eileen_dursley).
hermano(marjorie_eileen_dursley,vernon_dursley).


% Hermanos Dursley Gen 2
hermano(son1_dursley,son2_dursley).
hermano(son2_dursley,son1_dursley).


% Hermanas Greengrass
hermano(astoria_greengrass, daphne_greengrass).
hermano(daphne_greengrass,astoria_greengrass).

% Hermanos Black
hermano(walburga_black, cygnus_black_iii).
hermano(cygnus_black_iii,walburga_black).

% Hermanos Weasley Principales

% Bill - Charlie
hermano(bill_weasley, charlie_weasley).
hermano(charlie_weasley,bill_weasley).

% Bill - Percy
hermano(bill_weasley, percy_weasley).
hermano(percy_weasley,bill_weasley).

% Bill - Fred
hermano(bill_weasley, fred_weasley).
hermano(fred_weasley,bill_weasley).

% Bill - George
hermano(bill_weasley, george_weasley).
hermano(george_weasley,bill_weasley).

% Bill - Ron
hermano(bill_weasley, ron_weasley).
hermano(ron_weasley,bill_weasley).

% Bill - Ginny
hermano(bill_weasley, ginny_weasley).
hermano(ginny_weasley,bill_weasley).


% Charlie - Percy
hermano(charlie_weasley,percy_weasley).
hermano(percy_weasley,charlie_weasley).

% Charlie - Fred
hermano(charlie_weasley,fred_weasley).
hermano(fred_weasley,charlie_weasley).

% Chalie - George
hermano(charlie_weasley,george_weasley).
hermano(george_weasley,charlie_weasley).

% Charlie - Ron
hermano(charlie_weasley,ron_weasley).
hermano(ron_weasley,charlie_weasley).

% Charlie - Ginny
hermano(charlie_weasley,ginny_weasley).
hermano(ginny_weasley,charlie_weasley).

% Percy - Fred
hermano(percy_weasley,fred_weasley).
hermano(fred_weasley,percy_weasley).

% Percy - George
hermano(percy_weasley,george_weasley).
hermano(george_weasley,percy_weasley).

% Percy - Ron
hermano(percy_weasley,ron_weasley).
hermano(ron_weasley,percy_weasley).

% Percy - Ginny
hermano(percy_weasley,ginny_weasley).
hermano(ginny_weasley,percy_weasley).

% Fred - George
hermano(fred_weasley,george_weasley).
hermano(george_weasley,fred_weasley).

% Fred - Ron
hermano(fred_weasley,ron_weasley).
hermano(ron_weasley,fred_weasley).

% Fred - Ginny
hermano(fred_weasley,ginny_weasley).
hermano(ginny_weasley,fred_weasley).

% George - Ron
hermano(george_weasley,ron_weasley).
hermano(ron_weasley,george_weasley).

% George - Ginny
hermano(george_weasley,ginny_weasley).
hermano(ginny_weasley,george_weasley).

% Ron - Ginny
hermano(ron_weasley,ginny_weasley).
hermano(ginny_weasley,ron_weasley).



% Hermanas Weasley (Hijas de Bill)

% Victoire - Dominique
hermano(victoire_weasley,dominique_weasley).
hermano(dominique_weasley,victoire_weasley).

% Victoire - Louis
hermano(victoire_weasley,louis_weasley).
hermano(louis_weasley,victoire_weasley).


% Dominique - Louis
hermano(dominique_weasley,louis_weasley).
hermano(louis_weasley,dominique_weasley).


% Hermanas Weasley (Hijas de Percy)

% Molly - Lucy
hermano(molly_weasley_ii,lucy_weasley).
hermano(lucy_weasley,molly_weasley_ii).

% Hermanos Weasley (Hijo e Hija de George)
hermano(fred_weasley_ii,roxanne_weasley).
hermano(roxanne_weasley,fred_weasley_ii).

% Hermanos Weasley (Hijo e Hija de Ron)
hermano(rose_granger_weasley,hugo_granger_weasley).
hermano(hugo_granger_weasley,rose_granger_weasley).

% Hermanos Potter (Hijos de Harry)

% james-sirius-potter  - albus-serverus-potter

hermano(james_sirius_potter,albus_severus_potter).
hermano(albus_severus_potter,james_sirius_potter).

% james_sirius_potter - lily_luna_potter
hermano(james_sirius_potter,lily_luna_potter).
hermano(lily_luna_potter,james_sirius_potter).


% Hermanos Scamander 
hermano(lysander_scamander,lorcan_scamander).

% hermanas brujas (Hijas de Cygnus Black III)
hermano(bellatrix_black,andromeda_black).
hermano(bellatrix_black,narcisa_black).

hermano(andromeda_black,narcisa_black).
hermano(narcisa_black,andromeda_black).

% hermanos black (Hijos de Orion)
hermano(sirius_black,regulus_arcturus_black).
hermano(regulus_arcturus_black,sirius_black).


%Todos los sucesores

% Familia Delacour
sucesor(apolline_delacour, fleur_isabelle_delacour).
sucesor(apolline_delacour, gabrielle_delacour).
sucesor(monsieur_delacour, fleur_isabelle_delacour).
sucesor(monsieur_delacour, gabrielle_delacour).

% Familia Bill Weasley
sucesor(bill_weasley, victoire_weasley).
sucesor(bill_weasley, dominique_weasley).
sucesor(bill_weasley, louis_weasley).
sucesor(fleur_isabelle_delacour, victoire_weasley).
sucesor(fleur_isabelle_delacour, dominique_weasley).
sucesor(fleur_isabelle_delacour, louis_weasley).

% Familia Percy Weasley
sucesor(percy_weasley, molly_weasley_ii).
sucesor(percy_weasley, lucy_weasley).
sucesor(audrey_weasley, molly_weasley_ii).
sucesor(audrey_weasley, lucy_weasley).

% Familia George Weasley
sucesor(george_weasley, fred_weasley_ii).
sucesor(george_weasley, roxanne_weasley).
sucesor(angelina_johnson, fred_weasley_ii).
sucesor(angelina_johnson, roxanne_weasley).

% Familia Ron Weasley
sucesor(ron_weasley, rose_granger_weasley).
sucesor(ron_weasley, hugo_granger_weasley).
sucesor(hermione_granger, rose_granger_weasley).
sucesor(hermione_granger, hugo_granger_weasley).

% Familia Harry Potter
sucesor(harry_james_potter, lily_luna_potter).
sucesor(harry_james_potter, james_sirius_potter).
sucesor(harry_james_potter, albus_severus_potter).
sucesor(ginny_weasley, lily_luna_potter).
sucesor(ginny_weasley, james_sirius_potter).
sucesor(ginny_weasley, albus_severus_potter).

% Familia Weasley (Arthur y Molly)
sucesor(arthur_weasley, bill_weasley).
sucesor(arthur_weasley, charlie_weasley).
sucesor(arthur_weasley, percy_weasley).
sucesor(arthur_weasley, fred_weasley).
sucesor(arthur_weasley, george_weasley).
sucesor(arthur_weasley, ron_weasley).
sucesor(arthur_weasley, ginny_weasley).
sucesor(molly_prewett, bill_weasley).
sucesor(molly_prewett, charlie_weasley).
sucesor(molly_prewett, percy_weasley).
sucesor(molly_prewett, fred_weasley).
sucesor(molly_prewett, george_weasley).
sucesor(molly_prewett, ron_weasley).
sucesor(molly_prewett, ginny_weasley).

% Familia Potter (James y Lily)
sucesor(james_potter, harry_james_potter).
sucesor(lily_evans, harry_james_potter).

% Familia Dursley
sucesor(vernon_dursley, dudley_dursley).
sucesor(petunia_evans, dudley_dursley).
sucesor(dudley_dursley, son1_dursley).
sucesor(dudley_dursley, son2_dursley).
sucesor(wife_dursley, son1_dursley).
sucesor(wife_dursley, son2_dursley).

% Familia Lovegood
sucesor(xenophilius_lovegood, luna_lovegood).
sucesor(pandora_lovegood, luna_lovegood).
sucesor(rolf_scamander, lysander_scamander).
sucesor(rolf_scamander, lorcan_scamander).
sucesor(luna_lovegood, lysander_scamander).
sucesor(luna_lovegood, lorcan_scamander).

% Familia Black
sucesor(orion_black, sirius_black).
sucesor(orion_black, regulus_arcturus_black).
sucesor(walburga_black, sirius_black).
sucesor(walburga_black, regulus_arcturus_black).

% Familia Longbottom
sucesor(frank_longbottom, neville_longbottom).
sucesor(alice_longbottom, neville_longbottom).

% Las 3 brujas (Familia Black-Rosier)
sucesor(cygnus_black_iii, bellatrix_black).
sucesor(cygnus_black_iii, narcisa_black).
sucesor(cygnus_black_iii, andromeda_black).
sucesor(druella_rosier, bellatrix_black).
sucesor(druella_rosier, narcisa_black).
sucesor(druella_rosier, andromeda_black).

% Familia Tonks
sucesor(ted_tonks, nymphadora_tonks).
sucesor(andromeda_black, nymphadora_tonks).
sucesor(remus_lupin, teddy_remus_lupin).
sucesor(nymphadora_tonks, teddy_remus_lupin).

% Familia Malfoy
sucesor(lucius_malfoy, draco_lucius_malfoy).
sucesor(narcisa_black, draco_lucius_malfoy).
sucesor(draco_lucius_malfoy, scorpius_hyperion_malfoy).
sucesor(astoria_greengrass, scorpius_hyperion_malfoy).


% ##R005##

seq0(0,7). 
seq0(N,R) :- NN is N-1, seq0(NN,RR), R is 2 * RR + 3.


% ##R006##

grafo("A","B").
grafo("B","C").
grafo("C","D").
grafo("D","E").
grafo("E","F").
grafo("F","G").
grafo("G","H").
grafo("H","I").
grafo("I","J").
grafo("J","A").

imp_graf_cir(Limite,Limite) :- write(Limite), nl.
imp_graf_cir(Inicio,Limite) :- Inicio \== Limite, write(Inicio), nl, grafo(Inicio,Sig), imp_graf_cir(Sig, Limite). 


% ##R007##

badaboomcomp(N) :- R is N mod 3, R =:= 0, RR is N mod 5, RR=:=0, write("Bada Boom!!"), nl.
badaboomcomp(N) :- R is N mod 3, R =:= 0, write("Bada"), nl.
badaboomcomp(N) :- R is N mod 5, R =:= 0, write("Boom!!"), nl.
badaboomcomp(N) :- write(N), nl.

contador(Cont, Fin) :- Cont > Fin.
contador(Cont, Fin) :- Cont =< Fin, badaboomcomp(Cont), Sig is Cont + 1, contador(Sig, Fin).

badaboom(N) :- contador(1,N).


% ##R008##

mandelBrot(0,R) :- R = 1.
mandelBrot(N,R) :- NN is N-1, mandelBrot(NN, RR), R is RR ^ 2 + 1.


% ##R009##

combina_listas([],[],[]).
combina_listas([],[G|D],[G|D]).
combina_listas([F|C],[],[F|C]).
combina_listas([F|C],[G|D],[F, G | R]) :- combina_listas(C,D,R).
