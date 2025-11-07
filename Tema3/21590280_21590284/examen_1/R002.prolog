/* Familia materna harry */
casados(vernon_dursley,petunia_dursley).
casados(petunia_dursley,vernon_dursley).

desciende(dudley_dursley,vernon_dursley).
desciende(dudley_dursley,petunia_dursley).

hermanoa(marjorie_dursley,vernon_dursley).
hermanoa(vernon_dursley,marjorie_dursley).
hermanoa(petunia_dursley,lily_potter).
hermanoa(lily_potter,petunia_dursley).

tioa(vernon_dursley,harry_potter).
tioa(petunia_dursley,harry_potter).
tioa(marjorie_dursley,harry_potter).

casados(dudley_dursley,dudleys_wife_dursley).
casados(dudleys_wife_dursley,dudley_dursley).

desciende(dudleys_son_dursley,dudley_dursley).
desciende(dudleys_son_dursley,dudleys_wife_dursley).
desciende(dudleys_daughter_dursley,dudley_dursley).
desciende(dudleys_daughter_dursley,dudleys_wife_dursley).

/* Potter */
casados(james_potter,lily_potter).
casados(lily_potter,james_potter).

desciende(harry_potter,james_potter).
desciende(harry_potter,lily_potter).

casados(harry_potter,ginny_potter).
casados(ginny_potter,harry_potter).

desciende(james_sirius_potter,harry_potter).
desciende(james_sirius_potter,ginny_potter).
desciende(albus_severus_potter,harry_potter).
desciende(albus_severus_potter,ginny_potter).
desciende(lily_luna_potter,harry_potter).
desciende(lily_luna_potter,ginny_potter).

tioa(hermione_weasley,james_sirius_potter).
tioa(hermione_weasley,albus_severus_potter).
tioa(hermione_weasley,lily_luna_potter).


/* Weasley */
casados(arthur_weasley,molly_weasley).
casados(molly_weasley,arthur_weasley).

desciende(ron_weasley,arthur_weasley).
desciende(ron_weasley,molly_weasley).
desciende(ginny_potter,arthur_weasley).
desciende(ginny_potter,molly_weasley).
desciende(fred_weasley,arthur_weasley).
desciende(fred_weasley,molly_weasley).
desciende(george_weasley,arthur_weasley).
desciende(george_weasley,molly_weasley).
desciende(charlie_weasley,arthur_weasley).
desciende(charlie_weasley,molly_weasley).
desciende(percy_weasley,arthur_weasley).
desciende(percy_weasley,molly_weasley).
desciende(bill_weasley,arthur_weasley).
desciende(bill_weasley,molly_weasley).

/* Familia de Ron */
casados(ron_weasley, hermione_weasley).
casados(hermione_weasley, ron_weasley).

desciende(rose_granger_weasley,ron_weasley).
desciende(rose_granger_weasley,hermione_weasley).
desciende(hugo_granger_weasley,ron_weasley).
desciende(hugo_granger_weasley,hermione_weasley).

tioa(angelina_weasley,rose_granger_weasley).
tioa(angelina_weasley,hugo_granger_weasley).

tioa(audrey_weasley,rose_granger_weasley).
tioa(audrey_weasley,hugo_granger_weasley).

tioa(fleur_weasley,rose_granger_weasley).
tioa(fleur_weasley,hugo_granger_weasley).

/* Familia de George */
casados(george_weasley,angelina_weasley).
casados(angelina_weasley,george_weasley).

desciende(fred_weasley_ii,george_weasley).
desciende(fred_weasley_ii,angelina_weasley).
desciende(roxanne_weasley,george_weasley).
desciende(roxanne_weasley,angelina_weasley).

tioa(hermione_weasley,fred_weasley_ii).
tioa(hermione_weasley,roxanne_weasley).

tioa(audrey_weasley,fred_weasley_ii).
tioa(audrey_weasley,roxanne_weasley).

tioa(fleur_weasley,fred_weasley_ii).
tioa(fleur_weasley,roxanne_weasley).

/* Familia de Percy */
casados(percy_weasley,audrey_weasley).
casados(audrey_weasley,percy_weasley).

desciende(molly_weasley_ii,percy_weasley).
desciende(molly_weasley_ii,audrey_weasley).
desciende(lucy_weasley,percy_weasley).
desciende(lucy_weasley,audrey_weasley).

tioa(hermione_weasley,molly_weasley_ii).
tioa(hermione_weasley,lucy_weasley).

tioa(angelina_weasley,molly_weasley_ii).
tioa(angelina_weasley,lucy_weasley).

tioa(fleur_weasley,molly_weasley_ii).
tioa(fleur_weasley,lucy_weasley).

/* Familia de Bill */
casados(bill_weasley,fleur_weasley).
casados(fleur_weasley,bill_weasley).

desciende(victoire_weasley,bill_weasley).
desciende(victoire_weasley,fleur_weasley).
desciende(dominique_weasley,bill_weasley).
desciende(dominique_weasley,fleur_weasley).
desciende(louis_weasley,bill_weasley).
desciende(louis_weasley,fleur_weasley).

