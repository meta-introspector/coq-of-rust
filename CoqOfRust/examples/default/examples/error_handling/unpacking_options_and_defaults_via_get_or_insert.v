(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Fruit.
  Inductive t : Set :=
  | Apple
  | Orange
  | Banana
  | Kiwi
  | Lemon.
End Fruit.

Module  Impl_core_fmt_Debug_for_unpacking_options_and_defaults_via_get_or_insert_Fruit_t.
Section Impl_core_fmt_Debug_for_unpacking_options_and_defaults_via_get_or_insert_Fruit_t.
  Ltac Self := exact unpacking_options_and_defaults_via_get_or_insert.Fruit.t.
  
  (*
  Debug
  *)
  Definition fmt
      (self : ref ltac:(Self))
      (f : mut_ref core.fmt.Formatter.t)
      : M ltac:(core.fmt.Result) :=
    let* self : M.Val (ref ltac:(Self)) := M.alloc self in
    let* f : M.Val (mut_ref core.fmt.Formatter.t) := M.alloc f in
    let* α0 : mut_ref core.fmt.Formatter.t := M.read f in
    let* α1 : ref unpacking_options_and_defaults_via_get_or_insert.Fruit.t :=
      M.read self in
    let* α2 : M.Val (ref str.t) :=
      match α1 with
      | unpacking_options_and_defaults_via_get_or_insert.Fruit.Apple  =>
        let* α0 : ref str.t := M.read (mk_str "Apple") in
        M.alloc α0
      | unpacking_options_and_defaults_via_get_or_insert.Fruit.Orange  =>
        let* α0 : ref str.t := M.read (mk_str "Orange") in
        M.alloc α0
      | unpacking_options_and_defaults_via_get_or_insert.Fruit.Banana  =>
        let* α0 : ref str.t := M.read (mk_str "Banana") in
        M.alloc α0
      | unpacking_options_and_defaults_via_get_or_insert.Fruit.Kiwi  =>
        let* α0 : ref str.t := M.read (mk_str "Kiwi") in
        M.alloc α0
      | unpacking_options_and_defaults_via_get_or_insert.Fruit.Lemon  =>
        let* α0 : ref str.t := M.read (mk_str "Lemon") in
        M.alloc α0
      end in
    let* α3 : ref str.t := M.read α2 in
    M.call (core.fmt.Formatter.t::["write_str"] α0 α3).
  
  Global Instance AssociatedFunction_fmt :
    Notations.DoubleColon ltac:(Self) "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait ltac:(Self) := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_unpacking_options_and_defaults_via_get_or_insert_Fruit_t.
End Impl_core_fmt_Debug_for_unpacking_options_and_defaults_via_get_or_insert_Fruit_t.

(*
fn main() {
    let mut my_fruit: Option<Fruit> = None;
    let apple = Fruit::Apple;
    let first_available_fruit = my_fruit.get_or_insert(apple);
    println!("my_fruit is: {:?}", first_available_fruit);
    println!("first_available_fruit is: {:?}", first_available_fruit);
    // my_fruit is: Apple
    // first_available_fruit is: Apple
    //println!("Variable named `apple` is moved: {:?}", apple);
    // TODO: uncomment the line above to see the compiler error
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* my_fruit :
      M.Val
        (core.option.Option.t
          unpacking_options_and_defaults_via_get_or_insert.Fruit.t) :=
    M.alloc core.option.Option.None in
  let* apple : M.Val unpacking_options_and_defaults_via_get_or_insert.Fruit.t :=
    M.alloc unpacking_options_and_defaults_via_get_or_insert.Fruit.Apple in
  let* first_available_fruit :
      M.Val
        (mut_ref unpacking_options_and_defaults_via_get_or_insert.Fruit.t) :=
    let* α0 : unpacking_options_and_defaults_via_get_or_insert.Fruit.t :=
      M.read apple in
    let* α1 :
        mut_ref unpacking_options_and_defaults_via_get_or_insert.Fruit.t :=
      M.call
        ((core.option.Option.t
              unpacking_options_and_defaults_via_get_or_insert.Fruit.t)::["get_or_insert"]
          (borrow_mut my_fruit)
          α0) in
    M.alloc α1 in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "my_fruit is: "; mk_str "
" ] in
      let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
      let* α2 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α1) in
      let* α3 : core.fmt.rt.Argument.t :=
        M.call
          (core.fmt.rt.Argument.t::["new_debug"]
            (borrow first_available_fruit)) in
      let* α4 : M.Val core.fmt.rt.Argument.t := M.alloc α3 in
      let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
      let* α6 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α5) in
      let* α7 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α6) in
      let* α8 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α2 α7) in
      let* α9 : unit := M.call (std.io.stdio._print α8) in
      M.alloc α9 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "first_available_fruit is: "; mk_str "
" ] in
      let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
      let* α2 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α1) in
      let* α3 : core.fmt.rt.Argument.t :=
        M.call
          (core.fmt.rt.Argument.t::["new_debug"]
            (borrow first_available_fruit)) in
      let* α4 : M.Val core.fmt.rt.Argument.t := M.alloc α3 in
      let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
      let* α6 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α5) in
      let* α7 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α6) in
      let* α8 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α2 α7) in
      let* α9 : unit := M.call (std.io.stdio._print α8) in
      M.alloc α9 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
