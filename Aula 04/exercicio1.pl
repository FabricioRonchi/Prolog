liga(a, b).
liga(a, e).
liga(b, f).
liga(b, c).
liga(e, d).
liga(e, f).
liga(f, c).
liga(g, d).
liga(g, h).
liga(h, f).

caminho(A,B,V) :-
    verificar(A,B,[A],Q),          
    reverse(Q,V).

verificar(A,B,P,[B|P]) :-		
    liga(A,B).

verificar(A,B,P,V) :-	
    liga(A,C),       
    verificar(C,B,[C|P],V).