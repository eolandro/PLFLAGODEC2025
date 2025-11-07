% Base de conocimiento: Árbol genealógico familia Black-Weasley-Potter

:- discontiguous casados/2.
:- discontiguous descendiente/2.
:- discontiguous hermanos_directos/2.

% Familia phineas_nigellus_black

casados(phineas_nigellus_black, ursula_flint).
casados(ursula_flint, phineas_nigellus_black).

descendiente(phineas_nigellus_black, belvina_black).
descendiente(phineas_nigellus_black, cygnus_black_ii).
descendiente(phineas_nigellus_black, phineas_black).
descendiente(phineas_nigellus_black, sirius_black_ii).
descendiente(phineas_nigellus_black, arcturus_black_ii).

descendiente(ursula_flint, belvina_black).
descendiente(ursula_flint, cygnus_black_ii).
descendiente(ursula_flint, phineas_black).
descendiente(ursula_flint, sirius_black_ii).
descendiente(ursula_flint, arcturus_black_ii).

hermanos_directos(belvina_black, cygnus_black_ii).
hermanos_directos(belvina_black, phineas_black).
hermanos_directos(belvina_black, sirius_black_ii).
hermanos_directos(belvina_black, arcturus_black_ii).

hermanos_directos(cygnus_black_ii, belvina_black).
hermanos_directos(cygnus_black_ii, phineas_black).
hermanos_directos(cygnus_black_ii, sirius_black_ii).
hermanos_directos(cygnus_black_ii, arcturus_black_ii).

hermanos_directos(phineas_black, belvina_black).
hermanos_directos(phineas_black, cygnus_black_ii).
hermanos_directos(phineas_black, sirius_black_ii).
hermanos_directos(phineas_black, arcturus_black_ii).

hermanos_directos(sirius_black_ii, belvina_black).
hermanos_directos(sirius_black_ii, cygnus_black_ii).
hermanos_directos(sirius_black_ii, phineas_black).
hermanos_directos(sirius_black_ii, arcturus_black_ii).

hermanos_directos(arcturus_black_ii, belvina_black).
hermanos_directos(arcturus_black_ii, cygnus_black_ii).
hermanos_directos(arcturus_black_ii, phineas_black).
hermanos_directos(arcturus_black_ii, sirius_black_ii).

% Familia herbert_burke

casados(herbert_burke, belvina_black).
casados(belvina_black, herbert_burke).

% Familia cygnus_black_ii

casados(cygnus_black_ii, violetta_bulstrode).
casados(violetta_bulstrode, cygnus_black_ii).

descendiente(cygnus_black_ii, dorea_black).
descendiente(cygnus_black_ii, cassiopeia_black).
descendiente(cygnus_black_ii, marius_black).
descendiente(cygnus_black_ii, pollux_black).

descendiente(violetta_bulstrode, dorea_black).
descendiente(violetta_bulstrode, cassiopeia_black).
descendiente(violetta_bulstrode, marius_black).
descendiente(violetta_bulstrode, pollux_black).

hermanos_directos(dorea_black, cassiopeia_black).
hermanos_directos(dorea_black, marius_black).
hermanos_directos(dorea_black, pollux_black).

hermanos_directos(cassiopeia_black, dorea_black).
hermanos_directos(cassiopeia_black, marius_black).
hermanos_directos(cassiopeia_black, pollux_black).

hermanos_directos(marius_black, dorea_black).
hermanos_directos(marius_black, cassiopeia_black).
hermanos_directos(marius_black, pollux_black).

hermanos_directos(pollux_black, dorea_black).
hermanos_directos(pollux_black, cassiopeia_black).
hermanos_directos(pollux_black, marius_black).

% Familia charlus_potter

casados(charlus_potter, dorea_black).
casados(dorea_black, charlus_potter).

% Familia pollux_black

casados(pollux_black, irma_crabbe).
casados(irma_crabbe, pollux_black).

descendiente(pollux_black, cygnus_black_iii).
descendiente(pollux_black, alphard_black).
descendiente(pollux_black, walburga_black).

