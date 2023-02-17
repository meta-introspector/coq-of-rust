(* Generated by coq-of-rust *)
Require Import Coq.Strings.String.
Require Import Coq.ZArith.ZArith.
Local Open Scope Z.

Definition u8 : Set := Z.

(* Approximation *)
Definition f64 : Set := Z.

Module Foo.
  Record t : Set := {
    x : u32 * u32;
    y : u32;
  }.
End Foo.
Definition Foo : Set := Foo.t.