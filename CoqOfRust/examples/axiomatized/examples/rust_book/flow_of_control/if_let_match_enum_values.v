(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Foo.
  Inductive t : Set :=
  | Bar
  | Baz
  | Qux (_ : u32.t).
  
  Definition Get_Qux_0 :=
    Ref.map
      (fun α => match α with | Qux α0 => Some α0 | _ => None end)
      (fun β α => match α with | Qux _ => Some (Qux β) | _ => None end).
End Foo.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M unit.