descendiente(irma_crabbe, cygnus_black_iii).
descendiente(irma_crabbe, alphard_black).
descendiente(irma_crabbe, walburga_black).

hermanos_directos(cygnus_black_iii, alphard_black).
hermanos_directos(cygnus_black_iii, walburga_black).

hermanos_directos(alphard_black, cygnus_black_iii).
hermanos_directos(alphard_black, walburga_black).

hermanos_directos(walburga_black, cygnus_black_iii).
hermanos_directos(walburga_black, alphard_black).

% Familia cygnus_black_iii

casados(druella_rosier, cygnus_black_iii).
casados(cygnus_black_iii, druella_rosier).

descendiente(cygnus_black_iii, narcissa_black).
descendiente(cygnus_black_iii, bellatrix_black).
descendiente(cygnus_black_iii, andromeda_black).

descendiente(druella_rosier, narcissa_black).
descendiente(druella_rosier, bellatrix_black).
descendiente(druella_rosier, andromeda_black).

hermanos_directos(narcissa_black, bellatrix_black).
hermanos_directos(narcissa_black, andromeda_black).

hermanos_directos(bellatrix_black, narcissa_black).
hermanos_directos(bellatrix_black, andromeda_black).

hermanos_directos(andromeda_black, narcissa_black).
hermanos_directos(andromeda_black, bellatrix_black).

% Familia sirius_black_ii

casados(sirius_black_ii, hesper_gamp).
casados(hesper_gamp, sirius_black_ii).

descendiente(sirius_black_ii, lycoris_black).
descendiente(sirius_black_ii, regulus_black_i).
descendiente(sirius_black_ii, arcturus_black_iii).

descendiente(hesper_gamp, lycoris_black).
descendiente(hesper_gamp, regulus_black_i).
descendiente(hesper_gamp, arcturus_black_iii).

hermanos_directos(lycoris_black, regulus_black_i).
hermanos_directos(lycoris_black, arcturus_black_iii).

hermanos_directos(regulus_black_i, lycoris_black).
hermanos_directos(regulus_black_i, arcturus_black_iii).

hermanos_directos(arcturus_black_iii, lycoris_black).
hermanos_directos(arcturus_black_iii, regulus_black_i).

% Familia arcturus_black_iii

casados(arcturus_black_iii, melania_macmillan).
casados(melania_macmillan, arcturus_black_iii).

descendiente(arcturus_black_iii, orion_black).
descendiente(arcturus_black_iii, lucretia_black).

descendiente(melania_macmillan, orion_black).
descendiente(melania_macmillan, lucretia_black).

hermanos_directos(orion_black, lucretia_black).
hermanos_directos(lucretia_black, orion_black).

% Familia walburga_black

casados(walburga_black, orion_black).
casados(orion_black, walburga_black).

descendiente(walburga_black, sirius_black_iii).
descendiente(walburga_black, regulus_black_ii).

descendiente(orion_black, sirius_black_iii).
descendiente(orion_black, regulus_black_ii).

% Familia lucretia_black

casados(lucretia_black, ignatius_prewett).
casados(ignatius_prewett, lucretia_black).

% Familia lucius_malfoy

casados(lucius_malfoy, narcissa_black).
casados(narcissa_black, lucius_malfoy).

descendiente(lucius_malfoy, draco_malfoy).
descendiente(narcissa_black, draco_malfoy).

% Familia draco_malfoy

casados(draco_malfoy, astoria_greengrass).
casados(astoria_greengrass, draco_malfoy).

descendiente(draco_malfoy, scorpius_hyperion_malfoy).
descendiente(astoria_greengrass, scorpius_hyperion_malfoy).

% Familia bellatrix_black

casados(bellatrix_black, rodolphus_lestrange).
casados(rodolphus_lestrange, bellatrix_black).
% Familia andromeda_black

casados(andromeda_black, ted_tonks).
casados(ted_tonks, andromeda_black).

descendiente(andromeda_black, nymphadora_tonks).
descendiente(ted_tonks, nymphadora_tonks).

