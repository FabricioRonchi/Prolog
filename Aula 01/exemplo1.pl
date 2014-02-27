pai(pedro,paulo).
pai(pedro,jose).
pai(pedro,xico).
pai(pedro,antonio).
pai(carlos,maria).
avo(X,Y) :- pai(X,Z) , pai(Z,Y).
