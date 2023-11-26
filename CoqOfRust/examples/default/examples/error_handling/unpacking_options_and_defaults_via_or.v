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

Module  Impl_core_fmt_Debug_for_unpacking_options_and_defaults_via_or_Fruit_t.
Section Impl_core_fmt_Debug_for_unpacking_options_and_defaults_via_or_Fruit_t.
  Ltac Self := exact unpacking_options_and_defaults_via_or.Fruit.t.
  
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
      let* α3 := M.read self in
      let* α4 : M.Val (ref str.t) :=
        match α3 with
        | unpacking_options_and_defaults_via_or.Fruit.Apple  =>
          let* α0 : M.Val str.t := deref (mk_str "Apple") in
          borrow α0
        | unpacking_options_and_defaults_via_or.Fruit.Orange  =>
          let* α0 : M.Val str.t := deref (mk_str "Orange") in
          borrow α0
        | unpacking_options_and_defaults_via_or.Fruit.Banana  =>
          let* α0 : M.Val str.t := deref (mk_str "Banana") in
          borrow α0
        | unpacking_options_and_defaults_via_or.Fruit.Kiwi  =>
          let* α0 : M.Val str.t := deref (mk_str "Kiwi") in
          borrow α0
        | unpacking_options_and_defaults_via_or.Fruit.Lemon  =>
          let* α0 : M.Val str.t := deref (mk_str "Lemon") in
          borrow α0
        end in
      let* α5 := M.read α4 in
      let* α6 := core.fmt.Formatter.t::["write_str"] α2 α5 in
      M.alloc α6).
  
  Global Instance AssociatedFunction_fmt :
    Notations.DoubleColon ltac:(Self) "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait ltac:(Self) := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_unpacking_options_and_defaults_via_or_Fruit_t.
End Impl_core_fmt_Debug_for_unpacking_options_and_defaults_via_or_Fruit_t.

(*
fn main() {
    let apple = Some(Fruit::Apple);
    let orange = Some(Fruit::Orange);
    let no_fruit: Option<Fruit> = None;

    let first_available_fruit = no_fruit.or(orange).or(apple);
    println!("first_available_fruit: {:?}", first_available_fruit);
    // first_available_fruit: Some(Orange)

    // `or` moves its argument.
    // In the example above, `or(orange)` returned a `Some`, so `or(apple)` was not invoked.
    // But the variable named `apple` has been moved regardless, and cannot be used anymore.
    // println!("Variable apple was moved, so this line won't compile: {:?}", apple);
    // TODO: uncomment the line above to see the compiler error
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* apple :
        M.Val
          (core.option.Option.t
            unpacking_options_and_defaults_via_or.Fruit.t) :=
      M.alloc
        (core.option.Option.Some
          unpacking_options_and_defaults_via_or.Fruit.Apple) in
    let* orange :
        M.Val
          (core.option.Option.t
            unpacking_options_and_defaults_via_or.Fruit.t) :=
      M.alloc
        (core.option.Option.Some
          unpacking_options_and_defaults_via_or.Fruit.Orange) in
    let* no_fruit :
        M.Val
          (core.option.Option.t
            unpacking_options_and_defaults_via_or.Fruit.t) :=
      M.alloc core.option.Option.None in
    let* first_available_fruit :
        M.Val
          (core.option.Option.t
            unpacking_options_and_defaults_via_or.Fruit.t) :=
      let* α0 := M.read no_fruit in
      let* α1 := M.read orange in
      let* α2 :=
        (core.option.Option.t
              unpacking_options_and_defaults_via_or.Fruit.t)::["or"]
          α0
          α1 in
      let* α3 := M.read apple in
      let* α4 :=
        (core.option.Option.t
              unpacking_options_and_defaults_via_or.Fruit.t)::["or"]
          α2
          α3 in
      M.alloc α4 in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "first_available_fruit: "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := M.read α2 in
        let* α4 :
            M.Val
              (ref
                (core.option.Option.t
                  unpacking_options_and_defaults_via_or.Fruit.t)) :=
          borrow first_available_fruit in
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
