%% Impressão Recursivamente
imprimirlista([]).
imprimirlista([H|T]) :-
	write(H),
	imprimirlista(T).


%% Verifica se o elemento está na lista
member(4, [1,2,3,4,5,6,7,8]).

%% Adicionar elemento na lista
insere(Valor, [Ha|Ta], NovaLista) :-
	NovaLista = [Valor, Ha|Ta].

%% Remover elemento na lista
remove(Valor, [Ha|Ta], NovaLista) :-
	Valor = Ha, NovaLista = Ta.
remove(Valor, [Ha|Ta], NovaLista) :-
	[Valor, Ha|Ta],
	insere(Ha, NovaLista, NovaLista2)