% Familia Evans
familiahp(senorevans, lilyevans).
familiahp(senorevans, petuniaevans).
familiahp(senoraevans, lilyevans).
familiahp(senoraevans, petuniaevans).

% Familia Dursley
familiahp(senordursley, marjoriedursley).
familiahp(senordursley, vernondursley).
familiahp(senoradursley, marjoriedursley).
familiahp(senoradursley, vernondursley).

% Familia Dursley Evans
familiahp(vernondursley, dudleydursley).
familiahp(petuniaevans, dudleydursley).

% Familia Potter
familiahp(jamespotter, harrypotter).
familiahp(lilyevans, harrypotter).

% Familia Potter Weasley
familiahp(harrypotter, jamessiriuspotter).
familiahp(harrypotter, albussevruspotter).
familiahp(harrypotter, lilylunapotter).
familiahp(ginevramollyweasley, jamessiriuspotter).
familiahp(ginevramollyweasley, albussevruspotter).
familiahp(ginevramollyweasley, lilylunapotter).

% Familia Weasley
familiahp(arthurweasley, billarthurweasley).
familiahp(arthurweasley, charlieweasley).
familiahp(arthurweasley, fredweasley).
familiahp(arthurweasley, georgeweasley).
familiahp(arthurweasley, ronaldbiliusweasley).
familiahp(arthurweasley, ginevramollyweasley).
familiahp(arthurweasley, percyignatiusweasley).
familiahp(mollyprewett, billarthurweasley).
familiahp(mollyprewett, charlieweasley).
familiahp(mollyprewett, fredweasley).
familiahp(mollyprewett, georgeweasley).
familiahp(mollyprewett, ronaldbiliusweasley).
familiahp(mollyprewett, ginevramollyweasley).
familiahp(mollyprewett, percyignatiusweasley).

% Familia Delacour
familiahp(apollinedelacour, fleurisabelledelacour).
familiahp(apollinedelacour, gabrielledelacour).
familiahp(monsieurdelacour, fleurisabelledelacour).
familiahp(monsieurdelacour, gabrielledelacour).

% Familia Delacour Weasley
familiahp(fleurisabelledelacour, victoireweasley).
familiahp(fleurisabelledelacour, dominiqueweasley).
familiahp(fleurisabelledelacour, louisweasley).
familiahp(billarthurweasley, victoireweasley).
familiahp(billarthurweasley, dominiqueweasley).
familiahp(billarthurweasley, louisweasley).

% Familia Weasley Audrey
familiahp(percyignatiusweasley, mollyweasleyii).
familiahp(percyignatiusweasley, lucyweasley).
familiahp(audrey, mollyweasleyii).
familiahp(audrey, lucyweasley).

% Familia Weasley Johnson
familiahp(georgeweasley, fredweasleyii).
familiahp(georgeweasley, roxanneweasley).
familiahp(angelinajohnson, fredweasleyii).
familiahp(angelinajohnson, roxanneweasley).

% Familia Weasley Granger
familiahp(ronaldbiliusweasley, hugoweasley).
familiahp(ronaldbiliusweasley, roseweasley).
familiahp(hermionejeangranger, hugoweasley).
familiahp(hermionejeangranger, roseweasley).

% Familia Black
familiahp(polluxblack, cygnusblackiii).
familiahp(polluxblack, walburgablack).
familiahp(irmacrabbe, cygnusblackiii).
familiahp(irmacrabbe, walburgablack).
familiahp(walburgablack, siriusblack).
familiahp(walburgablack, regulusarcturusblack).
familiahp(orionblack, siriusblack).
familiahp(orionblack, regulusarcturusblack).

% Familia Black Rosier
familiahp(cygnusblackiii, bellatrixblack).
familiahp(cygnusblackiii, andromedablack).
familiahp(cygnusblackiii, narcissablack).
familiahp(druellarosier, bellatrixblack).
familiahp(druellarosier, andromedablack).
familiahp(druellarosier, narcissablack).

% Familia Lestrange
familiahp(corvuslestrange, rodolphuslestrange).
familiahp(hazellestrange, rodolphuslestrange).

% Familia Lupin Tonks
familiahp(remuslupin, teddyremuslupin).
familiahp(remuslupin, tedtonks).
familiahp(nymphadoratonks, teddyremuslupin).
familiahp(nymphadoratonks, tedtonks).

% Familia Black Malfoy
familiahp(narcissablack, dracoluciusmalfoy).
familiahp(luciusmalfoy, dracoluciusmalfoy).

% Familia Greengrass
familiahp(senorgreengrass, daphnegreengrass).
familiahp(senorgreengrass, astoriagreengrass).
familiahp(senoragreengrass, daphnegreengrass).
familiahp(senoragreengrass, astoriagreengrass).

% Familia Greengrass Malfoy
familiahp(dracoluciusmalfoy, scorpiushyperionmalfoy).
familiahp(astoriagreengrass, scorpiushyperionmalfoy).

% Familia Lovegood Mom
familiahp(xenophiliuslovegood, lunalovegood).
familiahp(lunasmom, lunalovegood).

% Familia Scamander Lovegood
familiahp(lunalovegood, lysandrescamander).
familiahp(lunalovegood, lorcanscamander).
familiahp(rolfscamander, lysandrescamander).
familiahp(rolfscamander, lorcanscamander).

% Familia Longbottom Augusta
familiahp(mrlongbottom, franklongbottom).
familiahp(augusta, franklongbottom).

% Familia Longbottom Alice
familiahp(franklongbottom, nevillelongbottom).
familiahp(alice, nevillelongbottom).

% R001
hermano_a(P1, P2) :- P1 \== P2, familiahp(As, P1), familiahp(As, P2).
nuera(P1, P2) :- familiahp(P2, H), familiahp(P1, N), familiahp(H, N), P1 \== P2.
sobrino_a(P1,P2) :- familiahp(R,P1),hermano_a(R,P2).
abuelo_a(P1,P2) :- familiahp(P1,R),familiahp(R,P2).

% R002
descendiente(P1,P2) :- familiahp(P1,P2).
descendiente(P1,P2) :- familiahp(P1,R), familiahp(R,P2).

% R003
descendientes(Persona1, ListaDeDescendientes) :- findall(Desc, descendiente(Persona1, Desc), ListaDeDescendientes).

