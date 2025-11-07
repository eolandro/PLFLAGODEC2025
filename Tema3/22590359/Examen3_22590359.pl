%##R001##
%##50##
% Arbol
% 
% Tomando el arbol genealogico sugerido
% realice la base de conocimientos e implemente los siguientes 
% predicados, siempre devuelven verdadero o falso
% 
% 
% nuera(Persona1,Persona2)
% bisnieto_a(Persona1,Persona2)
% sobrino_a(Persona1,Persona2)
% abuelo_a(Persona1,Persona2)
% tio_abuelo_a(Persona1,Persona2)
% 
% https://es.wikipedia.org/wiki/Anexo:Nomenclatura_de_parentesco_en_espa%C3%B1ol

progenitor_de(X, Y) :- padre_de(X, Y).
progenitor_de(X, Y) :- madre_de(X, Y).

conyuge_de(X, Y) :- esposo_de(X, Y).
conyuge_de(X, Y) :- esposa_de(X, Y).

esposo_de(monsieur_delacour, apolline_delacour).
esposo_de(bill_weasley, fleur_isabelle_delacour).
esposo_de(percy_weasley, audrey_weasley).
esposo_de(george_weasley, angelina_johnson).
esposo_de(ron_weasley, hermione_granger).
esposo_de(harry_james_potter, ginny_weasley).
esposo_de(arthur_weasley, molly_prewett).
esposo_de(james_potter, lily_evans).
esposo_de(vernon_dursley, petunia_evans).
esposo_de(dudley_dursley, wife_dursley).
esposo_de(xenophilius_lovegood, pandora_lovegood).
esposo_de(rolf_scamander, luna_lovegood).
esposo_de(orion_black, walburga_black).
esposo_de(frank_longbottom, alice_longbottom).
esposo_de(neville_longbottom, hannah_abbott).
esposo_de(cygnus_black_iii, druella_rosier).
esposo_de(rodolphus_lestrange, bellatrix_black).
esposo_de(ted_tonks, andromeda_black).
esposo_de(remus_lupin, nymphadora_tonks).
esposo_de(lucius_malfoy, narcisa_black).
esposo_de(draco_lucius_malfoy, astoria_greengrass).
esposo_de(louis_weasley, teddy_remus_lupin).

esposa_de(X, Y) :- esposo_de(Y, X).

padre_de(monsieur_delacour, gabrielle_delacour).
padre_de(monsieur_delacour, fleur_isabelle_delacour).
madre_de(apolline_delacour, gabrielle_delacour).
madre_de(apolline_delacour, fleur_isabelle_delacour).

padre_de(arthur_weasley, bill_weasley).
padre_de(arthur_weasley, charlie_weasley).
padre_de(arthur_weasley, percy_weasley).
padre_de(arthur_weasley, fred_weasley).
padre_de(arthur_weasley, george_weasley).
padre_de(arthur_weasley, ron_weasley).
padre_de(arthur_weasley, ginny_weasley).

madre_de(molly_prewett, bill_weasley).
madre_de(molly_prewett, charlie_weasley).
madre_de(molly_prewett, percy_weasley).
madre_de(molly_prewett, fred_weasley).
madre_de(molly_prewett, george_weasley).
madre_de(molly_prewett, ron_weasley).
madre_de(molly_prewett, ginny_weasley).

padre_de(bill_weasley, victoire_weasley).
padre_de(bill_weasley, dominique_weasley).
padre_de(bill_weasley, louis_weasley).
madre_de(fleur_isabelle_delacour, victoire_weasley).
madre_de(fleur_isabelle_delacour, dominique_weasley).
madre_de(fleur_isabelle_delacour, louis_weasley).

padre_de(percy_weasley, molly_weasley_ii).
padre_de(percy_weasley, lucy_weasley).
madre_de(audrey_weasley, molly_weasley_ii).
madre_de(audrey_weasley, lucy_weasley).

padre_de(george_weasley, fred_weasley_ii).
padre_de(george_weasley, roxanne_weasley).
madre_de(angelina_johnson, fred_weasley_ii).
madre_de(angelina_johnson, roxanne_weasley).

padre_de(ron_weasley, rose_granger_weasley).
padre_de(ron_weasley, hugo_granger_weasley).
madre_de(hermione_granger, rose_granger_weasley).
madre_de(hermione_granger, hugo_granger_weasley).

padre_de(harry_james_potter, james_sirius_potter).
padre_de(harry_james_potter, albus_severus_potter).
padre_de(harry_james_potter, lily_luna_potter).
madre_de(ginny_weasley, james_sirius_potter).
madre_de(ginny_weasley, albus_severus_potter).
madre_de(ginny_weasley, lily_luna_potter).

padre_de(james_potter, harry_james_potter).
madre_de(lily_evans, harry_james_potter).

