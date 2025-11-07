##R001##
##50##
"""
Arbol

Tomando el arbol genealogico sugerido
realice la base de conocimientos e implemente los siguientes 
predicados, siempre devuelven verdadero o falso


nuera(Persona1,Persona2)
bisnieto_a(Persona1,Persona2)
sobrino_a(Persona1,Persona2)
abuelo_a(Persona1,Persona2)
tio_abuelo_a(Persona1,Persona2)

https://es.wikipedia.org/wiki/Anexo:Nomenclatura_de_parentesco_en_espa%C3%B1ol
"""

desciende(harry_james_potter,james_potter).
desciende(harry_james_potter,lily_evans).

desciende(james_sirius_potter,harry_james_potter).
desciende(james_sirius_potter,ginevra_molly_weasley).

desciende(albus_severus_potter,harry_james_potter).
desciende(albus_severus_potter,ginevra_molly_weasley).

desciende(lily_luna_potter,harry_james_potter).
desciende(lily_luna_potter,ginevra_molly_weasley).

%desciende(vernon_dursley,marjorie_eileen_dursley).


desciende(dudley_dursley,vernon_dursley).
desciende(dudley_dursley,petunia_evans).

desciende(ginevra_molly_weasley,arthur_weasley).
desciende(ginevra_molly_weasley,molly_prewett).
desciende(bill_arthur_weasley,arthur_weasley).
desciende(bill_arthur_weasley,molly_prewett).
desciende(charlie_weasley,arthur_weasley).
desciende(charlie_weasley,molly_prewett).

%Familia Percy
desciende(percy_ignatius_weasley,arthur_weasley).
desciende(percy_ignatius_weasley,molly_prewett).

desciende(molly_weasley_2,percy_ignatius_weasley).
desciende(molly_weasley_2,audrey).
desciende(lucy_weasley,percy_ignatius_weasley).
desciende(lucy_weasley,audrey).

%Familia Fred
desciende(fred_weasley,arthur_weasley).
desciende(fred_weasley,molly_prewett).

%Familia George
desciende(george_weasley,arthur_weasley).
desciende(george_weasley,molly_prewett).

desciende(fred_weasley_2,george_weasley).
desciende(roxanne_weasley,angelina_jhonson).

%Familia Ronald
desciende(ronald_bilius_weasley,arthur_weasley).
desciende(ronald_bilius_weasley,molly_prewett).

desciende(hugo_weasley,ronald_billius_weasley).
desciende(hugo_weasley,hermione_jean_granger).

desciende(rose_weasley,ronald_billius_weasley).
desciende(rose_weasley,hermione_jean_granger).

%Familia Monsieur_delacour
desciende(gabrielle_delacour,monsieur_delacour).
desciende(fleur_isabelle_delacour,monsieur_delacour).

desciende(victoire_weasley,bill_arthur_weasley).
desciende(victoire_weasley,fleur_isabelle_delacour).
desciende(dominique_weasley,bill_arthur_weasley).
desciende(dominique_weasley,fleur_isabelle_delacour).
desciende(louis_weasley,bill_arthur_weasley).
desciende(louis_weasley,fleur_isabelle_delacour).

%Familia Cygnus
desciende(bellatrix_black,cygnus_black_3).
desciende(bellatrix_black,druella_rosier).

desciende(andromeda_black,cygnus_black_3).
desciende(andromeda_black,druella_rosier).

desciende(narcissa_black,cygnus_black_3).
desciende(narcissa_black,druella_rosier).


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

%Familias aparte
%Familia Lovegood

desciende(luna_lovegood,xenophilius_lovegood).
desciende(luna_lovegood,lunas_mum).

desciende(lysander_scamander,rolf_scamander).
desciende(lysander_scamander,luna_lovegood).

desciende(lorcan_scamander,rolf_scamander).
desciende(lorcan_scamander,luna_lovegood).

%Familia Longbottom
desciende(frank_longbottom,mr_longbottom).
desciende(frank_longbottom,augusta).

desciende(neville_longbottom,frank_longbottom).
desciende(neville_longbottom,alice).


hermanoa(astoria_greengass,daphne_greengrass).
hermanoa(daphne_greengrass,astoria_greengass).

hermanoa(marjorie_eileen_dursley,vernon_dursley).
hermanoa(vernon_dursley,marjorie_eileen_dursley).

hermanoa(petunia_evans,lily_evans).
hermanoa(lily_evans,petunia_evans).

hermanoa(walburga_black,cygnus_black_3).
hermanoa(cygnus_black_3,walburga_black).


%Relaciones de casados

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

casados(rodolphus_lestrange,bellatrix_black).
casados(bellatrix_black,rodolphus_lestrange).

casados(cygnus_black_3,druella_rosier).
casados(druella_rosier,cygnus_black_3).

casados(ted_tonks,andromeda_black).
casados(andromeda_black,ted_tonks).

casados(narcissa_black,lucius_malfoy).
casados(lucius_malfoy,narcissa_black).

casados(draco_lucius_malfoy,astoria_greengass).
casados(astoria_greengass,draco_lucius_malfoy).

