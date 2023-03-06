(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition main (_ : unit) : unit := Foo.

Module Foo.
  Record t : Set := {
    x : u32 * u32;
    y : u32;
  }.
  
  Global Instance Get_x : NamedField.Class t "x" _ := {|
    NamedField.get '(Build_t x0 _) := x0;
  |}.
  Global Instance Get_y : NamedField.Class t "y" _ := {|
    NamedField.get '(Build_t _ x1) := x1;
  |}.
  Class AssociatedFunction (name : string) (T : Set) : Set := {
    associated_function : T;
  }.
End Foo.
Definition Foo : Set := Foo.t.