padre_de(vernon_dursley, dudley_dursley).
madre_de(petunia_evans, dudley_dursley).
padre_de(dudley_dursley, son1_dursley).
padre_de(dudley_dursley, son2_dursley).
madre_de(wife_dursley, son1_dursley).
madre_de(wife_dursley, son2_dursley).

padre_de(xenophilius_lovegood, luna_lovegood).
madre_de(pandora_lovegood, luna_lovegood).
padre_de(rolf_scamander, lysander_scamander).
padre_de(rolf_scamander, lorcan_scamander).
madre_de(luna_lovegood, lysander_scamander).
madre_de(luna_lovegood, lorcan_scamander).

padre_de(orion_black, sirius_black).
padre_de(orion_black, regulus_arcturus_black).
madre_de(walburga_black, sirius_black).
madre_de(walburga_black, regulus_arcturus_black).

padre_de(frank_longbottom, neville_longbottom).
madre_de(alice_longbottom, neville_longbottom).

padre_de(cygnus_black_iii, bellatrix_black).
padre_de(cygnus_black_iii, narcisa_black).
padre_de(cygnus_black_iii, andromeda_black).
madre_de(druella_rosier, bellatrix_black).
madre_de(druella_rosier, narcisa_black).
madre_de(druella_rosier, andromeda_black).

padre_de(ted_tonks, nymphadora_tonks).
madre_de(andromeda_black, nymphadora_tonks).
padre_de(remus_lupin, teddy_remus_lupin).
madre_de(nymphadora_tonks, teddy_remus_lupin).

padre_de(lucius_malfoy, draco_lucius_malfoy).
madre_de(narcisa_black, draco_lucius_malfoy).
padre_de(draco_lucius_malfoy, scorpius_hyperion_malfoy).
madre_de(astoria_greengrass, scorpius_hyperion_malfoy).

hermano_de(bill_weasley, charlie_weasley).
hermano_de(bill_weasley, percy_weasley).
hermano_de(bill_weasley, fred_weasley).
hermano_de(bill_weasley, george_weasley).
hermano_de(bill_weasley, ron_weasley).
hermano_de(bill_weasley, ginny_weasley).

hermano_de(charlie_weasley, bill_weasley).
hermano_de(charlie_weasley, percy_weasley).
hermano_de(charlie_weasley, fred_weasley).
hermano_de(charlie_weasley, george_weasley).
hermano_de(charlie_weasley, ron_weasley).
hermano_de(charlie_weasley, ginny_weasley).

hermano_de(percy_weasley, bill_weasley).
hermano_de(percy_weasley, charlie_weasley).
hermano_de(percy_weasley, fred_weasley).
hermano_de(percy_weasley, george_weasley).
hermano_de(percy_weasley, ron_weasley).
hermano_de(percy_weasley, ginny_weasley).

hermano_de(fred_weasley, bill_weasley).
hermano_de(fred_weasley, charlie_weasley).
hermano_de(fred_weasley, percy_weasley).
hermano_de(fred_weasley, george_weasley).
hermano_de(fred_weasley, ron_weasley).
hermano_de(fred_weasley, ginny_weasley).

hermano_de(george_weasley, bill_weasley).
hermano_de(george_weasley, charlie_weasley).
hermano_de(george_weasley, percy_weasley).
hermano_de(george_weasley, fred_weasley).
hermano_de(george_weasley, ron_weasley).
hermano_de(george_weasley, ginny_weasley).

hermano_de(ron_weasley, bill_weasley).
hermano_de(ron_weasley, charlie_weasley).
hermano_de(ron_weasley, percy_weasley).
hermano_de(ron_weasley, fred_weasley).
hermano_de(ron_weasley, george_weasley).
hermano_de(ron_weasley, ginny_weasley).

hermano_de(ginny_weasley, bill_weasley).
hermano_de(ginny_weasley, charlie_weasley).
hermano_de(ginny_weasley, percy_weasley).
hermano_de(ginny_weasley, fred_weasley).
hermano_de(ginny_weasley, george_weasley).
hermano_de(ginny_weasley, ron_weasley).

hermano_de(fleur_isabelle_delacour, gabrielle_delacour).
hermano_de(gabrielle_delacour, fleur_isabelle_delacour).

hermano_de(lily_evans, petunia_evans).
hermano_de(petunia_evans, lily_evans).

hermano_de(bellatrix_black, andromeda_black).
hermano_de(bellatrix_black, narcisa_black).
hermano_de(andromeda_black, bellatrix_black).
hermano_de(andromeda_black, narcisa_black).
hermano_de(narcisa_black, bellatrix_black).
hermano_de(narcisa_black, andromeda_black).

hermano_de(sirius_black, regulus_arcturus_black).
hermano_de(regulus_arcturus_black, sirius_black).

nuera(Persona, Suegra) :-
    progenitor_de(Suegra, Hijo),
    esposa_de(Persona, Hijo).

