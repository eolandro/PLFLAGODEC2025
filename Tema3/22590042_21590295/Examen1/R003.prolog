% --- Familia Weasley–Prewett–Delacour ---
descendiente(arthur_weasley, bill_weasley).
descendiente(arthur_weasley, charlie_weasley).
descendiente(arthur_weasley, percy_weasley).
descendiente(arthur_weasley, fred_weasley).
descendiente(arthur_weasley, george_weasley).
descendiente(arthur_weasley, ronald_weasley).
descendiente(arthur_weasley, ginny_weasley).

descendiente(molly_prewett, bill_weasley).
descendiente(molly_prewett, charlie_weasley).
descendiente(molly_prewett, percy_weasley).
descendiente(molly_prewett, fred_weasley).
descendiente(molly_prewett, george_weasley).
descendiente(molly_prewett, ronald_weasley).
descendiente(molly_prewett, ginny_weasley).

% Hijos de Bill y Fleur Delacour
descendiente(bill_weasley, victoire_weasley).
descendiente(bill_weasley, dominique_weasley).
descendiente(bill_weasley, louis_weasley).
descendiente(fleur_delacour, victoire_weasley).
descendiente(fleur_delacour, dominique_weasley).
descendiente(fleur_delacour, louis_weasley).

% Hijos de Percy y Audrey
descendiente(percy_weasley, molly_weasley_ii).
descendiente(percy_weasley, lucy_weasley).
descendiente(audrey, molly_weasley_ii).
descendiente(audrey, lucy_weasley).

% Hijos de George y Angelina
descendiente(george_weasley, fred_weasley_ii).
descendiente(george_weasley, roxanne_weasley).
descendiente(angelina_johnson, fred_weasley_ii).
descendiente(angelina_johnson, roxanne_weasley).

% Hijos de Ron y Hermione
descendiente(ronald_weasley, rose_weasley).
descendiente(ronald_weasley, hugo_weasley).
descendiente(hermione_granger, rose_weasley).
descendiente(hermione_granger, hugo_weasley).

% Hijos de Harry y Ginny
descendiente(harry_potter, james_sirius_potter).
descendiente(harry_potter, albus_severus_potter).
descendiente(harry_potter, lily_luna_potter).
descendiente(ginny_weasley, james_sirius_potter).
descendiente(ginny_weasley, albus_severus_potter).
descendiente(ginny_weasley, lily_luna_potter).

% Padres de Harry
descendiente(james_potter, harry_potter).
descendiente(lily_potter, harry_potter).

% --- Familia Black–Malfoy–Lestrange–Tonks ---
descendiente(cygnus_black, bellatrix_lestrange).
descendiente(cygnus_black, andromeda_tonks).
descendiente(cygnus_black, narcissa_malfoy).
descendiente(druella_rosier, bellatrix_lestrange).
descendiente(druella_rosier, andromeda_tonks).
descendiente(druella_rosier, narcissa_malfoy).

descendiente(andromeda_tonks, nymphadora_tonks).
descendiente(ted_tonks, nymphadora_tonks).

descendiente(nymphadora_tonks, teddy_lupin).
descendiente(remus_lupin, teddy_lupin).

descendiente(lucius_malfoy, draco_malfoy).
descendiente(narcissa_malfoy, draco_malfoy).

descendiente(draco_malfoy, scorpius_malfoy).
descendiente(astoria_greengrass, scorpius_malfoy).

% --- Familia Dursley ---
descendiente(vernon_dursley, dudley_dursley).
descendiente(petunia_dursley, dudley_dursley).

% --- Familia Longbottom ---
descendiente(mr_longbottom, frank_longbottom).
descendiente(augusta_longbottom, frank_longbottom).
descendiente(frank_longbottom, neville_longbottom).
descendiente(alice_longbottom, neville_longbottom).

descendiente(neville_longbottom, --). 
descendiente(hannah_abbott, --).

% --- Familia Delacour ---
descendiente(monsieur_delacour, fleur_delacour).
descendiente(monsieur_delacour, gabrielle_delacour).
descendiente(apolline_delacour, fleur_delacour).
descendiente(apolline_delacour, gabrielle_delacour).

descendiente(fleur_delacour, victoire_weasley).
descendiente(fleur_delacour, dominique_weasley).
descendiente(fleur_delacour, louis_weasley).
descendiente(bill_weasley, victoire_weasley).
descendiente(bill_weasley, dominique_weasley).
descendiente(bill_weasley, louis_weasley).

% --- Familia Lovegood–Scamander ---
descendiente(xenophilius_lovegood, luna_lovegood).
descendiente(lunas_mum, luna_lovegood).

descendiente(luna_lovegood, lorcan_scamander).
descendiente(luna_lovegood, lysander_scamander).
descendiente(rolf_scamander, lorcan_scamander).
descendiente(rolf_scamander, lysander_scamander).

desc(Persona, Lista) :-
    findall(H, descendiente(Persona, H), H),
    descH(H, LH),
    append(H, LH, Lista).

descH([], []).

descH([H|R], LT) :-
    desc(H, DescH),
    descH(R, DescR),
    append(DescH, DescR, LT).


implista([]).
implista([P|R]) :-
    write(P), nl,
    implista(R).
    