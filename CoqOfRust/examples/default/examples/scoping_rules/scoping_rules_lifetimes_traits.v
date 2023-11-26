(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Borrowed.
Section Borrowed.
  Record t : Set := {
    x : ref i32.t;
  }.
  
  Global Instance Get_x : Notations.Dot "x" := {
    Notations.dot := Ref.map (fun x' => x'.(x)) (fun v x' => x' <| x := v |>);
  }.
  Global Instance Get_AF_x : Notations.DoubleColon t "x" := {
    Notations.double_colon (x' : M.Val t) := x'.["x"];
  }.
End Borrowed.
End Borrowed.

Module  Impl_core_fmt_Debug_for_scoping_rules_lifetimes_traits_Borrowed_t.
Section Impl_core_fmt_Debug_for_scoping_rules_lifetimes_traits_Borrowed_t.
  Ltac Self := exact scoping_rules_lifetimes_traits.Borrowed.t.
  
  (*
  Debug
  *)
  Definition fmt
      (self : M.Val (ref ltac:(Self)))
      (f : M.Val (mut_ref core.fmt.Formatter.t))
      : M ltac:(core.fmt.Result) :=
    M.function_body
      (let* α0 : M.Val core.fmt.Formatter.t := deref f in
      let* α1 : M.Val (mut_ref core.fmt.Formatter.t) := borrow_mut α0 in
      let* α2 : M.Val str.t := deref (mk_str "Borrowed") in
      let* α3 : M.Val (ref str.t) := borrow α2 in
      let* α4 : M.Val str.t := deref (mk_str "x") in
      let* α5 : M.Val (ref str.t) := borrow α4 in
      let* α6 : M.Val scoping_rules_lifetimes_traits.Borrowed.t := deref self in
      let* α7 : M.Val (ref (ref i32.t)) := borrow α6.["x"] in
      let* α8 : M.Val (ref (ref (ref i32.t))) := borrow α7 in
      let* α9 : M.Val (ref type not implemented) :=
        pointer_coercion "Unsize" α8 in
      let* α10 :=
        core.fmt.Formatter.t::["debug_struct_field1_finish"] α1 α3 α5 α9 in
      M.alloc α10).
  
  Global Instance AssociatedFunction_fmt :
    Notations.DoubleColon ltac:(Self) "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait ltac:(Self) := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_scoping_rules_lifetimes_traits_Borrowed_t.
End Impl_core_fmt_Debug_for_scoping_rules_lifetimes_traits_Borrowed_t.

Module  Impl_core_default_Default_for_scoping_rules_lifetimes_traits_Borrowed_t.
Section Impl_core_default_Default_for_scoping_rules_lifetimes_traits_Borrowed_t.
  Ltac Self := exact scoping_rules_lifetimes_traits.Borrowed.t.
  
  (*
      fn default() -> Self {
          Self { x: &10 }
      }
  *)
  Definition default : M ltac:(Self) :=
    M.function_body
      (let* α0 : M.Val i32.t := M.alloc 10 in
      let* α1 : M.Val (ref i32.t) := borrow α0 in
      let* α2 := M.read α1 in
      M.alloc {| scoping_rules_lifetimes_traits.Borrowed.x := α2; |}).
  
  Global Instance AssociatedFunction_default :
    Notations.DoubleColon ltac:(Self) "default" := {
    Notations.double_colon := default;
  }.
  
  Global Instance ℐ : core.default.Default.Trait ltac:(Self) := {
    core.default.Default.default := default;
  }.
End Impl_core_default_Default_for_scoping_rules_lifetimes_traits_Borrowed_t.
End Impl_core_default_Default_for_scoping_rules_lifetimes_traits_Borrowed_t.

(*
fn main() {
    let b: Borrowed = Default::default();
    println!("b is {:?}", b);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* b : M.Val scoping_rules_lifetimes_traits.Borrowed.t :=
      let* α0 :=
        core.default.Default.default
          (Self := scoping_rules_lifetimes_traits.Borrowed.t)
          (Trait := ltac:(refine _)) in
      M.alloc α0 in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "b is "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : M.Val (ref scoping_rules_lifetimes_traits.Borrowed.t) :=
          borrow b in
        let* α4 := core.fmt.rt.Argument.t::["new_debug"] α3 in
        let* α5 : M.Val core.fmt.rt.Argument.t := M.alloc α4 in
        let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
        let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α6 in
        let* α8 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α7 in
        let* α9 := core.fmt.Arguments.t::["new_v1"] α2 α8 in
        let* α10 : M.Val core.fmt.Arguments.t := M.alloc α9 in
        let* α11 := std.io.stdio._print α10 in
        M.alloc α11 in
      M.alloc tt in
    M.alloc tt).