bisnieto_a(Bisnieto, Bisabuelo) :-
    progenitor_de(Bisabuelo, Hijo),
    progenitor_de(Hijo, Nieto),
    progenitor_de(Nieto, Bisnieto).

sobrino_a(Sobrino, Tio) :-
    hermano_de(Tio, Progenitor),
    progenitor_de(Progenitor, Sobrino).

abuelo_a(Abuelo, Nieto) :-
    progenitor_de(Abuelo, Padre),
    progenitor_de(Padre, Nieto).

tio_abuelo_a(TioAbuelo, SobrinoNieto) :-
    abuelo_a(Abuelo, SobrinoNieto),
    hermano_de(Abuelo, TioAbuelo),
    TioAbuelo \= Abuelo.

nieto_a(Nieto, Abuelo) :-
    progenitor_de(Abuelo, Padre),
    progenitor_de(Padre, Nieto).

% ##R002##
% ##20##
% """
% Del arbol familiar anterior, implemente el siguiente predicado: (20pts)
% descendiente(PERSONA1,PERSONA2)
% Verifica si la persona2 es descendiente de la persona1
% """

progenitor_de(X, Y) :- padre_de(X, Y).
progenitor_de(X, Y) :- madre_de(X, Y).

conyuge_de(X, Y) :- esposo_de(X, Y).
conyuge_de(X, Y) :- esposa_de(X, Y).

esposo_de(monsieur_delacour, apolline_delacour).
esposo_de(bill_weasley, fleur_isabelle_delacour).
esposo_de(percy_weasley, audrey_weasley).
esposo_de(george_weasley, angelina_johnson).
esposo_de(ron_weasley, hermione_granger).
esposo_de(harry_james_potter, ginny_weasley).
esposo_de(arthur_weasley, molly_prewett).
esposo_de(james_potter, lily_evans).
esposo_de(vernon_dursley, petunia_evans).
esposo_de(dudley_dursley, wife_dursley).
esposo_de(xenophilius_lovegood, pandora_lovegood).
esposo_de(rolf_scamander, luna_lovegood).
esposo_de(orion_black, walburga_black).
esposo_de(frank_longbottom, alice_longbottom).
esposo_de(neville_longbottom, hannah_abbott).
esposo_de(cygnus_black_iii, druella_rosier).
esposo_de(rodolphus_lestrange, bellatrix_black).
esposo_de(ted_tonks, andromeda_black).
esposo_de(remus_lupin, nymphadora_tonks).
esposo_de(lucius_malfoy, narcisa_black).
esposo_de(draco_lucius_malfoy, astoria_greengrass).
esposo_de(louis_weasley, teddy_remus_lupin).

esposa_de(X, Y) :- esposo_de(Y, X).

padre_de(monsieur_delacour, gabrielle_delacour).
padre_de(monsieur_delacour, fleur_isabelle_delacour).
madre_de(apolline_delacour, gabrielle_delacour).
madre_de(apolline_delacour, fleur_isabelle_delacour).

padre_de(arthur_weasley, bill_weasley).
padre_de(arthur_weasley, charlie_weasley).
padre_de(arthur_weasley, percy_weasley).
padre_de(arthur_weasley, fred_weasley).
padre_de(arthur_weasley, george_weasley).
padre_de(arthur_weasley, ron_weasley).
padre_de(arthur_weasley, ginny_weasley).

madre_de(molly_prewett, bill_weasley).
madre_de(molly_prewett, charlie_weasley).
madre_de(molly_prewett, percy_weasley).
madre_de(molly_prewett, fred_weasley).
madre_de(molly_prewett, george_weasley).
madre_de(molly_prewett, ron_weasley).
madre_de(molly_prewett, ginny_weasley).

padre_de(bill_weasley, victoire_weasley).
padre_de(bill_weasley, dominique_weasley).
padre_de(bill_weasley, louis_weasley).
madre_de(fleur_isabelle_delacour, victoire_weasley).
madre_de(fleur_isabelle_delacour, dominique_weasley).
madre_de(fleur_isabelle_delacour, louis_weasley).

padre_de(percy_weasley, molly_weasley_ii).
padre_de(percy_weasley, lucy_weasley).
madre_de(audrey_weasley, molly_weasley_ii).
madre_de(audrey_weasley, lucy_weasley).

padre_de(george_weasley, fred_weasley_ii).
padre_de(george_weasley, roxanne_weasley).
madre_de(angelina_johnson, fred_weasley_ii).
madre_de(angelina_johnson, roxanne_weasley).

padre_de(ron_weasley, rose_granger_weasley).
padre_de(ron_weasley, hugo_granger_weasley).
madre_de(hermione_granger, rose_granger_weasley).
madre_de(hermione_granger, hugo_granger_weasley).

