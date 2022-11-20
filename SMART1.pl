% SMART: Social Model Alternative Response Trajectories
% Dr. Timothy Barker, 2022.
% Released under MIT License.
% See https://github.com/woofwoof/SMART/blob/main/README.md
% Written for SWI-Prolog, see https://www.swi-prolog.org/
% Save then 'consult' this file.
% Enter "smart." to execute it at the command line prompt.

% menu system (branches)
menu_branch("1"):-
    planets.

menu_branch("2"):-
    crises.

menu_branch("3"):-
    planetary_systems.

menu_branch("4"):-
    human_existential_threats.

menu_branch("5"):-
    earth_threats.
	
menu_branch("6"):-
    war_types.
	
menu_branch("0"):-
    writeln('BYE!'),
    sleep(3),
    halt.
	
% catch all
menu_branch(_):-
    nl,
    writeln('Incorrect response!'),
    writeln('BYE!'),
    sleep(3),
    halt.

% menu system (main options & user input)
smart:-
    nl,nl,
    writeln('Social Model Alternative Response Trajectories'),
    writeln('**********************************************'),
    nl,
    writeln('Please enter the corresponding menu number followed by return:'),nl,
    writeln('1. What planets exist?'),
    writeln('2. What potential crises exist?'),
    writeln('3. What are the planetary systems?'),
    writeln('4. What are current human existential threats?'),
    writeln('5. What are threats to Earth?'),
    writeln('6. What are the types of war?'),
    writeln('0. QUIT'),
    nl,
    read_line_to_string(user_input,Q),
    nl,
    menu_branch(Q),
    smart.

% query rules

planets:-
    forall(is_a(X,planet),
    (write(X),
    writeln(' is a planet'))).
    
crises:-
    forall(is_a(Y, crisis),
    (write(Y),
    writeln(' is a crisis'))).

planetary_systems:-
    forall(orbits(A,B),
    (write(A),
    write(' orbits '),
    writeln(B))).

human_existential_threats:-
    are(humans,Y),
    are(Y,threatened),
    forall(is_a(Z,crisis),
    (write(Z),
    writeln(' threatens humans'))).

earth_threats:-
    inhabit(X,earth),
    are(X,threatened),
    by(threatened,Z),
    forall(is_a(A,Z),
    (write('earth is threatened by '),
    writeln(A))).
	
war_types:-
    forall(can_be(war,Z),
    (write('war can be '),
    writeln(Z))).

% semantic net representation

is_a(earth,planet).
is_a(mars,planet).
is_a(moon, satellite).
is_a(sun,star).

is_a(over_population,crisis).
is_a(societal_collapse,crisis).
is_a(war,crisis).
is_a(ecosystem_collapse,crisis).
is_a(climate_change,crisis).
is_a(et_event,crisis).

orbits(moon,earth).
orbits(earth,sun).
orbits(mars,sun).

inhabit(species,earth).

are(humans,species).
are(animals,species).
are(species,threatened).
are(species,deceased).
are(species,living).

comprises_of(universe,solar_system).
comprises_of(solar_system,sun).
comprises_of(earth,air).
comprises_of(earth,ocean).
comprises_of(earth,land).

by(threatened,crisis).

can_be(war,nuclear).
can_be(war, chemical).
can_be(war,biological).
can_be(war,conventional).
can_be(war,cyber).