% Familia hope_howell

casados(hope_howell, lyall_lupin).
casados(lyall_lupin, hope_howell).

descendiente(hope_howell, remus_lupin).
descendiente(lyall_lupin, remus_lupin).

% Familia remus_lupin

casados(remus_lupin, nymphadora_tonks).
casados(nymphadora_tonks, remus_lupin).

descendiente(remus_lupin, teddy_remus_lupin).
descendiente(nymphadora_tonks, teddy_remus_lupin).

% Familia arcturus_black_ii
casados(arcturus_black_ii, lysandra_yaxley).
casados(lysandra_yaxley, arcturus_black_ii).

descendiente(arcturus_black_ii, calidora_black).
descendiente(arcturus_black_ii, charis_black).
descendiente(arcturus_black_ii, cendrella_black).

descendiente(lysandra_yaxley, calidora_black).
descendiente(lysandra_yaxley, charis_black).
descendiente(lysandra_yaxley, cendrella_black).

hermanos_directos(calidora_black, charis_black).
hermanos_directos(calidora_black, cendrella_black).

hermanos_directos(charis_black, calidora_black).
hermanos_directos(charis_black, cendrella_black).

hermanos_directos(cendrella_black, calidora_black).
hermanos_directos(cendrella_black, charis_black).

% Familia longbottom

casados(calidora_black, harfang_longbottom).
casados(harfang_longbottom, calidora_black).

descendiente(harfang_longbottom, algie_longbottom).
descendiente(harfang_longbottom, harfang_jr_longbottom).

descendiente(calidora_black, algie_longbottom).
descendiente(calidora_black, harfang_jr_longbottom).

hermanos_directos(algie_longbottom, harfang_jr_longbottom).
hermanos_directos(harfang_jr_longbottom, algie_longbottom).

casados(harfang_jr_longbottom, augusta_longbottom).
casados(augusta_longbottom, harfang_jr_longbottom).

descendiente(augusta_longbottom, frank_longbottom).
descendiente(harfang_jr_longbottom, frank_longbottom).

casados(frank_longbottom, alice_longbottom).
casados(alice_longbottom, frank_longbottom).

descendiente(frank_longbottom, neville_longbottom).
descendiente(alice_longbottom, neville_longbottom).

casados(neville_longbottom, hannah_abbott).
casados(hannah_abbott, neville_longbottom).

% Familia crouch


casados(caspar_crouch, charis_black).
casados(charis_black, caspar_crouch).

% Familia weasley

casados(cendrella_black, septimus_weasley).
casados(septimus_weasley, cendrella_black).

descendiente(septimus_weasley, septimus_jr_weasley).
descendiente(septimus_weasley, bilius_weasley).
descendiente(septimus_weasley, arthur_weasley).

descendiente(cendrella_black, septimus_jr_weasley).
descendiente(cendrella_black, bilius_weasley).
descendiente(cendrella_black, arthur_weasley).

casados(arthur_weasley, molly_prewett).
casados(molly_prewett, arthur_weasley).

descendiente(arthur_weasley, bill_weasley).
descendiente(arthur_weasley, charlie_weasley).
descendiente(arthur_weasley, percy_weasley).
descendiente(arthur_weasley, fred_weasley).
descendiente(arthur_weasley, george_weasley).
descendiente(arthur_weasley, ronald_weasley).
descendiente(arthur_weasley, ginevra_weasley).

descendiente(molly_prewett, bill_weasley).
descendiente(molly_prewett, charlie_weasley).
descendiente(molly_prewett, percy_weasley).
descendiente(molly_prewett, fred_weasley).
descendiente(molly_prewett, george_weasley).
descendiente(molly_prewett, ronald_weasley).
descendiente(molly_prewett, ginevra_weasley).

hermanos_directos(bill_weasley, charlie_weasley).
hermanos_directos(bill_weasley, percy_weasley).
hermanos_directos(bill_weasley, fred_weasley).
hermanos_directos(bill_weasley, george_weasley).
hermanos_directos(bill_weasley, ronald_weasley).
hermanos_directos(bill_weasley, ginevra_weasley).