padre_de(harry_james_potter, james_sirius_potter).
padre_de(harry_james_potter, albus_severus_potter).
padre_de(harry_james_potter, lily_luna_potter).
madre_de(ginny_weasley, james_sirius_potter).
madre_de(ginny_weasley, albus_severus_potter).
madre_de(ginny_weasley, lily_luna_potter).

padre_de(james_potter, harry_james_potter).
madre_de(lily_evans, harry_james_potter).

padre_de(vernon_dursley, dudley_dursley).
madre_de(petunia_evans, dudley_dursley).
padre_de(dudley_dursley, son1_dursley).
padre_de(dudley_dursley, son2_dursley).
madre_de(wife_dursley, son1_dursley).
madre_de(wife_dursley, son2_dursley).

padre_de(xenophilius_lovegood, luna_lovegood).
madre_de(pandora_lovegood, luna_lovegood).
padre_de(rolf_scamander, lysander_scamander).
padre_de(rolf_scamander, lorcan_scamander).
madre_de(luna_lovegood, lysander_scamander).
madre_de(luna_lovegood, lorcan_scamander).

padre_de(orion_black, sirius_black).
padre_de(orion_black, regulus_arcturus_black).
madre_de(walburga_black, sirius_black).
madre_de(walburga_black, regulus_arcturus_black).

padre_de(frank_longbottom, neville_longbottom).
madre_de(alice_longbottom, neville_longbottom).

padre_de(cygnus_black_iii, bellatrix_black).
padre_de(cygnus_black_iii, narcisa_black).
padre_de(cygnus_black_iii, andromeda_black).
madre_de(druella_rosier, bellatrix_black).
madre_de(druella_rosier, narcisa_black).
madre_de(druella_rosier, andromeda_black).

padre_de(ted_tonks, nymphadora_tonks).
madre_de(andromeda_black, nymphadora_tonks).
padre_de(remus_lupin, teddy_remus_lupin).
madre_de(nymphadora_tonks, teddy_remus_lupin).

padre_de(lucius_malfoy, draco_lucius_malfoy).
madre_de(narcisa_black, draco_lucius_malfoy).
padre_de(draco_lucius_malfoy, scorpius_hyperion_malfoy).
madre_de(astoria_greengrass, scorpius_hyperion_malfoy).

hermano_de(bill_weasley, charlie_weasley).
hermano_de(bill_weasley, percy_weasley).
hermano_de(bill_weasley, fred_weasley).
hermano_de(bill_weasley, george_weasley).
hermano_de(bill_weasley, ron_weasley).
hermano_de(bill_weasley, ginny_weasley).

hermano_de(charlie_weasley, bill_weasley).
hermano_de(charlie_weasley, percy_weasley).
hermano_de(charlie_weasley, fred_weasley).
hermano_de(charlie_weasley, george_weasley).
hermano_de(charlie_weasley, ron_weasley).
hermano_de(charlie_weasley, ginny_weasley).

hermano_de(percy_weasley, bill_weasley).
hermano_de(percy_weasley, charlie_weasley).
hermano_de(percy_weasley, fred_weasley).
hermano_de(percy_weasley, george_weasley).
hermano_de(percy_weasley, ron_weasley).
hermano_de(percy_weasley, ginny_weasley).

hermano_de(fred_weasley, bill_weasley).
hermano_de(fred_weasley, charlie_weasley).
hermano_de(fred_weasley, percy_weasley).
hermano_de(fred_weasley, george_weasley).
hermano_de(fred_weasley, ron_weasley).
hermano_de(fred_weasley, ginny_weasley).

hermano_de(george_weasley, bill_weasley).
hermano_de(george_weasley, charlie_weasley).
hermano_de(george_weasley, percy_weasley).
hermano_de(george_weasley, fred_weasley).
hermano_de(george_weasley, ron_weasley).
hermano_de(george_weasley, ginny_weasley).

hermano_de(ron_weasley, bill_weasley).
hermano_de(ron_weasley, charlie_weasley).
hermano_de(ron_weasley, percy_weasley).
hermano_de(ron_weasley, fred_weasley).
hermano_de(ron_weasley, george_weasley).
hermano_de(ron_weasley, ginny_weasley).

hermano_de(ginny_weasley, bill_weasley).
hermano_de(ginny_weasley, charlie_weasley).
hermano_de(ginny_weasley, percy_weasley).
hermano_de(ginny_weasley, fred_weasley).
hermano_de(ginny_weasley, george_weasley).
hermano_de(ginny_weasley, ron_weasley).

hermano_de(fleur_isabelle_delacour, gabrielle_delacour).
hermano_de(gabrielle_delacour, fleur_isabelle_delacour).

hermano_de(lily_evans, petunia_evans).
hermano_de(petunia_evans, lily_evans).

