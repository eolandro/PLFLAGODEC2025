% ##R001##
% ##50##
% """
% Arbol

% Tomando el arbol genealogico sugerido
% realice la base de conocimientos e implemente los siguientes 
% predicados, siempre devuelven verdadero o falso

% nuera(Persona1,Persona2)
% bisnieto_a(Persona1,Persona2)
% sobrino_a(Persona1,Persona2)
% abuelo_a(Persona1,Persona2)
% tio_abuelo_a(Persona1,Persona2)

% https://es.wikipedia.org/wiki/Anexo:Nomenclatura_de_parentesco_en_espa%C3%B1ol
% """
% --------------------------------------------- base de conocimientos ---------------------------------------------
% --------------------------------------------- Parejas ---------------------------------------------
pareja(monsieur_delacour,apolline_delacour).
pareja(arthur_weasley,molly_prewett).
pareja(james_potter,lily_evans).
pareja(percy_ignatious_weasley,audrey).
pareja(vernon_durley,petunia_evans).
pareja(george_weasley,angelina_johnson).
pareja(ronnald_bilius_weasley,hermione_jean_granger).
pareja(harry_james_potter,ginevra_molly_weasley).
pareja(xenophilius_lovegood,pandora_lovegood).
pareja(rolf_scamander,luna_lovegood).
pareja(mr_longbottom,augusta_longbottom).
pareja(frank_longbottom,alice_longbottom).
pareja(neville_longbottom,hannah_abbot).
pareja(rodolphus_lestrange,bellatrix_black).
pareja(cygnus_black_iii,drulla_rosier).
pareja(remus_lupin,nymphadora_tonks).
pareja(ted_tonks,andromeda_black).
pareja(lucius_malfoy,narcissa_black).
pareja(draco_lucius_malfroy,astoria_greengrass).
pareja(orion_black,walburgaa_black).
pareja(bill_arthur_weasley,fleur_isabelle_delacour).
pareja(victoire_weasley,teddy_remus_lupin).

% --------------------------------------------- Matrimonio delacour ---------------------------------------------
descendiente(monsieur_delacour,fleur_isabelle_delacour).
descendiente(apolline_delacour,fleur_isabelle_delacour).
descendiente(monsieur_delacour,gabrielle_dalacour).
descendiente(apolline_delacour,gabrielle_dalacour).
% --------------------------------------------- Matrimonio weasley ---------------------------------------------
descendiente(arthur_weasley,bill_arthur_weasley).
descendiente(molly_prewett,bill_arthur_weasley).
descendiente(arthur_weasley, charlie_weasley).
descendiente(molly_prewett, charlie_weasley).
descendiente(arthur_weasley, percy_ignatious_weasley).
descendiente(molly_prewett, percy_ignatious_weasley).
descendiente(arthur_weasley, fred_weasley).
descendiente(molly_prewett, fred_weasley).
descendiente(arthur_weasley, george_weasley).
descendiente(molly_prewett, george_weasley).
descendiente(arthur_weasley, ronnald_bilius_weasley).
descendiente(molly_prewett, ronnald_bilius_weasley).
descendiente(arthur_weasley, ginevra_molly_weasley).
descendiente(molly_prewett, ginevra_molly_weasley).

% --------------------------------------------- Mattrimonio Durley-evans ---------------------------------------------
descendiente(vernon_durley,dudley_dursley).
descendiente(petunia_evans,dudley_dursley).

% --------------------------------------------- Matrimonio weasley y delacour ---------------------------------------------
descendiente(bill_arthur_weasley,victoire_weasley).
descendiente(fleur_isabelle_delacour,victoire_weasley).
descendiente(bill_arthur_weasley,dominique_weasley).
descendiente(fleur_isabelle_delacour,dominique_weasley).
descendiente(bill_arthur_weasley,louise_weasley).
descendiente(fleur_isabelle_delacour,louise_weasley).
% --------------------------------------------- Matrimonio weasley y audrey ---------------------------------------------
descendiente(percy_ignatious_weasley,ginevra_molly_weasley_ii).
descendiente(audrey,ginevra_molly_weasley_ii).
descendiente(percy_ignatious_weasley,lucy_weasley).
descendiente(audrey,lucy_weasley). 

% --------------------------------------------- Matrimonio weasley y esposas ---------------------------------------------
descendiente(george_weasley,fred_weasley_ii).
descendiente(angelina_johnson,fred_weasley_ii).
descendiente(george_weasley,roxanne_weasley).
descendiente(angelina_johnson,roxanne_weasley).

% --------------------------------------------- Matrimonio weasley granger ---------------------------------------------
descendiente(ronnald_bilius_weasley,hugo_weasley).
descendiente(hermione_jean_granger,hugo_weasley).
descendiente(ronnald_bilius_weasley,rose_weasley).
descendiente(hermione_jean_granger,rose_weasley).