casados(scorpius_hyperion_malfoy,rose_weasley).
casados(rose_weasley,scorpius_hyperion_malfoy).

casados(orion_black,walburga_black).
casados(walburga_black,orion_black).

casados(remus_lupin,nymphadora_tonks).
casados(nymphadora_tonks,remus_lupin).

casados(xenophilius_lovegood,lunas_mum).
casados(lunas_mum,xenophilius_lovegood).

casados(rolf_scamander,luna_lovegood).
casados(luna_lovegood,rolf_scamander).

casados(mr_longbottom,augusta).
casados(augusta,mr_longbottom).

casados(frank_longbottom,alice).
casados(alice,frank_longbottom).

casados(neville_longbottom,hannah_abbot).
casados(hannah_abbot,neville_longbottom).


%Relaciones de nueras
nuera(ginevra_molly_weasley, lily_evans).
nuera(ginevra_molly_weasley, james_potter).

nuera(fleur_isabelle_delacour, molly_prewett).
nuera(fleur_isabelle_delacour, arthur_weasley).

nuera(hermione_jean_granger, molly_prewett).
nuera(hermione_jean_granger, arthur_weasley).

nuera(astoria_greengass, narcissa_black).
nuera(astoria_greengass, lucius_malfoy).

nuera(audrey, molly_prewett).
nuera(audrey, arthur_weasley).

nuera(hannah_abbot, frank_longbottom).
nuera(hannah_abbot, alice).

nuera(nymphadora_tonks, andromeda_black).
nuera(nymphadora_tonks, ted_tonks).

nuera(lunas_mum, abuelos_desconocidos_lovegood). 
nuera(victoire_weasley, bill_arthur_weasley).
nuera(victoire_weasley, fleur_isabelle_delacour).

%Familia Weasley
sobrino_a(hugo_weasley, bill_arthur_weasley).
sobrino_a(hugo_weasley, charlie_weasley).
sobrino_a(hugo_weasley, percy_ignatius_weasley).
sobrino_a(hugo_weasley, fred_weasley).
sobrino_a(hugo_weasley, george_weasley).
sobrino_a(hugo_weasley, ginny_weasley).

sobrino_a(james_sirius_potter, bill_arthur_weasley).
sobrino_a(james_sirius_potter, charlie_weasley).
sobrino_a(james_sirius_potter, percy_ignatius_weasley).
sobrino_a(james_sirius_potter, fred_weasley).
sobrino_a(james_sirius_potter, george_weasley).
sobrino_a(james_sirius_potter, ronald_billius_weasley).

sobrino_a(albus_severus_potter, bill_arthur_weasley).
sobrino_a(albus_severus_potter, charlie_weasley).
sobrino_a(albus_severus_potter, percy_ignatius_weasley).
sobrino_a(albus_severus_potter, fred_weasley).
sobrino_a(albus_severus_potter, george_weasley).
sobrino_a(albus_severus_potter, ronald_billius_weasley).

sobrino_a(louis_weasley, charlie_weasley).
sobrino_a(louis_weasley, percy_ignatius_weasley).
sobrino_a(louis_weasley, fred_weasley).
sobrino_a(louis_weasley, george_weasley).
sobrino_a(louis_weasley, ronald_billius_weasley).
sobrino_a(louis_weasley, ginny_weasley).

sobrino_a(hugo_weasley, bill_arthur_weasley).
sobrino_a(hugo_weasley, charlie_weasley).
sobrino_a(hugo_weasley, percy_ignatius_weasley).
sobrino_a(hugo_weasley, fred_weasley).
sobrino_a(hugo_weasley, george_weasley).
sobrino_a(hugo_weasley, ginny_weasley).

sobrino_a(fred_weasley_2, bill_arthur_weasley).
sobrino_a(fred_weasley_2, charlie_weasley).
sobrino_a(fred_weasley_2, percy_ignatius_weasley).
sobrino_a(fred_weasley_2, ronald_billius_weasley).
sobrino_a(fred_weasley_2, ginny_weasley).

sobrino_a(lorcan_scamander, lysander_scamander).
sobrino_a(lysander_scamander, lorcan_scamander).

%Familia Malfoy
sobrino_a(scorpius_hyperion_malfoy, astoria_greengass). % por su madre
sobrino_a(scorpius_hyperion_malfoy, daphne_greengrass).

%Familia Lupin / Tonks
sobrino_a(teddy_remus_lupin, andromeda_black).
sobrino_a(teddy_remus_lupin, ted_tonks).

%Familia Longbottom
sobrino_a(hijo_inexistente, neville_longbottom). % reservado si tu árbol crece
sobrino_a(hijo_inexistente, hannah_abbot).

%Familia Black
sobrino_a(draco_lucius_malfoy, bellatrix_black).
sobrino_a(draco_lucius_malfoy, andromeda_black).

