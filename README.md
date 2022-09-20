# prolog_verify_type

A more declarative approach to verify the type of a prolog term


## Usage

```prolog
?- X = foo, atom_t(X).
X = foo.

?- atom_t(X), X = foo.
X = foo.
```


## License

See LICENSE