hermano_de(bellatrix_black, andromeda_black).
hermano_de(bellatrix_black, narcisa_black).
hermano_de(andromeda_black, bellatrix_black).
hermano_de(andromeda_black, narcisa_black).
hermano_de(narcisa_black, bellatrix_black).
hermano_de(narcisa_black, andromeda_black).

hermano_de(sirius_black, regulus_arcturus_black).
hermano_de(regulus_arcturus_black, sirius_black).

nuera(Persona, Suegra) :-
    progenitor_de(Suegra, Hijo),
    esposa_de(Persona, Hijo).

bisnieto_a(Bisnieto, Bisabuelo) :-
    progenitor_de(Bisabuelo, Hijo),
    progenitor_de(Hijo, Nieto),
    progenitor_de(Nieto, Bisnieto).

sobrino_a(Sobrino, Tio) :-
    hermano_de(Tio, Progenitor),
    progenitor_de(Progenitor, Sobrino).

abuelo_a(Abuelo, Nieto) :-
    progenitor_de(Abuelo, Padre),
    progenitor_de(Padre, Nieto).

tio_abuelo_a(TioAbuelo, SobrinoNieto) :-
    abuelo_a(Abuelo, SobrinoNieto),
    hermano_de(Abuelo, TioAbuelo),
    TioAbuelo \= Abuelo.

hermano_general(X, Y) :-
    X \= Y,
    progenitor_de(Padre, X),
    progenitor_de(Padre, Y).

nieto_a(Nieto, Abuelo) :-
    progenitor_de(Abuelo, Padre),
    progenitor_de(Padre, Nieto).
    
descendiente(Ascendiente, Descendiente) :-
    progenitor_de(Ascendiente, Descendiente).
descendiente(Ascendiente, Descendiente) :-
    progenitor_de(Ascendiente, Intermedio),
    descendiente(Intermedio, Descendiente).

%##R003##
%##20##
%"""
%Del arbol familiar anterior, implemente el siguiente predicado: (40pts)
%descendientes(PERSONA1,ListaDESCENDIENTES)
%Verifica obtiene todos los descendientes de PERSONA1
%"""

progenitor_de(X, Y) :- padre_de(X, Y).
progenitor_de(X, Y) :- madre_de(X, Y).

conyuge_de(X, Y) :- esposo_de(X, Y).
conyuge_de(X, Y) :- esposa_de(X, Y).

esposo_de(monsieur_delacour, apolline_delacour).
esposo_de(bill_weasley, fleur_isabelle_delacour).
esposo_de(percy_weasley, audrey_weasley).
esposo_de(george_weasley, angelina_johnson).
esposo_de(ron_weasley, hermione_granger).
esposo_de(harry_james_potter, ginny_weasley).
esposo_de(arthur_weasley, molly_prewett).
esposo_de(james_potter, lily_evans).
esposo_de(vernon_dursley, petunia_evans).
esposo_de(dudley_dursley, wife_dursley).
esposo_de(xenophilius_lovegood, pandora_lovegood).
esposo_de(rolf_scamander, luna_lovegood).
esposo_de(orion_black, walburga_black).
esposo_de(frank_longbottom, alice_longbottom).
esposo_de(neville_longbottom, hannah_abbott).
esposo_de(cygnus_black_iii, druella_rosier).
esposo_de(rodolphus_lestrange, bellatrix_black).
esposo_de(ted_tonks, andromeda_black).
esposo_de(remus_lupin, nymphadora_tonks).
esposo_de(lucius_malfoy, narcisa_black).
esposo_de(draco_lucius_malfoy, astoria_greengrass).
esposo_de(louis_weasley, teddy_remus_lupin).

esposa_de(X, Y) :- esposo_de(Y, X).

padre_de(monsieur_delacour, gabrielle_delacour).
padre_de(monsieur_delacour, fleur_isabelle_delacour).
madre_de(apolline_delacour, gabrielle_delacour).
madre_de(apolline_delacour, fleur_isabelle_delacour).

padre_de(arthur_weasley, bill_weasley).
padre_de(arthur_weasley, charlie_weasley).
padre_de(arthur_weasley, percy_weasley).
padre_de(arthur_weasley, fred_weasley).
padre_de(arthur_weasley, george_weasley).
padre_de(arthur_weasley, ron_weasley).
padre_de(arthur_weasley, ginny_weasley).

madre_de(molly_prewett, bill_weasley).
madre_de(molly_prewett, charlie_weasley).
madre_de(molly_prewett, percy_weasley).
madre_de(molly_prewett, fred_weasley).
madre_de(molly_prewett, george_weasley).
madre_de(molly_prewett, ron_weasley).
madre_de(molly_prewett, ginny_weasley).

padre_de(bill_weasley, victoire_weasley).
padre_de(bill_weasley, dominique_weasley).
padre_de(bill_weasley, louis_weasley).
madre_de(fleur_isabelle_delacour, victoire_weasley).
madre_de(fleur_isabelle_delacour, dominique_weasley).
madre_de(fleur_isabelle_delacour, louis_weasley).