% --- Familia Weasley ---
sobrina_a(rose_weasley, bill_arthur_weasley).
sobrina_a(rose_weasley, charlie_weasley).
sobrina_a(rose_weasley, percy_ignatius_weasley).
sobrina_a(rose_weasley, fred_weasley).
sobrina_a(rose_weasley, george_weasley).
sobrina_a(rose_weasley, ginny_weasley).

sobrina_a(lily_luna_potter, bill_arthur_weasley).
sobrina_a(lily_luna_potter, charlie_weasley).
sobrina_a(lily_luna_potter, percy_ignatius_weasley).
sobrina_a(lily_luna_potter, fred_weasley).
sobrina_a(lily_luna_potter, george_weasley).
sobrina_a(lily_luna_potter, ronald_billius_weasley).

sobrina_a(victoire_weasley, charlie_weasley).
sobrina_a(victoire_weasley, percy_ignatius_weasley).
sobrina_a(victoire_weasley, fred_weasley).
sobrina_a(victoire_weasley, george_weasley).
sobrina_a(victoire_weasley, ronald_billius_weasley).
sobrina_a(victoire_weasley, ginny_weasley).

sobrina_a(dominique_weasley, charlie_weasley).
sobrina_a(dominique_weasley, percy_ignatius_weasley).
sobrina_a(dominique_weasley, fred_weasley).
sobrina_a(dominique_weasley, george_weasley).
sobrina_a(dominique_weasley, ronald_billius_weasley).
sobrina_a(dominique_weasley, ginny_weasley).

sobrina_a(roxanne_weasley, bill_arthur_weasley).
sobrina_a(roxanne_weasley, charlie_weasley).
sobrina_a(roxanne_weasley, percy_ignatius_weasley).
sobrina_a(roxanne_weasley, ronald_billius_weasley).
sobrina_a(roxanne_weasley, ginny_weasley).

sobrina_a(molly_weasley_2, bill_arthur_weasley).
sobrina_a(molly_weasley_2, charlie_weasley).
sobrina_a(molly_weasley_2, fred_weasley).
sobrina_a(molly_weasley_2, george_weasley).
sobrina_a(molly_weasley_2, ronald_billius_weasley).
sobrina_a(molly_weasley_2, ginny_weasley).

sobrina_a(lucy_weasley, bill_arthur_weasley).
sobrina_a(lucy_weasley, charlie_weasley).
sobrina_a(lucy_weasley, fred_weasley).
sobrina_a(lucy_weasley, george_weasley).
sobrina_a(lucy_weasley, ronald_billius_weasley).
sobrina_a(lucy_weasley, ginny_weasley).

%Familia Malfoy
sobrina_a(rose_weasley, scorpius_hyperion_malfoy). % esposa de su tío
sobrina_a(rose_weasley, draco_lucius_malfoy).
sobrina_a(rose_weasley, astoria_greengass).

%Familia Lupin
sobrina_a(victoire_weasley, remus_lupin).
sobrina_a(victoire_weasley, nymphadora_tonks).

%Familia Lovegood
sobrina_a(luna_lovegood, xenophilius_lovegood). % si se cuentan recíprocas
sobrina_a(lorcan_scamander, luna_lovegood).
sobrina_a(lysander_scamander, luna_lovegood).

%Familia Longbottom
sobrina_a(molly_weasley_2, neville_longbottom).
sobrina_a(lucy_weasley, neville_longbottom).


%BISNIETOS/AS
bisnieto_a(james_sirius_potter, harry_james_potter).
bisnieto_a(james_sirius_potter, ginny_weasley).

bisnieto_a(albus_severus_potter, harry_james_potter).
bisnieto_a(albus_severus_potter, ginny_weasley).

bisnieto_a(lily_luna_potter, harry_james_potter).
bisnieto_a(lily_luna_potter, ginny_weasley).

bisnieto_a(rose_weasley, ronald_bilius_weasley).
bisnieto_a(rose_weasley, hermione_jean_granger).

bisnieto_a(hugo_weasley, ronald_bilius_weasley).
bisnieto_a(hugo_weasley, hermione_jean_granger).

bisnieta_a(rose_weasley, harry_james_potter).
bisnieta_a(rose_weasley, ginny_weasley).

bisnieta_a(lily_luna_potter, harry_james_potter).
bisnieta_a(lily_luna_potter, ginny_weasley).


nieto(Nieto, Abuelo) :- desciende(Nieto, PM), desciende(PM, Abuelo),
    Nieto \== Abuelo.

bisnieto_a(Bisnieto,Abuelo) :- desciende(Bisnieto,PM),
	nieto(PM,Abuelo).

abuelo_a(Abuelo,Nieto) :- nieto(Nieto,Abuelo).

tio_a(Ego,Persona) :- desciende(Ego,MPa),hermanoa(Persona,MPa).

tio_a(Ego,Persona) :- desciende(Ego,MPa), hermanoa(MPa,Her),
    casados(Her,Persona).

tio_abuelo_a(Tioabu,Persona) :- abuelo_a(Persona,Abuelo),
    hermanoa(Tioabu,Abuelo).

sobrino_a(Ego,Persona) :- tio_a(Persona,Ego).


