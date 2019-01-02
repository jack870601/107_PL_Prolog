mother(X, Y) :- female(X), parent(X, Y).

father(X, Y) :- male(X), parent(X, Y).

child(X, Y) :- parent(Y, X).

sibling(X, Y) :- parent(Z, X), parent(Z, Y).

sister(X, Y) :- female(X), female(Y), sibling(X, Y).

brother(X, Y) :- male(X), male(Y), sibling(X, Y).

daughter(X, Y) :- female(X), parent(Y, X).

son(X, Y) :- male(X), parent(Y, X).

uncle(X, Y) :- male(X), cousin(Y, X).

aunt(X, Y) :- female(X), cousin(Y, X).

cousin(X, Y) :- parent(Z, X), sibling(Z, Y).

% Do not modify the following facts.  Complete the predicates 
% above so that they work with the following facts.

female(amy).
parent(amy, janny).
parent(amy, richard).
parent(amy, joan).

male(adam).

male(alex).

female(bitsy).

female(fran).

female(janny).
parent(janny, bitsy).
parent(janny, alex).

female(joan).
parent(joan, fran).

male(mark).
parent(mark, janny).
parent(mark, richard).

male(mel).
parent(mel, joan).

male(richard).
parent(richard, adam).
parent(richard, rosa).

female(rosa).