% --------------------------------------------- Matrimonio de Potter y weasley ---------------------------------------------
descendiente(james_potter,harry_james_potter).
descendiente(lily_evans,harry_james_potter).
descendiente(harry_james_potter,james_sirious_potter).
descendiente(ginevra_molly_weasley,james_sirious_potter).
descendiente(harry_james_potter,albus_severus_potter).
descendiente(ginevra_molly_weasley,albus_severus_potter).
descendiente(harry_james_potter,lily_luna_potter).
descendiente(ginevra_molly_weasley,lily_luna_potter).

% --------------------------------------------- Matrimonio Lovegood ---------------------------------------------
descendiente(xenophilius_lovegood,luna_lovegood).
descendiente(pandora_lovegood,luna_lovegood).

% --------------------------------------------- Matrimonio Scamamder y lovegood ---------------------------------------------
descendiente(rolf_scamander,lysander_scamander).
descendiente(luna_lovegood,lysander_scamander).
descendiente(rolf_scamander,lorcan_scamander).
descendiente(luna_lovegood,lorcan_scamander).

% --------------------------------------------- Matrimonio Longbottom ---------------------------------------------
descendiente(mr_longbottom,frank_longbottom).
descendiente(augusta_longbottom,frank_longbottom).

% --------------------------------------------- Matrimonio de frank longbottom ---------------------------------------------
descendiente(frank_longbottom,neville_longbottom).
descendiente(alice_longbottom,neville_longbottom).

% --------------------------------------------- Matrimonio black iii y rosier ---------------------------------------------
descendiente(cygnus_black_iii,bellatrix_black).
descendiente(drulla_rosier,bellatrix_black).
descendiente(cygnus_black_iii,andromeda_black).
descendiente(drulla_rosier,andromeda_black).
descendiente(cygnus_black_iii,narcissa_black).
descendiente(drulla_rosier,narcissa_black).

% --------------------------------------------- Matrimonio tonks y blacks ---------------------------------------------
descendiente(ted_tonks,nymphadora_tonks).
descendiente(andromeda_black,nymphadora_tonks).

% --------------------------------------------- Matrimonio lupin tonks --------------------------------------------- 
descendiente(remus_lupin,teddy_remus_lupin).
descendiente(nymphadora_tonks,teddy_remus_lupin).

%--------------------------------------------- Matrimonio Malfoy Black ---------------------------------------------
descendiente(lucius_malfoy,draco_lucius_malfroy).
descendiente(narcissa_black,draco_lucius_malfroy).

% --------------------------------------------- Matrimonio malfroy greengrass ---------------------------------------------
descendiente(draco_lucius_malfroy,scorpious_hyperion_malfroy).
descendiente(astoria_greengrass,scorpious_hyperion_malfroy).
% --------------------------------------------- Matrimonio de black y black ---------------------------------------------
descendiente(orion_black,sirius_black).
descendiente(walburgaa_black,sirius_black).
descendiente(orion_black,regulus_arcturus_black).
descendiente(walburgaa_black,regulus_arcturus_black).

% --------------------------------------------- daphne greengrass y astoria greengrass ---------------------------------------------
descendiente(cyrus_greengrass,daphne_greengrass).
descendiente(roxanne_greengrass,daphne_greengrass).
descendiente(cyrus_greengrass,astoria_greengrass).
descendiente(roxanne_greengrass,astoria_greengrass).

% --------------------------------------------- predicandos ---------------------------------------------
hijo_a(P1,P2) :- padre_madre(P2,P1). % saber si es hijo o hija
pareja_de(X, Y) :- pareja(X, Y).% Saber si es pareja de...
pareja_de(X, Y) :- pareja(Y, X).% Saber si es pareja de...
padre_madre(P1,P2) :- descendiente(P1, P2). % Saber si es padre o madre de...
hermano_a(X, Y) :- padre_madre(P, X), padre_madre(P, Y), padre_madre(M, X), padre_madre(M, Y), X \= Y. % Hermano o hermana (comparten padre y madre)
nuero_a(Persona1, Persona2) :- pareja_de(Persona1, Hijo), padre_madre(Persona2, Hijo). % Saber si es nuero o nuera de...
bisnieto_a(Persona1, Persona2) :- padre_madre(Persona2, X), padre_madre(X, Y), padre_madre(Y, Persona1). % Saber si es Bisnieto de...
sobrino_a(Persona1, Persona2) :- padre_madre(Padre, Persona1), hermano_a(Padre, Persona2). % Saber si es Sobrino de...
nieto_a(P1,P2) :- descendiente(P1,Fam), descendiente(Fam,P2). % saber si son nietos
abuelo_a(P1,P2) :- nieto_a(P2,P1). % reglon para saber si son nietos
tio_abuelo_a(Persona1, Persona2) :- abuelo_a(Abuelo, Persona2), hermano_a(Persona1, Abuelo).% Saber si es Tío abuelo de...