tioa(hermione_weasley,victoire_weasley).
tioa(hermione_weasley,dominique_weasley).
tioa(hermione_weasley,louis_weasley).

tioa(angelina_weasley,victoire_weasley).
tioa(angelina_weasley,dominique_weasley).
tioa(angelina_weasley,louis_weasley).

tioa(audrey_weasley,victoire_weasley).
tioa(audrey_weasley,dominique_weasley).
tioa(audrey_weasley,louis_weasley).

/* Delacour */
casados(monsieur_delacour,apolline_delacour).
casados(apolline_delacour,monsieur_delacour).

desciende(gabrielle_delacour,monsieur_delacour).
desciende(gabrielle_delacour,apolline_delacour).
desciende(fleur_weasley,monsieur_delacour).
desciende(fleur_weasley,apolline_delacour).

/* Familia Lovegood */
casados(xenophilius_lovegood,pandora_lovegood).
casados(pandora_lovegood,xenophilius_lovegood).

desciende(luna_scamander,xenophilius_lovegood).
desciende(luna_scamander,pandora_lovegood).

/* Familia Scamander */
casados(rolf_scamander,luna_scamander).
casados(luna_scamander,rolf_scamander).

desciende(lysander_scamander,rolf_scamander).
desciende(lysander_scamander,luna_scamander).
desciende(lorcan_scamander,rolf_scamander).
desciende(lorcan_scamander,luna_scamander).

/* Familia Longbottom */
casados(mr_longbottom,augusta_longbottom).
casados(augusta_longbottom,mr_longbottom).

desciende(frank_longbottom,mr_longbottom).
desciende(frank_longbottom,augusta_longbottom).

casados(frank_longbottom,alice_longbottom).
casados(alice_longbottom,frank_longbottom).

desciende(neville_longbottom,frank_longbottom).
desciende(neville_longbottom,alice_longbottom).

casados(neville_longbottom,hannah_longbottom).
casados(hannah_longbottom,neville_longbottom).

/* Familia Black */
hermanoa(cygnus_black,walburga_black).
hermanoa(walburga_black,cygnus_black).

casados(orion_black,walburga_black).
casados(walburga_black,orion_black).

desciende(sirius_black,orion_black).
desciende(sirius_black,walburga_black).
desciende(regulus_black,orion_black).
desciende(regulus_black,walburga_black).

tioa(cygnus_black,sirius_black).
tioa(cygnus_black,regulus_black).
tioa(druella_black,sirius_black).
tioa(druella_black,regulus_black).

tioa(orion_black,bellatrix_lestrange).
tioa(orion_black,andromeda_tonks).
tioa(orion_black,narcissa_malfoy).

casados(cygnus_black,druella_black).
casados(druella_black,cygnus_black).

desciende(bellatrix_lestrange,cygnus_black).
desciende(bellatrix_lestrange,druella_black).

desciende(andromeda_tonks,cygnus_black).
desciende(andromeda_tonks,druella_black).

desciende(narcissa_malfoy,cygnus_black).
desciende(narcissa_malfoy,druella_black).

casados(rodolphus_lestrange,bellatrix_lestrange).
casados(bellatrix_lestrange,rodolphus_lestrange).

/* Familia de Tonks */
casados(ted_tonks,andromeda_tonks).
casados(andromeda_tonks,ted_tonks).

desciende(nymphadora_tonks,ted_tonks).
desciende(nymphadora_tonks,andromeda_tonks).

tioa(rodolphus_lestrange,nymphadora_tonks).
tioa(rodolphus_lestrange,draco_malfoy).
tioa(ted_tonks,draco_malfoy).
tioa(lucius_malfoy,nymphadora_tonks).

casados(remius_lupin,nymphadora_tonks).
casados(nymphadora_tonks,remius_lupin).

desciende(teddy_lupin,remius_lupin).
desciende(teddy_lupin,nymphadora_tonks).

casados(teddy_lupin,victoire_weasley).

/* Familia Malfoy */
casados(lucius_malfoy,narcissa_malfoy).
casados(narcissa_malfoy,lucius_malfoy).

desciende(draco_malfoy,lucius_malfoy).
desciende(draco_malfoy,narcissa_malfoy).

hermanoa(astoria_malfoy,daphne_greengrass).
hermanoa(daphne_greengrass,astoria_malfoy).

casados(draco_malfoy,astoria_malfoy).
casados(astoria_malfoy,draco_malfoy).

desciende(scorpius_malfoy,draco_malfoy).
desciende(scorpius_malfoy,astoria_malfoy).

casados(scorpius_malfoy,rose_granger_weasley).
casados(rose_granger_weasley,scorpius_malfoy).

/* Funciones */
descendiente(PERSONA1, PERSONA2) :- 
    desciende(PERSONA2, PERSONA1).

descendiente(PERSONA1, PERSONA2) :-
    desciende(PERSONA2, ANTECESOR),      
    descendiente(PERSONA1, ANTECESOR).


