:- module(verify_type, [
             atom_t/1,
             integer_t/1,
             float_t/1,
             rational_t/1,
             number_t/1,
             string_t/1,
             atomic_t/1,
             compound_t/1,
             callable_t/1
         ]).

atom_t(Term) :-
    freeze(Term, atom(Term)).

integer_t(Term) :-
    freeze(Term, integer(Term)).

float_t(Term) :-
    freeze(Term, float(Term)).

rational_t(Term) :-
    freeze(Term, rational(Term)).

number_t(Term) :-
    freeze(Term, number(Term)).

string_t(Term) :-
    freeze(Term, string(Term)).

atomic_t(Term) :-
    freeze(Term, atomic(Term)).

compound_t(Term) :-
    freeze(Term, compound(Term)).

callable_t(Term) :-
    freeze(Term, callable(Term)).
