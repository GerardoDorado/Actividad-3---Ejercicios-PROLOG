mujer(ana).
mujer(maria).
mujer(luisa).
mujer(fabiola).
mujer(esther).
mujer(rocio).
mujer(deysi).
mujer(vanessa).
mujer(martha).
mujer(romina).

hombre(hugo).
hombre(mario).
hombre(marco).
hombre(juan).
hombre(luis).
hombre(pedro).
hombre(raul).
hombre(gerardo).
hombre(sergio).
hombre(paco).

madre(ana, rocio).
madre(ana, maria).
madre(ana, luis).
madre(martha, deysi).
madre(fabiola, romina).
madre(romina, luisa).

padre(marco, luis).
padre(raul, rocio).
padre(marco, hugo).
padre(pedro, gerardo).
padre(marco, romina).
padre(sergio, paco).
padre(hugo, sergio).

% Regla para identificar ABUELOS
% Para ser padre se debe SER PADRE
% Su hijo debe de tener hijos

abuelo(X, Y) :- padre(X, Z), (padre(Z, Y) ; madre(Z, Y)). 
%Solo muestra los nietos o las nietas de hijos hombres - Falta mostrar los nietos de hijos

% Regla para identificar ABUELAS
abuela(X, Y) :- madre(X, Z), (padre(Z, Y) ; madre(Z, Y)).

% REGLA persona
persona(X) :- hombre(X) ; mujer(X).

% REGLA matrimonio o pareja
pareja(A,B) :- padre(A,C), madre(B,C).

%nieto
nieto(Y, X) :- padre(X, Z), padre(Z, Y). 

%nieta
nieta(X, Y) :- madre(X, Z), madre(Z, Y).

%hermano
hermano(A, B) :- ((padre(C, A), padre(C, B)); (madre(D, A), madre(D, B))), (hombre(B), hombre(A)).

%hermana
hermana(A, B) :- ((padre(C, A), padre(C, B)); (madre(D, A), madre(D, B))), (mujer(B), mujer(A)).
