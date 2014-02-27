%%	-Representar árvore genealógica usando dois fatos:
%%		-Progenitor : progenitor(Maria/Mariazinha)
%%		-Sexo : Masc(Jose)/Fen(Maria)
%%	
%%	-Criar uma regra pra responder:
%%		-Irmao(X, Y)
%%		-Irma(X, Y)		
%%		-Tio(X, Y)
%%		-Tia(X, Y)
%%		-Cunhado(X, Y)
%%		-Cunhada(X, Y)
%%

prog(jose, paulo).
prog(maria, paulo).
prog(jose, marta).
prog(maria, paulo).
prog(jose, paulo).
prog(jose, antonio).
prog(maria, antonio).
prog(jose, marta).
prog(maria, marta).
prog(paulo, andre).
prog(marcia, andre).
prog(paulo, simao).
prog(marcia, simao).
prog(marta, jonas).
prog(bruno, jonas).
prog(antonio, pedro).
prog(francisca, pafaela).
prog(antonio, pedro).
prog(francisca, rafaela).
masc(jose).
masc(paulo).
masc(bruno).
masc(antonio).
masc(andre).
masc(simao).
masc(jonas).
masc(pedro).
fem(maria).
fem(marcia).
fem(marta).
fem(francisca).
fem(rafaela).

irmao(X,Y) :- 
	prog(Z,X), 
	prog(Z,Y),
	X \= Y,
	masc(X).

irma(X,Y) :- 
	prog(Z,X), 
	prog(Z,Y),
	X \= Y,
	fem(X).

tio(X,Y) :- 		
	irmao(X,Z),
	prog(Z,Y).

tio(X,Y) :- 		
	casal(Z,X),
	tia(Z,Y).

tia(X,Y) :- 		
	irma(X,Z),
	prog(Z,Y).

tia(X,Y) :- 		
	casal(Z,X),
	tio(Z,Y).

casal(X,Y) :- 
	prog(X,Z),
	prog(Y,Z),
	X \= Y,
	masc(X).