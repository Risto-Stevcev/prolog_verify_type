:- use_module(prolog/verify_type).

:- begin_tests(verify_type).

test(atom_t) :-
    X = foo, atom_t(X).

test(atom_t) :-
    atom_t(X), X = foo.

test(atom_t) :-
    atom_t(X), not(X = 123).


test(integer_t) :-
    X = 123, integer_t(X).

test(integer_t) :-
    integer_t(X), X = 123.

test(integer_t) :-
    integer_t(X), not(X = foo).


test(float_t) :-
    X = 12.3, float_t(X).

test(float_t) :-
    float_t(X), X = 12.3.

test(float_t) :-
    float_t(X), not(X = 123).


test(rational_t) :-
    X = 123, rational_t(X).

test(rational_t) :-
    rational_t(X), X is rational(1.5).

test(rational_t) :-
    rational_t(X), not(X = foo).


test(number_t) :-
    X = 123, number_t(X).

test(number_t) :-
    number_t(X), X = 12.3.

test(number_t) :-
    number_t(X), not(X = foo).


test(string_t) :-
    X = "foo", string_t(X).

test(string_t) :-
    string_t(X), X = "foo".

test(string_t) :-
    string_t(X), not(X = 123).


test(atomic_t) :-
    X = foo, atomic_t(X).

test(atomic_t) :-
    atomic_t(X), X = 123.

test(atomic_t) :-
    atomic_t(X), not(X = foo(bar)).


test(compound_t) :-
    X = foo(bar), compound_t(X).

test(compound_t) :-
    compound_t(X), X = foo(bar).

test(compound_t) :-
    compound_t(X), not(X = foo).


test(callable_t) :-
     F = {Y}/[X]>>(Y is X * 2), callable_t(X),
     call(F, 3), Y = 6.

test(callable_t) :-
    callable_t(X), F = {Y}/[X]>>(Y is X * 2),
    call(F, 3), Y = 6.

test(callable_t) :-
    callable_t(X), not(X = 123).

:- end_tests(verify_type).
