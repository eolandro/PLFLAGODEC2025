% ##R001##
% ##50##

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

% Parejas/Esposos

parejas("Hannah Abbot", "Neville Longbottom").
parejas("Neville Longbottom", "Hannah Abbot").

parejas("Monsieur Delacour", "Apolline Delacour").
parejas("Apolline Delacour", "Monsieur Delacour").

parejas("Astoria Greengrass", "Draco Lucius Malfoy").
parejas("Draco Lucius Malfoy", "Astoria Greengrass").

parejas("Molly Prewett", "Arthur Weasley").
parejas("Arthur Weasley", "Molly Prewett").

parejas("Ted Tonks", "Andromeda Black").
parejas("Andromeda Black", "Ted Tonks").

parejas("Nymphadora Tonks", "Remus Lupin").
parejas("Remus Lupin", "Nymphadora Tonks").

parejas("Alice", "Frank Longbottom").
parejas("Frank Longbottom", "Alice").

parejas("Narcissa Black", "Lucius Malfoy").
parejas("Lucius Malfoy", "Narcissa Black").

parejas("Bellatrix Black", "Rodolphus Lestrange").
parejas("Rodolphus Lestrange", "Bellatrix Black").

parejas("Augusta", "Mr Longbottom").
parejas("Mr Longbottom", "Augusta").

parejas("Luna Mum", "Xenophilius Lovegood").
parejas("Xenophilius Lovegood", "Luna Mum").

parejas("Luna Lovegood", "Rolf Scamander").
parejas("Rolf Scamander", "Luna Lovegood").

parejas("Walburga Black", "Orion Black").
parejas("Orion Black", "Walburga Black").

parejas("Druella Rosier", "Cygnus Black III").
parejas("Cygnus Black III", "Druella Rosier").

parejas("Rose Weasley", "Scorpius Hyperion Malfoy").
parejas("Scorpius Hyperion Malfoy", "Rose Weasley").

parejas("Victoire Weasley", "Teddy Remus Lupin").
parejas("Teddy Remus Lupin", "Victoire Weasley").

parejas("Ginevra Molly Weasley", "Harry James Potter").
parejas("Harry James Potter", "Ginevra Molly Weasley").

parejas("Ronald Bilius Weasley", "Hermione Jean Granger").
parejas("Hermione Jean Granger", "Ronald Bilius Weasley").

parejas("Audrey", "Percy Ignatius Weasley").
parejas("Percy Ignatius Weasley", "Audrey").

parejas("Fleur Isabelle Delacour", "Bill Arthur Weasley").
parejas("Bill Arthur Weasley", "Fleur Isabelle Delacour").

parejas("Petunia Evans", "Vernon Dursley").
parejas("Vernon Dursley", "Petunia Evans").

parejas("Lily Evans", "James Potter").
parejas("James Potter", "Lily Evans").

% Hermanos directos
hermanos("Vernon Dursley", "Marjorie Eileen Dursley").
hermanos("Marjorie Eileen Dursley", "Vernon Dursley").

hermanos("Lily Evans", "Petunia Evans").
hermanos("Petunia Evans", "Lily Evans").

hermanos("Astoria Greengrass", "Daphne Greengrass").
hermanos("Daphne Greengrass", "Astoria Greengrass").

hermanos("Walburga Black", "Cygnus Black III").
hermanos("Cygnus Black III", "Walburga Black").

hermanos("Druella Rosier", "Walburga Black").
hermanos("Walburga Black", "Druella Rosier").


% Descendientes

descendientes("Teddy Remus Lupin", "Remus Lupin").
descendientes("Teddy Remus Lupin", "Nymphadora Tonks").

