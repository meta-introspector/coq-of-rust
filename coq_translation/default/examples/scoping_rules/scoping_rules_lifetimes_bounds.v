(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Ref.
Section Ref.
  Context {T : Set}.
  
  Record t : Set := {
    x0 : ref T;
  }.
  
  Global Instance Get_0 : Notation.Dot "0" := {
    Notation.dot x := let* x := M.read x in M.alloc x.(x0) : M _;
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
      (self : M.Val (ref ltac:(Self)))
      (f : M.Val (mut_ref core.fmt.Formatter.t))
      : M (M.Val ltac:(core.fmt.Result)) :=
    M.function_body
      (let* α0 : ltac:(refine (M.Val core.fmt.Formatter.t)) := deref f in
      let* α1 : ltac:(refine (M.Val (mut_ref core.fmt.Formatter.t))) :=
        borrow_mut α0 in
      let* α2 : ltac:(refine (M.Val str)) := deref (mk_str "Ref") in
      let* α3 : ltac:(refine (M.Val (ref str))) := borrow α2 in
      let* α4 :
          ltac:(refine (M.Val (scoping_rules_lifetimes_bounds.Ref.t T))) :=
        deref self in
      let* α5 : ltac:(refine (M.Val (ref T))) := α4.["0"] in
      let* α6 : ltac:(refine (M.Val (ref (ref T)))) := borrow α5 in
      let* α7 : ltac:(refine (M.Val (ref (ref (ref T))))) := borrow α6 in
      let* α8 : ltac:(refine (M.Val (ref type not implemented))) :=
        pointer_coercion "Unsize" α7 in
      core.fmt.Formatter.t::["debug_tuple_field1_finish"] α1 α3 α8).
  
  Global Instance AssociatedFunction_fmt :
    Notation.DoubleColon ltac:(Self) "fmt" := {
    Notation.double_colon := fmt;
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
Definition print
    {T : Set}
    {ℋ_0 : core.fmt.Debug.Trait T}
    (t : M.Val T)
    : M (M.Val unit) :=
  M.function_body
    (let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
          M.alloc [ mk_str "`print`: t is "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref T))) := borrow t in
        let* α4 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_debug"] α3 in
        let* α5 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α4 ] in
        let* α6 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α5 in
        let* α7 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α7 in
        std.io.stdio._print α8 in
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
    (t : M.Val (ref T))
    : M (M.Val unit) :=
  M.function_body
    (let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
          M.alloc [ mk_str "`print_ref`: t is "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref (ref T)))) := borrow t in
        let* α4 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_debug"] α3 in
        let* α5 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α4 ] in
        let* α6 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α5 in
        let* α7 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α7 in
        std.io.stdio._print α8 in
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
Definition main : M (M.Val unit) :=
  M.function_body
    (let* x : ltac:(refine (M.Val i32.t)) := M.alloc 7 in
    let* ref_x :
        ltac:(refine (M.Val (scoping_rules_lifetimes_bounds.Ref.t i32.t))) :=
      let* α0 : ltac:(refine (M.Val (ref i32.t))) := borrow x in
      let* α1 := M.read α0 in
      M.alloc (scoping_rules_lifetimes_bounds.Ref.Build_t α1) in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* α0 :
          ltac:(refine
            (M.Val (ref (scoping_rules_lifetimes_bounds.Ref.t i32.t)))) :=
        borrow ref_x in
      scoping_rules_lifetimes_bounds.print_ref α0 in
    let* _ : ltac:(refine (M.Val unit)) :=
      scoping_rules_lifetimes_bounds.print ref_x in
    M.alloc tt).
