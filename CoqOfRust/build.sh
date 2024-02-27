cargo coq-of-rust
opam switch create coq-of-rust ocaml.5.1.0
eval $(opam env --switch=coq-of-rust)
opam repo add coq-released https://coq.inria.fr/opam/released
#cd CoqOfRust
opam install --deps-only .
make