padre_de(percy_weasley, molly_weasley_ii).
padre_de(percy_weasley, lucy_weasley).
madre_de(audrey_weasley, molly_weasley_ii).
madre_de(audrey_weasley, lucy_weasley).

padre_de(george_weasley, fred_weasley_ii).
padre_de(george_weasley, roxanne_weasley).
madre_de(angelina_johnson, fred_weasley_ii).
madre_de(angelina_johnson, roxanne_weasley).

padre_de(ron_weasley, rose_granger_weasley).
padre_de(ron_weasley, hugo_granger_weasley).
madre_de(hermione_granger, rose_granger_weasley).
madre_de(hermione_granger, hugo_granger_weasley).

padre_de(harry_james_potter, james_sirius_potter).
padre_de(harry_james_potter, albus_severus_potter).
padre_de(harry_james_potter, lily_luna_potter).
madre_de(ginny_weasley, james_sirius_potter).
madre_de(ginny_weasley, albus_severus_potter).
madre_de(ginny_weasley, lily_luna_potter).

padre_de(james_potter, harry_james_potter).
madre_de(lily_evans, harry_james_potter).

padre_de(vernon_dursley, dudley_dursley).
madre_de(petunia_evans, dudley_dursley).
padre_de(dudley_dursley, son1_dursley).
padre_de(dudley_dursley, son2_dursley).
madre_de(wife_dursley, son1_dursley).
madre_de(wife_dursley, son2_dursley).

padre_de(xenophilius_lovegood, luna_lovegood).
madre_de(pandora_lovegood, luna_lovegood).
padre_de(rolf_scamander, lysander_scamander).
padre_de(rolf_scamander, lorcan_scamander).
madre_de(luna_lovegood, lysander_scamander).
madre_de(luna_lovegood, lorcan_scamander).

padre_de(orion_black, sirius_black).
padre_de(orion_black, regulus_arcturus_black).
madre_de(walburga_black, sirius_black).
madre_de(walburga_black, regulus_arcturus_black).

padre_de(frank_longbottom, neville_longbottom).
madre_de(alice_longbottom, neville_longbottom).

padre_de(cygnus_black_iii, bellatrix_black).
padre_de(cygnus_black_iii, narcisa_black).
padre_de(cygnus_black_iii, andromeda_black).
madre_de(druella_rosier, bellatrix_black).
madre_de(druella_rosier, narcisa_black).
madre_de(druella_rosier, andromeda_black).

padre_de(ted_tonks, nymphadora_tonks).
madre_de(andromeda_black, nymphadora_tonks).
padre_de(remus_lupin, teddy_remus_lupin).
madre_de(nymphadora_tonks, teddy_remus_lupin).

padre_de(lucius_malfoy, draco_lucius_malfoy).
madre_de(narcisa_black, draco_lucius_malfoy).
padre_de(draco_lucius_malfoy, scorpius_hyperion_malfoy).
madre_de(astoria_greengrass, scorpius_hyperion_malfoy).

hermano_de(bill_weasley, charlie_weasley).
hermano_de(bill_weasley, percy_weasley).
hermano_de(bill_weasley, fred_weasley).
hermano_de(bill_weasley, george_weasley).
hermano_de(bill_weasley, ron_weasley).
hermano_de(bill_weasley, ginny_weasley).

hermano_de(charlie_weasley, bill_weasley).
hermano_de(charlie_weasley, percy_weasley).
hermano_de(charlie_weasley, fred_weasley).
hermano_de(charlie_weasley, george_weasley).
hermano_de(charlie_weasley, ron_weasley).
hermano_de(charlie_weasley, ginny_weasley).

hermano_de(percy_weasley, bill_weasley).
hermano_de(percy_weasley, charlie_weasley).
hermano_de(percy_weasley, fred_weasley).
hermano_de(percy_weasley, george_weasley).
hermano_de(percy_weasley, ron_weasley).
hermano_de(percy_weasley, ginny_weasley).

hermano_de(fred_weasley, bill_weasley).
hermano_de(fred_weasley, charlie_weasley).
hermano_de(fred_weasley, percy_weasley).
hermano_de(fred_weasley, george_weasley).
hermano_de(fred_weasley, ron_weasley).
hermano_de(fred_weasley, ginny_weasley).

hermano_de(george_weasley, bill_weasley).
hermano_de(george_weasley, charlie_weasley).
hermano_de(george_weasley, percy_weasley).
hermano_de(george_weasley, fred_weasley).
hermano_de(george_weasley, ron_weasley).
hermano_de(george_weasley, ginny_weasley).

hermano_de(ron_weasley, bill_weasley).
hermano_de(ron_weasley, charlie_weasley).
hermano_de(ron_weasley, percy_weasley).
hermano_de(ron_weasley, fred_weasley).
hermano_de(ron_weasley, george_weasley).
hermano_de(ron_weasley, ginny_weasley).