hermanos_directos(charlie_weasley, bill_weasley).
hermanos_directos(charlie_weasley, percy_weasley).
hermanos_directos(charlie_weasley, fred_weasley).
hermanos_directos(charlie_weasley, george_weasley).
hermanos_directos(charlie_weasley, ronald_weasley).
hermanos_directos(charlie_weasley, ginevra_weasley).

hermanos_directos(percy_weasley, bill_weasley).
hermanos_directos(percy_weasley, charlie_weasley).
hermanos_directos(percy_weasley, fred_weasley).
hermanos_directos(percy_weasley, george_weasley).
hermanos_directos(percy_weasley, ronald_weasley).
hermanos_directos(percy_weasley, ginevra_weasley).

hermanos_directos(fred_weasley, bill_weasley).
hermanos_directos(fred_weasley, charlie_weasley).
hermanos_directos(fred_weasley, percy_weasley).
hermanos_directos(fred_weasley, george_weasley).
hermanos_directos(fred_weasley, ronald_weasley).
hermanos_directos(fred_weasley, ginevra_weasley).

hermanos_directos(george_weasley, bill_weasley).
hermanos_directos(george_weasley, charlie_weasley).
hermanos_directos(george_weasley, percy_weasley).
hermanos_directos(george_weasley, fred_weasley).
hermanos_directos(george_weasley, ronald_weasley).
hermanos_directos(george_weasley, ginevra_weasley).

hermanos_directos(ronald_weasley, bill_weasley).
hermanos_directos(ronald_weasley, charlie_weasley).
hermanos_directos(ronald_weasley, percy_weasley).
hermanos_directos(ronald_weasley, fred_weasley).
hermanos_directos(ronald_weasley, george_weasley).
hermanos_directos(ronald_weasley, ginevra_weasley).

hermanos_directos(ginevra_weasley, bill_weasley).
hermanos_directos(ginevra_weasley, charlie_weasley).
hermanos_directos(ginevra_weasley, percy_weasley).
hermanos_directos(ginevra_weasley, fred_weasley).
hermanos_directos(ginevra_weasley, george_weasley).
hermanos_directos(ginevra_weasley, ronald_weasley).

% Familia delacour

casados(monsieur_delacour, apolline_delacour).
casados(apolline_delacour, monsieur_delacour).

descendiente(monsieur_delacour, fleur_delacour).
descendiente(monsieur_delacour, gabrielle_delacour).

descendiente(apolline_delacour, fleur_delacour).
descendiente(apolline_delacour, gabrielle_delacour).

% Familia bill_weasley

casados(bill_weasley, fleur_delacour).
casados(fleur_delacour, bill_weasley).

descendiente(bill_weasley, louis_weasley).
descendiente(bill_weasley, dominique_weasley).
descendiente(bill_weasley, victoire_weasley).

descendiente(fleur_delacour, louis_weasley).
descendiente(fleur_delacour, dominique_weasley).
descendiente(fleur_delacour, victoire_weasley).

% Familia percy_weasley

casados(percy_weasley, audrey_weasley).
casados(audrey_weasley, percy_weasley).

descendiente(percy_weasley, molly_weasley).
descendiente(percy_weasley, lucy_weasley).

descendiente(audrey_weasley, molly_weasley).
descendiente(audrey_weasley, lucy_weasley).

% Familia george_weasley

casados(george_weasley, angelina_johnson).
casados(angelina_johnson, george_weasley).

descendiente(george_weasley, fred_weasley_ii).
descendiente(george_weasley, roxanne_weasley).

descendiente(angelina_johnson, fred_weasley_ii).
descendiente(angelina_johnson, roxanne_weasley).

% Familia ronald_weasley

casados(ronald_weasley, hermione_granger).
casados(hermione_granger, ronald_weasley).

descendiente(ronald_weasley, rose_weasley).
descendiente(ronald_weasley, hugo_weasley).

descendiente(hermione_granger, rose_weasley).
descendiente(hermione_granger, hugo_weasley).

