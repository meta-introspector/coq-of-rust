(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Number.
Section Number.
  Record t : Set := {
    value : i32.t;
  }.
  
  Global Instance Get_value : Notations.Dot "value" := {
    Notations.dot :=
      Ref.map (fun α => Some α.(value)) (fun β α => Some (α <| value := β |>));
  }.
  Global Instance Get_AF_value : Notations.DoubleColon t "value" := {
    Notations.double_colon (α : M.Val t) := α.["value"];
  }.
End Number.
End Number.

Module  Impl_core_convert_From_i32_t_for_from_Number_t.
Section Impl_core_convert_From_i32_t_for_from_Number_t.
  Definition Self : Set := from.Number.t.
  
  (*
      fn from(item: i32) -> Self {
          Number { value: item }
      }
  *)
  Definition from (item : i32.t) : M Self :=
    let* item := M.alloc item in
    let* α0 : i32.t := M.read item in
    M.pure {| from.Number.value := α0; |}.
  
  Global Instance AssociatedFunction_from :
    Notations.DoubleColon Self "from" := {
    Notations.double_colon := from;
  }.
  
  Global Instance ℐ : core.convert.From.Trait Self (T := i32.t) := {
    core.convert.From.from := from;
  }.
End Impl_core_convert_From_i32_t_for_from_Number_t.
End Impl_core_convert_From_i32_t_for_from_Number_t.

(*
fn main() {
    Number::from(30);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* _ : M.Val from.Number.t :=
    let* α0 : _ :=
      ltac:(M.get_method (fun ℐ =>
        core.convert.From.from
          (Self := from.Number.t)
          (T := i32.t)
          (Trait := ℐ))) in
    let* α1 : from.Number.t := M.call (α0 (Integer.of_Z 30)) in
    M.alloc α1 in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
