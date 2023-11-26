(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Ref.
Section Ref.
  Context {T : Set}.
  
  Record t : Set := {
    x0 : ref T;
  }.
  
  Global Instance Get_0 : Notations.Dot "0" := {
    Notations.dot := Ref.map (fun x => x.(x0)) (fun v x => x <| x0 := v |>);
  }.
End Ref.
End Ref.

Module  Impl_core_fmt_Debug_for_scoping_rules_lifetimes_bounds_Ref_t_T.
Section Impl_core_fmt_Debug_for_scoping_rules_lifetimes_bounds_Ref_t_T.
  Context {T : Set}.
  
  Context {ℋ_0 : core.fmt.Debug.Trait T}.
  
  Ltac Self := exact (scoping_rules_lifetimes_bounds.Ref.t T).
  
  (*
  Debug
  *)
  Definition fmt
      (self : ref ltac:(Self))
      (f : mut_ref core.fmt.Formatter.t)
      : M ltac:(core.fmt.Result) :=
    let* self := M.alloc self in
    let* f := M.alloc f in
    M.function_body
      (let* α0 : M.Val core.fmt.Formatter.t := deref f in
      let* α1 : M.Val (mut_ref core.fmt.Formatter.t) := borrow_mut α0 in
      let* α2 := M.read α1 in
      let* α3 : M.Val str.t := deref (mk_str "Ref") in
      let* α4 : M.Val (ref str.t) := borrow α3 in
      let* α5 := M.read α4 in
      let* α6 : M.Val (scoping_rules_lifetimes_bounds.Ref.t T) := deref self in
      let* α7 : M.Val (ref (ref T)) := borrow α6.["0"] in
      let* α8 : M.Val (ref (ref (ref T))) := borrow α7 in
      let* α9 : M.Val (ref type not implemented) :=
        pointer_coercion "Unsize" α8 in
      let* α10 := M.read α9 in
      let* α11 :=
        core.fmt.Formatter.t::["debug_tuple_field1_finish"] α2 α5 α10 in
      M.alloc α11).
  
  Global Instance AssociatedFunction_fmt :
    Notations.DoubleColon ltac:(Self) "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait ltac:(Self) := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_scoping_rules_lifetimes_bounds_Ref_t_T.
End Impl_core_fmt_Debug_for_scoping_rules_lifetimes_bounds_Ref_t_T.

(*
fn print<T>(t: T)
where
    T: Debug,
{
    println!("`print`: t is {:?}", t);
}
*)
Definition print {T : Set} {ℋ_0 : core.fmt.Debug.Trait T} (t : T) : M unit :=
  let* t := M.alloc t in
  M.function_body
    (let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "`print`: t is "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := M.read α2 in
        let* α4 : M.Val (ref T) := borrow t in
        let* α5 := M.read α4 in
        let* α6 := core.fmt.rt.Argument.t::["new_debug"] α5 in
        let* α7 : M.Val core.fmt.rt.Argument.t := M.alloc α6 in
        let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
        let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α8 in
        let* α10 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α9 in
        let* α11 := M.read α10 in
        let* α12 := core.fmt.Arguments.t::["new_v1"] α3 α11 in
        let* α13 := std.io.stdio._print α12 in
        M.alloc α13 in
      M.alloc tt in
    M.alloc tt).

(*
fn print_ref<'a, T>(t: &'a T)
where
    T: Debug + 'a,
{
    println!("`print_ref`: t is {:?}", t);
}
*)
Definition print_ref
    {T : Set}
    {ℋ_0 : core.fmt.Debug.Trait T}
    (t : ref T)
    : M unit :=
  let* t := M.alloc t in
  M.function_body
    (let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "`print_ref`: t is "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := M.read α2 in
        let* α4 : M.Val (ref (ref T)) := borrow t in
        let* α5 := M.read α4 in
        let* α6 := core.fmt.rt.Argument.t::["new_debug"] α5 in
        let* α7 : M.Val core.fmt.rt.Argument.t := M.alloc α6 in
        let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
        let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α8 in
        let* α10 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α9 in
        let* α11 := M.read α10 in
        let* α12 := core.fmt.Arguments.t::["new_v1"] α3 α11 in
        let* α13 := std.io.stdio._print α12 in
        M.alloc α13 in
      M.alloc tt in
    M.alloc tt).

(*
fn main() {
    let x = 7;
    let ref_x = Ref(&x);

    print_ref(&ref_x);
    print(ref_x);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* x : M.Val i32.t :=
      let* α0 : M.Val i32.t := M.alloc 7 in
      M.copy α0 in
    let* ref_x : M.Val (scoping_rules_lifetimes_bounds.Ref.t i32.t) :=
      let* α0 : M.Val (ref i32.t) := borrow x in
      let* α1 := M.read α0 in
      M.alloc (scoping_rules_lifetimes_bounds.Ref.Build_t α1) in
    let* _ : M.Val unit :=
      let* α0 : M.Val (ref (scoping_rules_lifetimes_bounds.Ref.t i32.t)) :=
        borrow ref_x in
      let* α1 := M.read α0 in
      let* α2 := scoping_rules_lifetimes_bounds.print_ref α1 in
      M.alloc α2 in
    let* _ : M.Val unit :=
      let* α0 := M.read ref_x in
      let* α1 := scoping_rules_lifetimes_bounds.print α0 in
      M.alloc α1 in
    M.alloc tt).
