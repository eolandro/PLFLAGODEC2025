/*R002*/

descendiente(rolf_scamander, lysander_scamander).
descendiente(rolf_scamander, lorcan_scamander).
descendiente(luna_lovegood, lysander_scamander).
descendiente(luna_lovegood, lorcan_scamander).
descendiente(xenophilius_lovegood, luna_lovegood).
descendiente(lunas_mother, luna_lovegood).

descendiente(alice, neville_longbottom).
descendiente(frank_longbottom, neville_longbottom).
descendiente(mr_longbottom, frank_longbottom).
descendiente(augusta,frank_longbottom).

descendiente(remus_lupin, teddy_remus_lupin).
descendiente(nymphadora_tonks, teddy_remus_lupin).
descendiente(ted_tonks,nymphadora_tonks).
descendiente(andromeda_black,nymphadora_tonks).

descendiente(cygnus_black_iii,andromeda_black).
descendiente(cygnus_black_iii,bellatrix_black).
descendiente(cygnus_black_iii,narcissa_black).
descendiente(druella_rosier,bellatrix_black).
descendiente(druella_rosier,andromeda_black).
descendiente(druella_rosier,narcissa_black).

descendiente(draco_lucius_malfoy, scorpius_hyperion_malfoy).
descendiente(astoria_greengrass, scorpius_hyperion_malfoy).
descendiente(lucius_malfoy, draco_lucius_malfoy).
descendiente(narcissa_black, draco_lucius_malfoy).

descendiente(orion_black, sirius_black).
descendiente(orion_black, regulus_arcturus_black).
descendiente(walburga_black, sirius_black).
descendiente(walburga_black, regulus_arcturus_black).

descendiente(bill_arthur_weasley, victoire_weasley).
descendiente(bill_arthur_weasley, dominique_weasley).
descendiente(bill_arthur_weasley, louis_weasley).
descendiente(fleur_isabelle_delacour, victoire_weasley).
descendiente(fleur_isabelle_delacour, dominique_weasley).
descendiente(fleur_isabelle_delacour, louis_weasley).
descendiente(arthur_weasley, bill_arthur_weasley).
descendiente(molly_prewett, bill_arthur_weasley).
descendiente(monsieur_delacour, fleur_isabelle_delacour).
descendiente(monsieur_delacour,gabrielle_delacour).
descendiente(apolline_delacour, fleur_isabelle_delacour).
descendiente(apolline_delacour,gabrielle_delacour).

descendiente(arthur_weasley,charlie_weasley).
descendiente(molly_prewett,charlie_weasley).

descendiente(arthur_weasley,fred_weasley).
descendiente(molly_prewett,fred_weasley).

descendiente(george_weasley,fred_weasley_ii).
descendiente(george_weasley,roxanne_weasley).
descendiente(angelina_johnson,fred_weasley_ii).
descendiente(angelina_johnson,roxanne_weasley).
descendiente(arthur_weasley,george_weasley).
descendiente(molly_prewett,george_weasley).

descendiente(percy_ignatius_weasley, molly_weasley_ii).
descendiente(percy_ignatius_weasley, lucy_weasley).
descendiente(audrey,molly_weasley_ii).
descendiente(audrey,lucy_weasley).
descendiente(arthur_weasley,percy_ignatius_weasley).
descendiente(molly_prewett,percy_ignatius_weasley).

descendiente(ronald_bilius_weasley, rose_weasley).
descendiente(ronald_bilius_weasley, hugo_weasley).
descendiente(hermione_jean_granger, hugo_weasley).
descendiente(hermione_jean_granger, rose_weasley).
descendiente(arthur_weasley,ronald_bilius_weasley).
descendiente(molly_prewett,ronald_bilius_weasley).

descendiente(harry_james_potter, albus_severus_potter).
descendiente(harry_james_potter, lily_luna_potter).
descendiente(harry_james_potter, james_sirius_potter).
descendiente(ginevra_molly_weasley, albus_severus_potter).
descendiente(ginevra_molly_weasley, lily_luna_potter).
descendiente(ginevra_molly_weasley, james_sirius_potter).
descendiente(arthur_weasley,ginevra_molly_weasley).
descendiente(molly_prewett,ginevra_molly_weasley).
descendiente(james_potter,harry_james_potter).
descendiente(lily_evans,harry_james_potter).

descendiente(vernon_dursley, dudley_dursley).
descendiente(petunia_dursley, dudley_dursley).


/*R001*/
pareja(rolf_scamander, luna_lovegood).
pareja(xenophilius_lovegood, lunas_mother).

pareja(neville_longbottom, hannah_abbot).
pareja(frank_longbottom, alice).
pareja(mr_longbottom, augusta).

pareja(remus_lupin, nymphadora_tonks).
pareja(ted_tonks, andromeda_black).
pareja(draco_lucius_malfoy, astoria_greengrass).
pareja(lucius_malfoy, narcissa_black).
pareja(rodolphus_lestrange, bellatrix_black).
pareja(cygnus_black_iii, druella_rosier).
pareja(orion_black, walburga_black).
pareja(bill_arthur_weasley, fleur_isabelle_delacour).
pareja(arthur_weasley, molly_prewett).
pareja(percy_ignatius_weasley, audrey).
pareja(monsieur_delacour, apolline_delacour).
pareja(george_weasley, angelina_johnson).
pareja(ronald_bilius_weasley, hermione_jean_granger).
pareja(scorpius_hyperion_malfoy, rose_weasley).
pareja(harry_james_potter, ginevra_molly_weasley).
pareja(james_potter, lily_evans).
pareja(vernon_dursley, petunia_dursley).
pareja(victoire_weasley,teddy_remus_lupin).

hermano(vernon_dursley, marjorie_eileen_dursley).
hermana(astoria_greengrass,daphne_greengrass).

simetrico(P1,P2):- pareja(P1,P2); pareja(P2,P1).

bisnieto_a(P1,P2) :- P1 \== P2, descendiente(P1,Des), descendiente(Des,As), descendiente(As,P2).
tio_abuelo_a(P1,P2) :- P1 \== P2, nieto_a(P3,P1), hermano_a(P3,P2).

hermano_a(P1,P2) :- P1 \== P2, descendiente(As,P1), descendiente(As,P2).
nieto_a(P1,P2) :- P1 \== P2, descendiente(P1,Des), descendiente(Des,P2).
abuelo_a(P1,P2) :- nieto_a(P2,P1).

tia_o(P1,P2) :- P1 \== P2, descendiente(As,P1), hermano_a(As,P2).
sobrino_a(P1,P2) :- tia_o(P2,P1).

nuera_yerno(P1, P2) :- P1 \== P2, simetrico(P1, P3), descendiente(P2, P3).

/*R003*/
descendientes(P1,L) :- findall(Des, descendiente(P1,Des), L).