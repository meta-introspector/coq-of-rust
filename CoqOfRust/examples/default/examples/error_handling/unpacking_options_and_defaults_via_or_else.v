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

Module  Impl_core_fmt_Debug_for_unpacking_options_and_defaults_via_or_else_Fruit_t.
Section Impl_core_fmt_Debug_for_unpacking_options_and_defaults_via_or_else_Fruit_t.
  Definition Self : Set := unpacking_options_and_defaults_via_or_else.Fruit.t.
  
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
            | unpacking_options_and_defaults_via_or_else.Fruit.Apple =>
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
            | unpacking_options_and_defaults_via_or_else.Fruit.Orange =>
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
            | unpacking_options_and_defaults_via_or_else.Fruit.Banana =>
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
            | unpacking_options_and_defaults_via_or_else.Fruit.Kiwi =>
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
            | unpacking_options_and_defaults_via_or_else.Fruit.Lemon =>
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
End Impl_core_fmt_Debug_for_unpacking_options_and_defaults_via_or_else_Fruit_t.
End Impl_core_fmt_Debug_for_unpacking_options_and_defaults_via_or_else_Fruit_t.

(*
fn main() {
    let apple = Some(Fruit::Apple);
    let no_fruit: Option<Fruit> = None;
    let get_kiwi_as_fallback = || {
        println!("Providing kiwi as fallback");
        Some(Fruit::Kiwi)
    };
    let get_lemon_as_fallback = || {
        println!("Providing lemon as fallback");
        Some(Fruit::Lemon)
    };

    let first_available_fruit = no_fruit
        .or_else(get_kiwi_as_fallback)
        .or_else(get_lemon_as_fallback);
    println!("first_available_fruit: {:?}", first_available_fruit);
    // Providing kiwi as fallback
    // first_available_fruit: Some(Kiwi)
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* apple :
      M.Val
        (core.option.Option.t
          unpacking_options_and_defaults_via_or_else.Fruit.t) :=
    M.alloc
      (core.option.Option.Some
        unpacking_options_and_defaults_via_or_else.Fruit.Apple) in
  let* no_fruit :
      M.Val
        (core.option.Option.t
          unpacking_options_and_defaults_via_or_else.Fruit.t) :=
    M.alloc core.option.Option.None in
  let* get_kiwi_as_fallback :
      M.Val
        (unit ->
          M
            (core.option.Option.t
              unpacking_options_and_defaults_via_or_else.Fruit.t)) :=
    M.alloc
      ((let* _ : M.Val unit :=
        let* _ : M.Val unit :=
          let* α0 : ref str.t :=
            M.read (mk_str "Providing kiwi as fallback
") in
          let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
          let* α2 : core.fmt.Arguments.t :=
            M.call
              (core.fmt.Arguments.t::["new_const"]
                (pointer_coercion "Unsize" (borrow α1))) in
          let* α3 : unit := M.call (std.io.stdio._print α2) in
          M.alloc α3 in
        M.alloc tt in
      let* α0 :
          M.Val
            (core.option.Option.t
              unpacking_options_and_defaults_via_or_else.Fruit.t) :=
        M.alloc
          (core.option.Option.Some
            unpacking_options_and_defaults_via_or_else.Fruit.Kiwi) in
      M.read α0) :
      M
        (core.option.Option.t
          unpacking_options_and_defaults_via_or_else.Fruit.t)) in
  let* get_lemon_as_fallback :
      M.Val
        (unit ->
          M
            (core.option.Option.t
              unpacking_options_and_defaults_via_or_else.Fruit.t)) :=
    M.alloc
      ((let* _ : M.Val unit :=
        let* _ : M.Val unit :=
          let* α0 : ref str.t :=
            M.read (mk_str "Providing lemon as fallback
") in
          let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
          let* α2 : core.fmt.Arguments.t :=
            M.call
              (core.fmt.Arguments.t::["new_const"]
                (pointer_coercion "Unsize" (borrow α1))) in
          let* α3 : unit := M.call (std.io.stdio._print α2) in
          M.alloc α3 in
        M.alloc tt in
      let* α0 :
          M.Val
            (core.option.Option.t
              unpacking_options_and_defaults_via_or_else.Fruit.t) :=
        M.alloc
          (core.option.Option.Some
            unpacking_options_and_defaults_via_or_else.Fruit.Lemon) in
      M.read α0) :
      M
        (core.option.Option.t
          unpacking_options_and_defaults_via_or_else.Fruit.t)) in
  let* first_available_fruit :
      M.Val
        (core.option.Option.t
          unpacking_options_and_defaults_via_or_else.Fruit.t) :=
    let* α0 :
        core.option.Option.t
          unpacking_options_and_defaults_via_or_else.Fruit.t :=
      M.read no_fruit in
    let* α1 :
        unit ->
          M
            (core.option.Option.t
              unpacking_options_and_defaults_via_or_else.Fruit.t) :=
      M.read get_kiwi_as_fallback in
    let* α2 :
        core.option.Option.t
          unpacking_options_and_defaults_via_or_else.Fruit.t :=
      M.call
        ((core.option.Option.t
              unpacking_options_and_defaults_via_or_else.Fruit.t)::["or_else"]
          α0
          α1) in
    let* α3 :
        unit ->
          M
            (core.option.Option.t
              unpacking_options_and_defaults_via_or_else.Fruit.t) :=
      M.read get_lemon_as_fallback in
    let* α4 :
        core.option.Option.t
          unpacking_options_and_defaults_via_or_else.Fruit.t :=
      M.call
        ((core.option.Option.t
              unpacking_options_and_defaults_via_or_else.Fruit.t)::["or_else"]
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
