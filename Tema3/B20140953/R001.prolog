/* 
##R001##
##50##
Arbol

Tomando el arbol genealogico sugerido
realice la base de conocimientos e implemente los siguientes 
predicados, siempre devuelven verdadero o falso


nuera(Persona1,Persona2)
bisnieto_a(Persona1,Persona2)
sobrino_a(Persona1,Persona2)
abuelo_a(Persona1,Persona2)
tio_abuelo_a(Persona1,Persona2)

*/


% Relaciones básicas de descendencia, matrimonio y hermandad

desciende(harry_james_potter,james_potter).
desciende(harry_james_potter,lily_evans).

desciende(james_sirius_potter,harry_james_potter).
desciende(james_sirius_potter,ginevra_molly_weasley).

desciende(albus_severus_potter,harry_james_potter).
desciende(albus_severus_potter,ginevra_molly_weasley).

desciende(lily_luna_potter,harry_james_potter).
desciende(lily_luna_potter,ginevra_molly_weasley).

desciende(dudley_dursley,vernon_dursley).
desciende(dudley_dursley,petunia_evans).

desciende(ginevra_molly_weasley,arthur_weasley).
desciende(ginevra_molly_weasley,molly_prewett).

desciende(bill_arthur_weasley,arthur_weasley).
desciende(bill_arthur_weasley,molly_prewett).

desciende(charlie_weasley,arthur_weasley).
desciende(charlie_weasley,molly_prewett).

desciende(percy_ignatius_weasley,arthur_weasley).
desciende(percy_ignatius_weasley,molly_prewett).

desciende(molly_weasley_2,percy_ignatius_weasley).
desciende(molly_weasley_2,audrey).
desciende(lucy_weasley,percy_ignatius_weasley).
desciende(lucy_weasley,audrey).

desciende(fred_weasley,arthur_weasley).
desciende(fred_weasley,molly_prewett).

desciende(george_weasley,arthur_weasley).
desciende(george_weasley,molly_prewett).

desciende(fred_weasley_2,george_weasley).
desciende(roxanne_weasley,angelina_jhonson).

desciende(ronald_billius_weasley,arthur_weasley).
desciende(ronald_billius_weasley,molly_prewett).

desciende(hugo_weasley,ronald_billius_weasley).
desciende(hugo_weasley,hermione_jean_granger).

desciende(rose_weasley,ronald_billius_weasley).
desciende(rose_weasley,hermione_jean_granger).

desciende(gabrielle_delacour,monsieur_delacour).
desciende(fleur_isabelle_delacour,monsieur_delacour).

desciende(victoire_weasley,bill_arthur_weasley).
desciende(victoire_weasley,fleur_isabelle_delacour).
desciende(dominique_weasley,bill_arthur_weasley).
desciende(dominique_weasley,fleur_isabelle_delacour).
desciende(louis_weasley,bill_arthur_weasley).
desciende(louis_weasley,fleur_isabelle_delacour).

desciende(bellatrix_black,cygnus_black_3).
desciende(andromeda_black,cygnus_black_3).
desciende(narcissa_black,cygnus_black_3).

desciende(draco_lucius_malfoy,narcissa_black).
desciende(draco_lucius_malfoy,lucius_malfoy).

desciende(scorpius_hyperion_malfoy,draco_lucius_malfoy).
desciende(scorpius_hyperion_malfoy,astoria_greengass).

desciende(sirius_black,orion_black).
desciende(sirius_black,walburga_black).

desciende(regulus_arcturus_black,orion_black).
desciende(regulus_arcturus_black,walburga_black).

desciende(nymphadora_tonks,andromeda_black).
desciende(nymphadora_tonks,ted_tonks).

desciende(teddy_remus_lupin,remus_lupin).
desciende(teddy_remus_lupin,nymphadora_tonks).

desciende(luna_lovegood,xenophilius_lovegood).
desciende(luna_lovegood,lunas_mum).

desciende(lysander_scamander,rolf_scamander).
desciende(lysander_scamander,luna_lovegood).

