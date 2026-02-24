
% -----------------------------
% Family Tree Prolog Program
% -----------------------------

% Facts: Gender
male(john).
male(paul).
male(mike).
male(david).
male(chris).

female(mary).
female(lisa).
female(susan).
female(anna).
female(kate).

% Facts: Parent relationships
parent(john, paul).
parent(mary, paul).

parent(john, lisa).
parent(mary, lisa).

parent(paul, mike).
parent(susan, mike).

parent(paul, anna).
parent(susan, anna).

parent(lisa, chris).
parent(david, chris).

parent(lisa, kate).
parent(david, kate).

% -----------------------------
% Rules
% -----------------------------

% Grandparent (recursive structure)
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

% Sibling: share at least one parent, and not the same person
sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

% Cousin: parents are siblings
cousin(X, Y) :-
    parent(A, X),
    parent(B, Y),
    sibling(A, B).

% Descendant (recursive rule)
descendant(X, Y) :-
    parent(Y, X).

descendant(X, Y) :-
    parent(Z, X),
    descendant(Z, Y).