descendientes("George Weasley", "Arthur Weasley").
descendientes("Fred Weasley", "Molly Prewett").
descendientes("Bellatrix Black", "Cygnus Black III").
descendientes("Bellatrix Black", "Druella Rosier").
descendientes("Lysander Scamander", "Luna Lovegood").
descendientes("Lysander Scamander", "Rolf Scamander").
descendientes("Dudley Dursley", "Vernon Dursley").
descendientes("Dudley Dursley", "Petunia Evans").
descendientes("Dominique Weasley", "Bill Arthur Weasley").
descendientes("Dominique Weasley", "Fleur Isabelle Delacour").
descendientes("James Sirius Potter", "Harry James Potter").
descendientes("James Sirius Potter", "Ginevra Molly Weasley").
descendientes("Gabrielle Delacour", "Apolline Delacour").
descendientes("Gabrielle Delacour", "Monsieur Delacour").
descendientes("Fred Weasley II", "George Weasley").
descendientes("Nymphadora Tonks", "Ted Tonks").
descendientes("Nymphadora Tonks", "Andromeda Black").
descendientes("Charlie Weasley", "Arthur Weasley").
descendientes("Charlie Weasley", "Molly Prewett").
descendientes("Louis Weasley", "Bill Arthur Weasley").
descendientes("Louis Weasley", "Fleur Isabelle Delacour").
descendientes("Harry James Potter", "Lily Evans").
descendientes("Harry James Potter", "James Potter").
descendientes("Regulus Arcturus Black", "Orion Black").
descendientes("Regulus Arcturus Black", "Walburga Black").
descendientes("Percy Ignatius Weasley", "Molly Prewett").
descendientes("Percy Ignatius Weasley", "Arthur Weasley").
descendientes("Molly Weasley II", "Percy Ignatius Weasley").
descendientes("Molly Weasley II", "Audrey").
descendientes("Albus Severus Potter", "Harry James Potter").
descendientes("Albus Severus Potter", "Ginevra Molly Weasley").
descendientes("Hugo Weasley", "Ronald Bilius Weasley").
descendientes("Hugo Weasley", "Hermione Jean Granger").
descendientes("Scorpius Hyperion Malfoy", "Astoria Greengrass").
descendientes("Scorpius Hyperion Malfoy", "Draco Lucius Malfoy").
descendientes("Sirius Black", "Walburga Black").
descendientes("Sirius Black", "Orion Black").
descendientes("Neville Longbottom", "Frank Longbottom").
descendientes("Neville Longbottom", "Alice").
descendientes("Ronald Bilius Weasley", "Arthur Weasley").
descendientes("Ronald Bilius Weasley", "Molly Prewett").
descendientes("Lorcan Scamander", "Luna Lovegood").
descendientes("Lorcan Scamander", "Rolf Scamander").
descendientes("Victoire Weasley", "Bill Arthur Weasley").
descendientes("Victoire Weasley", "Fleur Isabelle Delacour").
descendientes("Draco Lucius Malfoy", "Narcissa Black").
descendientes("Draco Lucius Malfoy", "Lucius Malfoy").
descendientes("Fred Weasley", "Arthur Weasley").
descendientes("Fred Weasley", "Molly Prewett").
descendientes("George Weasley", "Molly Prewett").
descendientes("Roxanne Weasley", "George Weasley").
descendientes("Lucy Weasley", "Percy Ignatius Weasley").
descendientes("Lucy Weasley", "Audrey").
descendientes("Ginevra Molly Weasley", "Arthur Weasley").
descendientes("Ginevra Molly Weasley", "Molly Prewett").
descendientes("Rose Weasley", "Ronald Bilius Weasley").
descendientes("Rose Weasley", "Hermione Jean Granger").
descendientes("Lily Luna Potter", "Harry James Potter").
descendientes("Lily Luna Potter", "Ginevra Molly Weasley").
descendientes("Andromeda Black", "Cygnus Black III").
descendientes("Andromeda Black", "Druella Rosier").
descendientes("Narcissa Black", "Cygnus Black III").
descendientes("Narcissa Black", "Druella Rosier").
descendientes("Fleur Isabelle Delacour", "Monsieur Delacour").
descendientes("Fleur Isabelle Delacour", "Apolline Delacour").
descendientes("Ginevra Molly Weasley", "Arthur Weasley").
descendientes("Ginevra Molly Weasley", "Molly Prewett").



% Validaciones 
hermano_a(Ego, Persona) :-
	Ego \== Persona,
	descendientes(Ego, Progenitor),
	descendientes(Persona, Progenitor).

nieto(Nieto, Abuelo) :-
	descendientes(Nieto, Progenitor),
	descendientes(Progenitor, Abuelo),
	Nieto \== Abuelo.


% 1
nuera(Persona1, Persona2) :-
	parejas(Persona1, Pareja),
	descendientes(Pareja, Persona2),
	Persona1 \== Persona2.

% 2
bisnieto_a(Persona1, Persona2) :-
	descendientes(Persona1, Progenitor),
	descendientes(Progenitor, Abuelo),
	descendientes(Persona2, Abuelo),
	Persona1 \== Persona2.

% 3 
sobrino_a(Persona1, Persona2):-
	descendientes(Persona1, Progenitor),
	% hermanos(Progenitor, Persona2),
	hermano_a(Progenitor, Persona2),
	Persona1 \== Persona2.

% 4 
abuelo_a(Persona1, Persona2):-
	descendientes(Persona2, Progenitor),
	descendientes(Progenitor, Persona2),
	Persona1 \== Persona2.

% 5
tio_abuelo_a(Persona1, Persona2):-
	descendientes(Persona2, Progenitor),
	descendientes(Progenitor, Abuelo),
	hermano_a(Persona1, Abuelo),
	Persona1 \== Persona2.