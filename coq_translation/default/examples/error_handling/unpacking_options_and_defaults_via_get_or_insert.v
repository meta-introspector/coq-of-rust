(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Fruit.
  Inductive t `{ℋ : State.Trait} : Set :=
  | Apple
  | Orange
  | Banana
  | Kiwi
  | Lemon.
End Fruit.
Definition Fruit `{ℋ : State.Trait} : Set := Fruit.t.

Module  Impl_core_fmt_Debug_for_unpacking_options_and_defaults_via_get_or_insert_Fruit.
Section Impl_core_fmt_Debug_for_unpacking_options_and_defaults_via_get_or_insert_Fruit.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set :=
    unpacking_options_and_defaults_via_get_or_insert.Fruit.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter)
      : M ltac:(core.fmt.Result) :=
    M.function_body
      (let* α0 := deref f core.fmt.Formatter in
      let* α1 := borrow_mut α0 core.fmt.Formatter in
      let* α2 :=
        match self with
        | unpacking_options_and_defaults_via_get_or_insert.Fruit  =>
          let* α0 := deref (mk_str "Apple") str in
          borrow α0 str
        | unpacking_options_and_defaults_via_get_or_insert.Fruit  =>
          let* α0 := deref (mk_str "Orange") str in
          borrow α0 str
        | unpacking_options_and_defaults_via_get_or_insert.Fruit  =>
          let* α0 := deref (mk_str "Banana") str in
          borrow α0 str
        | unpacking_options_and_defaults_via_get_or_insert.Fruit  =>
          let* α0 := deref (mk_str "Kiwi") str in
          borrow α0 str
        | unpacking_options_and_defaults_via_get_or_insert.Fruit  =>
          let* α0 := deref (mk_str "Lemon") str in
          borrow α0 str
        end in
      core.fmt.Formatter::["write_str"] α1 α2).
  
  Global Instance AssociatedFunction_fmt : Notation.DoubleColon Self "fmt" := {
    Notation.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_unpacking_options_and_defaults_via_get_or_insert_Fruit.
End Impl_core_fmt_Debug_for_unpacking_options_and_defaults_via_get_or_insert_Fruit.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* my_fruit := M.alloc core.option.Option.None in
    let* apple :=
      M.alloc unpacking_options_and_defaults_via_get_or_insert.Fruit.Apple in
    let* first_available_fruit :=
      let* α0 :=
        borrow_mut
          my_fruit
          (core.option.Option
            unpacking_options_and_defaults_via_get_or_insert.Fruit) in
      (core.option.Option
            unpacking_options_and_defaults_via_get_or_insert.Fruit)::["get_or_insert"]
        α0
        apple in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow [ mk_str "my_fruit is: "; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 :=
          borrow
            first_available_fruit
            (mut_ref unpacking_options_and_defaults_via_get_or_insert.Fruit) in
        let* α5 :=
          deref
            α4
            (mut_ref unpacking_options_and_defaults_via_get_or_insert.Fruit) in
        let* α6 :=
          borrow
            α5
            (mut_ref unpacking_options_and_defaults_via_get_or_insert.Fruit) in
        let* α7 := core.fmt.rt.Argument::["new_debug"] α6 in
        let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
        let* α9 := deref α8 (list core.fmt.rt.Argument) in
        let* α10 := borrow α9 (list core.fmt.rt.Argument) in
        let* α11 := pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
        std.io.stdio._print α12 in
      M.alloc tt in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow
            [ mk_str "first_available_fruit is: "; mk_str "
" ]
            (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 :=
          borrow
            first_available_fruit
            (mut_ref unpacking_options_and_defaults_via_get_or_insert.Fruit) in
        let* α5 :=
          deref
            α4
            (mut_ref unpacking_options_and_defaults_via_get_or_insert.Fruit) in
        let* α6 :=
          borrow
            α5
            (mut_ref unpacking_options_and_defaults_via_get_or_insert.Fruit) in
        let* α7 := core.fmt.rt.Argument::["new_debug"] α6 in
        let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
        let* α9 := deref α8 (list core.fmt.rt.Argument) in
        let* α10 := borrow α9 (list core.fmt.rt.Argument) in
        let* α11 := pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
        std.io.stdio._print α12 in
      M.alloc tt in
    M.alloc tt).
