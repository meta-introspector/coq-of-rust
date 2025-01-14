(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Foo.
Section Foo.
  Record t : Set := {
    x0 : u32.t;
  }.
  
  Definition Get_0 :=
    Ref.map (fun α => Some α.(x0)) (fun β α => Some (α <| x0 := β |>)).
End Foo.
End Foo.

Module  Impl_example05_Foo_t.
Section Impl_example05_Foo_t.
  Definition Self : Set := example05.Foo.t.
  
  (*
      fn plus1(self) -> u32 {
          self.0 + 1
      }
  *)
  Definition plus1 (self : Self) : M u32.t :=
    let* self := M.alloc self in
    let* α0 : u32.t := M.read (example05.Foo.Get_0 self) in
    BinOp.Panic.add α0 ((Integer.of_Z 1) : u32.t).
  
  Global Instance AssociatedFunction_plus1 :
    Notations.DoubleColon Self "plus1" := {
    Notations.double_colon := plus1;
  }.
End Impl_example05_Foo_t.
End Impl_example05_Foo_t.

(*
fn main() {
    let foo = Foo(0);
    foo.plus1();
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* foo : M.Val example05.Foo.t :=
    M.alloc (example05.Foo.Build_t ((Integer.of_Z 0) : u32.t)) in
  let* _ : M.Val u32.t :=
    let* α0 : example05.Foo.t := M.read foo in
    let* α1 : u32.t := M.call (example05.Foo.t::["plus1"] α0) in
    M.alloc α1 in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
