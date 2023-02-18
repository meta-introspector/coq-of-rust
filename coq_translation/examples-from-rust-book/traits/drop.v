(* Generated by coq-of-rust *)
Require Import Coq.Strings.String.
Require Import Coq.ZArith.ZArith.
Local Open Scope Z.

(* Approximation *)

Definition u8 : Set := Z.
Definition u16 : Set := Z.
Definition u32 : Set := Z.
Definition u64 : Set := Z.
Definition u128 : Set := Z.

Definition i8 : Set := Z.
Definition i16 : Set := Z.
Definition i32 : Set := Z.
Definition i64 : Set := Z.
Definition i128 : Set := Z.

Definition f32 : Set := Z.
Definition f64 : Set := Z.

Module Droppable.
  Record t : Set := {
    name : static_ref str;
  }.
End Droppable.
Definition Droppable : Set := Droppable.t.

(* Impl [Droppable] of trait [Drop]*)
Module ImplDroppable.
  Definition drop (self : mut_ref Droppable) :=
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1
        ["> Dropping ";"\n"]
        [_crate::fmt::ImplArgumentV1.new_display self.name]) ;;
    tt ;;
    tt.
End ImplDroppable.
(* End impl [Droppable] *)

Definition main (_ : unit) :=
  let _a := {| Droppable.name := "a"; |} in
  let _b := {| Droppable.name := "b"; |} in
  let _c := {| Droppable.name := "c"; |} in
  let _d := {| Droppable.name := "d"; |} in
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1 ["Exiting block B\n"] []) ;;
  tt ;;
  tt ;;
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1 ["Just exited block B\n"] []) ;;
  tt ;;
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1 ["Exiting block A\n"] []) ;;
  tt ;;
  tt ;;
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1 ["Just exited block A\n"] []) ;;
  tt ;;
  drop _a ;;
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1 ["end of the main function\n"] []) ;;
  tt ;;
  tt.