hermano_de(ginny_weasley, bill_weasley).
hermano_de(ginny_weasley, charlie_weasley).
hermano_de(ginny_weasley, percy_weasley).
hermano_de(ginny_weasley, fred_weasley).
hermano_de(ginny_weasley, george_weasley).
hermano_de(ginny_weasley, ron_weasley).

hermano_de(fleur_isabelle_delacour, gabrielle_delacour).
hermano_de(gabrielle_delacour, fleur_isabelle_delacour).

hermano_de(lily_evans, petunia_evans).
hermano_de(petunia_evans, lily_evans).

hermano_de(bellatrix_black, andromeda_black).
hermano_de(bellatrix_black, narcisa_black).
hermano_de(andromeda_black, bellatrix_black).
hermano_de(andromeda_black, narcisa_black).
hermano_de(narcisa_black, bellatrix_black).
hermano_de(narcisa_black, andromeda_black).

hermano_de(sirius_black, regulus_arcturus_black).
hermano_de(regulus_arcturus_black, sirius_black).

nuera(Persona, Suegra) :-
    progenitor_de(Suegra, Hijo),
    esposa_de(Persona, Hijo).

bisnieto_a(Bisnieto, Bisabuelo) :-
    progenitor_de(Bisabuelo, Hijo),
    progenitor_de(Hijo, Nieto),
    progenitor_de(Nieto, Bisnieto).

sobrino_a(Sobrino, Tio) :-
    hermano_de(Tio, Progenitor),
    progenitor_de(Progenitor, Sobrino).

abuelo_a(Abuelo, Nieto) :-
    progenitor_de(Abuelo, Padre),
    progenitor_de(Padre, Nieto).

tio_abuelo_a(TioAbuelo, SobrinoNieto) :-
    abuelo_a(Abuelo, SobrinoNieto),
    hermano_de(Abuelo, TioAbuelo),
    TioAbuelo \= Abuelo.

nieto_a(Nieto, Abuelo) :-
    progenitor_de(Abuelo, Padre),
    progenitor_de(Padre, Nieto).
    
descendiente(Ascendiente, Descendiente) :-
    progenitor_de(Ascendiente, Descendiente).
descendiente(Ascendiente, Descendiente) :-
    progenitor_de(Ascendiente, Intermedio),
    descendiente(Intermedio, Descendiente).
    
descendientes(Persona, ListaDescendientes) :-
    findall(Descendiente, descendiente(Persona, Descendiente), ListaDescendientes).


%##R004##
%##20##
%"""
%Mapa del tesoro
%
%Un pirata ha escondido un tesoro en una isla
%para saber su ubicacion ha realizado un mapa que
%describe cuantos pasos debe caminar desde un punto 
%conocido para encontrarlo.
%
%para realizar lo anterior ha definido unos simbolos
%que le ayudan a determinar la posicion y la cantidad de
%pasos
%
%A =  arriba
%V =  abajo
%> =  derecha
%< =  izquierda
%
%Ejemplo:
%
%2 Pasos a la derecha y 3 abajo
%
%equivale a
%
%>>VVV
%
%
%3 arriba, 1 izquierda y 2 abajo
%
%AAA<VV
%
%Realiza un predicado en prolog que resuelva donde esta el tesoro
%dada una lista de simbolos y un punto PX,PY inicial considerando que:
%
%arriba ==> incrementa Y
%abajo  ==> decrementa Y
%derecha ==> incrementa X
%izquierda ==> decrementa X
%
%/* pirata([F|C],PX,PY,RX,RY). */ 
%pirata(["A","A","A","<","V","V"],0,0,RX,RY).
%RX = -1.
%RY = 1.
%true.
%
%pirata(["A","A","A","<","V","V"],5,5,RX,RY).
%RX = 4.
%RY = 6.
%true.
%
%pirata(["A","A","A","<","V","V"],0,-2,RX,RY).
%RX = -1.
%RY = -1.
%true.
%"""

pirata([], RX, RY, RX, RY).
pirata(["A"|Resto], PX, PY, RX, RY) :- NuevoPY is PY + 1, pirata(Resto, PX, NuevoPY, RX, RY).
pirata(["V"|Resto], PX, PY, RX, RY) :- NuevoPY is PY - 1, pirata(Resto, PX, NuevoPY, RX, RY).
pirata([">"|Resto], PX, PY, RX, RY) :- NuevoPX is PX + 1, pirata(Resto, NuevoPX, PY, RX, RY).
pirata(["<"|Resto], PX, PY, RX, RY) :- NuevoPX is PX - 1, pirata(Resto, NuevoPX, PY, RX, RY).