desciende(lorcan_scamander,rolf_scamander).
desciende(lorcan_scamander,luna_lovegood).

desciende(frank_longbottom,mr_longbottom).
desciende(frank_longbottom,augusta).

desciende(neville_longbottom,frank_longbottom).
desciende(neville_longbottom,alice).


% Relaciones matrimoniales


casados(harry_james_potter,ginevra_molly_weasley).
casados(ginevra_molly_weasley,harry_james_potter).

casados(percy_ignatius_weasley,audrey).
casados(audrey,percy_ignatius_weasley).

casados(monsieur_delacour,apolline_delacour).
casados(apolline_delacour,monsieur_delacour).

casados(arthur_weasley,molly_prewett).
casados(molly_prewett,arthur_weasley).

casados(vernon_dursley,petunia_evans).
casados(petunia_evans,vernon_dursley).

casados(james_potter,lily_evans).
casados(lily_evans,james_potter).

casados(ronald_billius_weasley,hermione_jean_granger).
casados(hermione_jean_granger,ronald_billius_weasley).

casados(george_weasley,angelina_jhonson).
casados(angelina_jhonson,george_weasley).

casados(bill_arthur_weasley,fleur_isabelle_delacour).
casados(fleur_isabelle_delacour,bill_arthur_weasley).

casados(victoire_weasley,teddy_remus_lupin).
casados(teddy_remus_lupin,victoire_weasley).

casados(draco_lucius_malfoy,astoria_greengass).
casados(astoria_greengass,draco_lucius_malfoy).

casados(scorpius_hyperion_malfoy,rose_weasley).
casados(rose_weasley,scorpius_hyperion_malfoy).

casados(remus_lupin,nymphadora_tonks).
casados(nymphadora_tonks,remus_lupin).

casados(rolf_scamander,luna_lovegood).
casados(luna_lovegood,rolf_scamander).

casados(neville_longbottom,hannah_abbot).
casados(hannah_abbot,neville_longbottom).

% Relación de hermandad

hermanoa(astoria_greengass,daphne_greengrass).
hermanoa(daphne_greengrass,astoria_greengass).

hermanoa(marjorie_eileen_dursley,vernon_dursley).
hermanoa(vernon_dursley,marjorie_eileen_dursley).

hermanoa(petunia_evans,lily_evans).
hermanoa(lily_evans,petunia_evans).

hermanoa(walburga_black,cygnus_black_3).
hermanoa(cygnus_black_3,walburga_black).


hermanoa(bill_arthur_weasley, charlie_weasley).
hermanoa(charlie_weasley, percy_ignatius_weasley).
hermanoa(percy_ignatius_weasley, fred_weasley).
hermanoa(fred_weasley, george_weasley).
hermanoa(george_weasley, ronald_billius_weasley).
hermanoa(ronald_billius_weasley, ginny_weasley).

% Relación general (
hermanoa(Ego, Persona) :-
    Ego \== Persona,
    desciende(Ego, PadreOmadre),
    desciende(Persona, PadreOmadre).


% Predicados derivados: relaciones de parentesco


% NUERA:
nuera(Nuera, Persona) :-
    casados(Nuera, Hijo),
    desciende(Hijo, Persona).

% BISNIETO:
bisnieto_a(Bisnieto, Bisabuelo) :-
    desciende(Bisnieto, Padre),
    desciende(Padre, Abuelo),
    desciende(Abuelo, Bisabuelo).

% ABUELO:
abuelo_a(Abuelo, Nieto) :-
    desciende(Nieto, Padre),
    desciende(Padre, Abuelo).

% TÍO ABUELO:
tio_abuelo_a(TioAbuelo, Persona) :-
    abuelo_a(Abuelo, Persona),
    hermanoa(TioAbuelo, Abuelo).

% SOBRINO:
sobrino_a(Sobrino, Tio) :-
    desciende(Sobrino, Padre),
    hermanoa(Padre, Tio).