% Familia potter

casados(fleamont_potter, euphemia_potter).
casados(euphemia_potter, fleamont_potter).

descendiente(fleamont_potter, james_potter).
descendiente(euphemia_potter, james_potter).

% Familia evans

hermanos_directos(lily_evans, petunia_evans).
hermanos_directos(petunia_evans, lily_evans).

% Familia dursley

hermanos_directos(vernon_dursley, marjorie_dursley).
hermanos_directos(marjorie_dursley, vernon_dursley).

casados(vernon_dursley, petunia_evans).
casados(petunia_evans, vernon_dursley).

descendiente(vernon_dursley, dudley_dursley).
descendiente(petunia_evans, dudley_dursley).

% Familia james_potter

casados(james_potter, lily_evans).
casados(lily_evans, james_potter).

descendiente(james_potter, harry_potter).
descendiente(lily_evans, harry_potter).

% Familia harry_potter

casados(harry_potter, ginevra_weasley).
casados(ginevra_weasley, harry_potter).

descendiente(harry_potter, james_sirius_potter).
descendiente(harry_potter, albus_severus_potter).
descendiente(harry_potter, lily_luna_potter).

descendiente(ginevra_weasley, james_sirius_potter).
descendiente(ginevra_weasley, albus_severus_potter).
descendiente(ginevra_weasley, lily_luna_potter).

% Familia lovegood

casados(xenophilius_lovegood, pandora_lovegood).
casados(pandora_lovegood, xenophilius_lovegood).

descendiente(xenophilius_lovegood, luna_lovegood).
descendiente(pandora_lovegood, luna_lovegood).

casados(rolf_scamander, luna_lovegood).
casados(luna_lovegood, rolf_scamander).

descendiente(rolf_scamander, lorcan_scamander).
descendiente(rolf_scamander, lysander_scamander).

descendiente(luna_lovegood, lorcan_scamander).
descendiente(luna_lovegood, lysander_scamander).

% Nuevos casados

casados(victoire_weasley, teddy_lupin_tonks).
casados(teddy_lupin_tonks, victoire_weasley).

casados(rose_weasley, scorpius_hyperion_malfoy).
casados(scorpius_hyperion_malfoy, rose_weasley).


nuera_a(SuegroSuegra, Nuera) :-
    descendiente(SuegroSuegra, HijoHija),
    (casados(HijoHija, Nuera); casados(Nuera, HijoHija)).

nieto(Nieto, Abuelo) :-
    descendiente(Abuelo, PadreMadre),
    descendiente(PadreMadre, Nieto),
    Nieto \== Abuelo.

bisnieto_a(Bisnieto, Bisabuelo) :-
    descendiente(Bisabuelo, Abuelo),
    descendiente(Abuelo, Padre),
    descendiente(Padre, Bisnieto),
    Bisnieto \== Bisabuelo.

bisnieto_a(Bisabuelo, Bisnieto) :-
    bisnieto_a(Bisnieto, Bisabuelo).

abuelo_a(Abuelo, Nieto) :-
    nieto(Nieto, Abuelo).

sobrino_a(Sobrino, TioTia) :-
    tioa(TioTia, Sobrino).

hermano_a(Ego, Persona) :-
    Ego \== Persona,
    es_descendiente(PadreComun, Ego),
    es_descendiente(PadreComun, Persona).
% R002

es_descendiente(Persona1, Persona2) :-
    descendiente(Persona1, Persona2).
	
es_descendiente(Persona1, Persona2) :-
    descendiente(Persona1, Intermedio),
    es_descendiente(Intermedio, Persona2).

% R003
descendientes(Persona, ListaDesc) :-
    findall(Desc, es_descendiente(Persona, Desc), ListaDesc).


tio_abuelo_a(TioAbuelo, Persona) :-
    es_descendiente(Abuelo, Persona),
    (hermanos_directos(TioAbuelo, Abuelo); hermano_a(TioAbuelo, Abuelo)),
    TioAbuelo \== Persona.

% usamos la imagen del discord como la de redit 