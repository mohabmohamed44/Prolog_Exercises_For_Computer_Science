smallest(List,X):- sort(List, [X|_]).
smallest_second(List,X):- sort(List, [_|[X|_]]).
largest(List,X):- sort(List, SortedList), reverse(SortedList, [X|_]).
second_largest(List,X):- sort(List,SortedList), reverse(SortedList, [_|[X|_]]).

% delete last element in a list withgout using conc
% Base case: When the list has only one element, return an empty list.
delete_last([_], []).

% Recursive case: When the list has more than one element, keep the head and recursively process the tail.
delete_last([H|T], [H|T2]) :-
    delete_last(T, T2).

% sum of a list.
sumList([],0).
sumList([H|Tail],Sum):-sumList(Tail,Sum1),Sum is Sum1+H.
% Prefix And suffix.
my_suffix(X,List):- append(_, X,List).
myprefix(X,List):- append(X,_,List).

% setof / bagof / findall
% ages of people
age(peter,7).
age(ann,5).
age(tom, 5).
age(pat, 8).
age(ann,5).

% find a name if it is on a List
onTheList(Name,[Name|_]).
onTheList(Name,[Head|Tail]):- \+(Head = Name), onTheList(Name,Tail).

% last element on the list
last_elem([X | []], X).
last_elem([_|Tail],X):- last_elem(Tail,X).


% greater Rule
greater(X,Y,Greater):- X > Y, Greater is X.
greater(X,Y,Greater):- X =< Y, Greater is Y.

% largest element on a list
largest_integer([X], X).
largest_integer([Head | Tail], X):-
    largest_integer(Tail, X_Tail),
    Head > X_Tail,
    X = Head.
largest_integer([Head | Tail], X):-
    largest_integer(Tail, X_Tail),
    Head =< X_Tail,
    X = X_Tail.

% How many times an element repeated in a List.
howMany([],_,0).
howMany([Head | Tail], X, Times):-
    \+ (Head = X),
    howMany(Tail, X, Times1),
    Times is Times1.
howMany([Head | Tail], X, Times):-
    Head = X,
    howMany(Tail, X, Times1),
    Times is Times1 + 1.



hello:- write('What is your name ?'), read(X),
    write('Hello'), tab(1), write(X).

% concate 2 list in Prolog
% L1 = [1,2] , L2 = [a,b,c].

conc([],L2,L2).
conc([H|T], L2, [H|R]):-
    append(T,L2,R).

% new Prolog Example.
likes(marry,pizza).
likes(marco,pizza).
likes(Human,pizza):- italian(Human).
italian(marco).


% knowledge base.
happy(vincent).
listens2music(butch).
playsAirGuitar(vincent):- listens2music(vincent), happy(vincent).
playsAirGuitar(butch):- happy(butch).
playsAirGuitar(butch):- listens2music(butch).

%woman(mia).
%woman(jody).
%woman(yolanda).
%loves(vincent, mia).
%loves(marsellus, mia).
%loves(pumpkin, honey_bunny).
%loves(honey_bunny, pumpkin).
%jealous(X,Y):- loves(X,Z), loves(Y,Z).%


person(frances,wilson,female,28,architect).
person(fred,jones,male,62,doctor).
person(paul,smith,male,45,plumber).
person(martin,williams,male,23,chemist).
person(mary,jones,female,24,programmer).
person(martin,johnson,male,47,solicitor).


% another knowledge base
big(bear).
big(elephant).
small(cat).
brown(bear).
black(cat).
gray(elephant).
dark(Z):- black(Z).
dark(Z):- brown(Z).


% delete last_elemt in a list using append.
del_last_elem([_],[]).
del_last_elem(List,NewList):-
    append(NewList, [_],List).


% delete last_elemt in a list using conc
% you have to write it first.
concatinate([],L,L).
concatinate([X|L1], L2, [X|L3]):-
    concatinate(L1,L2,L3).

del(List,NewList):-
    conc(NewList,[_], List).

loves(vincent,mia).
loves(marsellus,mia).
jealous(A,B):-
loves(A,C),
loves(B,C).

% length of a LIST
length1([],0).
length1([_|Tail],N):- length1(Tail,N1), N is 1 + N1.

% order a list
ordered([]).
ordered([_]).
ordered([X,Y|Z]):- X =< Y, ordered([Y|Z]).



