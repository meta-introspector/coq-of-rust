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
  Definition Self : Set := unpacking_options_and_defaults_via_or.Fruit.t.
  
  (*
  Debug
  *)
  Definition fmt
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter.t)
      : M ltac:(core.fmt.Result) :=
    let* self := M.alloc self in
    let* f := M.alloc f in
    let* α0 : mut_ref core.fmt.Formatter.t := M.read f in
    let* α1 : M.Val (ref str.t) :=
      match_operator
        self
        [
          fun γ =>
            (let* γ :=
              let* α0 := M.read γ in
              M.pure (deref α0) in
            let* α0 := M.read γ in
            match α0 with
            | unpacking_options_and_defaults_via_or.Fruit.Apple =>
              let* α0 : ref str.t := M.read (mk_str "Apple") in
              M.alloc α0
            | _ => M.break_match
            end) :
            M (M.Val (ref str.t));
          fun γ =>
            (let* γ :=
              let* α0 := M.read γ in
              M.pure (deref α0) in
            let* α0 := M.read γ in
            match α0 with
            | unpacking_options_and_defaults_via_or.Fruit.Orange =>
              let* α0 : ref str.t := M.read (mk_str "Orange") in
              M.alloc α0
            | _ => M.break_match
            end) :
            M (M.Val (ref str.t));
          fun γ =>
            (let* γ :=
              let* α0 := M.read γ in
              M.pure (deref α0) in
            let* α0 := M.read γ in
            match α0 with
            | unpacking_options_and_defaults_via_or.Fruit.Banana =>
              let* α0 : ref str.t := M.read (mk_str "Banana") in
              M.alloc α0
            | _ => M.break_match
            end) :
            M (M.Val (ref str.t));
          fun γ =>
            (let* γ :=
              let* α0 := M.read γ in
              M.pure (deref α0) in
            let* α0 := M.read γ in
            match α0 with
            | unpacking_options_and_defaults_via_or.Fruit.Kiwi =>
              let* α0 : ref str.t := M.read (mk_str "Kiwi") in
              M.alloc α0
            | _ => M.break_match
            end) :
            M (M.Val (ref str.t));
          fun γ =>
            (let* γ :=
              let* α0 := M.read γ in
              M.pure (deref α0) in
            let* α0 := M.read γ in
            match α0 with
            | unpacking_options_and_defaults_via_or.Fruit.Lemon =>
              let* α0 : ref str.t := M.read (mk_str "Lemon") in
              M.alloc α0
            | _ => M.break_match
            end) :
            M (M.Val (ref str.t))
        ] in
    let* α2 : ref str.t := M.read α1 in
    M.call (core.fmt.Formatter.t::["write_str"] α0 α2).
  
  Global Instance AssociatedFunction_fmt : Notations.DoubleColon Self "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
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
  let* apple :
      M.Val
        (core.option.Option.t unpacking_options_and_defaults_via_or.Fruit.t) :=
    M.alloc
      (core.option.Option.Some
        unpacking_options_and_defaults_via_or.Fruit.Apple) in
  let* orange :
      M.Val
        (core.option.Option.t unpacking_options_and_defaults_via_or.Fruit.t) :=
    M.alloc
      (core.option.Option.Some
        unpacking_options_and_defaults_via_or.Fruit.Orange) in
  let* no_fruit :
      M.Val
        (core.option.Option.t unpacking_options_and_defaults_via_or.Fruit.t) :=
    M.alloc core.option.Option.None in
  let* first_available_fruit :
      M.Val
        (core.option.Option.t unpacking_options_and_defaults_via_or.Fruit.t) :=
    let* α0 :
        core.option.Option.t unpacking_options_and_defaults_via_or.Fruit.t :=
      M.read no_fruit in
    let* α1 :
        core.option.Option.t unpacking_options_and_defaults_via_or.Fruit.t :=
      M.read orange in
    let* α2 :
        core.option.Option.t unpacking_options_and_defaults_via_or.Fruit.t :=
      M.call
        ((core.option.Option.t
              unpacking_options_and_defaults_via_or.Fruit.t)::["or"]
          α0
          α1) in
    let* α3 :
        core.option.Option.t unpacking_options_and_defaults_via_or.Fruit.t :=
      M.read apple in
    let* α4 :
        core.option.Option.t unpacking_options_and_defaults_via_or.Fruit.t :=
      M.call
        ((core.option.Option.t
              unpacking_options_and_defaults_via_or.Fruit.t)::["or"]
          α2
          α3) in
    M.alloc α4 in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "first_available_fruit: ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : core.fmt.rt.Argument.t :=
        M.call
          (core.fmt.rt.Argument.t::["new_debug"]
            (borrow first_available_fruit)) in
      let* α4 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α3 ] in
      let* α5 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α4))) in
      let* α6 : unit := M.call (std.io.stdio._print α5) in
      M.alloc α6 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