%##R005##
%##10##
%"""
%Dada la siguiente secuencia matematica
%7, 17, 37, 77, 157, 317
%Encuentre la función matematica recursiva
%e implementela en prolog
%
%seq0(N,R).
%
%seq0(0,R).
%#R = 7
%seq0(1,R).
%#R = 17
%seq0(2,R).
%#R = 37
%
%"""

seq0(0, 7).
seq0(N, R) :-
    N > 0,
    N1 is N - 1,
    seq0(N1, R1),
    R is 2 * R1 + 3.

%##R006##
%##45##
%"""
%Recorrido en un grafo circular
%Defina una funcion recursiva que imprima todos
%los elementos de un grafo circular
%
%A → B → C → D → E
%↑               ↓
%J → I → H → G → F
%
%
%grafo("A","B").
%grafo("B","C").
%grafo("C","D").
%grafo("D","E").
%grafo("E","F").
%grafo("F","G").
%grafo("G","H").
%grafo("H","I").
%grafo("I","J").
%grafo("J","A").
%
%
%
%imp_graf_cir(Inicio,Limite).
%
%imp_graf_cir("A","E").
%#A
%#B
%#C
%#D
%#E
%imp_graf_cir("A","G").
%#A
%#B
%#C
%#D
%#E
%#F
%#G
%imp_graf_cir("A","J").
%#A
%#B
%#C
%#D
%#E
%#F
%#G
%#H
%#I
%#J
%"""

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

imp_gracir(Limite, Limite) :-
    write(Limite), nl.
imp_gracir(Inicio, Limite) :-
    Inicio \== Limite,
    write(Inicio), nl,
    grafo(Inicio, Siguiente),
    imp_gracir(Siguiente, Limite).


%##R007##
%##15##
%"""
% Bada Boom!!! 
%imprime los numeros de 1 a N
%con las siguientes condiciones:
%	1) si es multiplo de 3 coloque la cadena "Bada"
%	2) si es multiplo de 5 coloque la cadena "Boom!!"
%	3) si es multiplo de 3 y 5 coloque "Bada Boom!!"
%	
%badaboom(N)
%	
%badaboom(15).
%#1
%#2
%#"Bada"
%#4
%#"Boom!!"
%#"Bada"
%#7
%#8
%#"Bada"
%#"Boom!!"
%#11
%#"Bada"
%#13
%#14
%#"BadaBoom!!"
%"""

badaboom(0).
badaboom(N) :- 
	N > 0,
	N1 is N - 1,
	badaboom(N1),
	procesa_numero(N).

procesa_numero(N) :-
	m3(N),
	m5(N),
	write('"Bada Boom!!"'), nl.

procesa_numero(N) :-
	m3(N),
	not(m5(N)),
	write('"Bada"'), nl.

procesa_numero(N) :-
	m5(N), 
	not(m3(N)),
	write('"Boom!!"'), nl.

procesa_numero(N) :-
	not(m3(N)),
	not(m5(N)),
	write(N), nl.

m3(0).
m3(N) :-
	N > 0,
	N1 is N - 3,
	N1 >= 0,
	m3(N1).

m5(0).
m5(N) :-
	N > 0,
	N1 is N - 5,
	N1 >= 0,
	m5(N1).


%##R008##
%##10##
%"""
%
%Mandelbrot
%
%Es una funcion de matematica de fractales asi
%
%f(n+1) = f(n)**2  + 1, f(0) = 1
%
%Demostracion
%f(0) = 1
%f(1) = f(0)**2  + 1 = 2
%f(2) = f(1)**2  + 1 = 5
%(3) = f(2)**2  + 1 = 26
%
%define el predicado en prolog
%
%mandelBrot(N,R).
%
%mandelBrot(0,R).
%R = 1.
%mandelBrot(1,R).
% = 2.
%mandelBrot(2,R).
%R = 5.
%mandelBrot(3,R).
%R = 26.
%"""

mandelBrot(0, 1).
mandelBrot(N, R) :- N > 0, N1 is N - 1, mandelBrot(N1, R1), R is R1 * R1 + 1.


%##R009##
%##10##
%"""
%Combinar Listas 
%
%Una funcion toma dos listas L1 y L2, las une en una sola
%combiando primer elemento de L1 con el primer elemento de L2.
%
%Si una de las dos listas se agota simplemente une el resto de la lista a
%la lista resultante
%
%
%combina_listas([F|C],[G|D],R).
%
%combina_listas([1,2,3],["a","b","c"],R).
%R =  [1,"a",2,"b",3,"c"].
%
%
%combina_listas([1],["a","b","c"],R).
% = [1,"a","b","c"]
%
%combina_listas([1,2,3],["a"],R).
%R = [1,"a",2,3]
%"""

combina([], L2, L2).
combina([],[],[]).
combina(L1, [], L1).
combina([F|C], [G|D], [F, G | R]) :- combina(C, D, R).
