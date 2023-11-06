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
Definition Fruit `{ℋ : State.Trait} : Set := M.Val Fruit.t.

Module  Impl_core_fmt_Debug_for_unpacking_options_and_defaults_via_or_else_Fruit.
Section Impl_core_fmt_Debug_for_unpacking_options_and_defaults_via_or_else_Fruit.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := unpacking_options_and_defaults_via_or_else.Fruit.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter)
      : M ltac:(core.fmt.Result) :=
    M.function_body
      (let* α0 : ltac:(refine core.fmt.Formatter) := deref f in
      let* α1 : ltac:(refine (mut_ref core.fmt.Formatter)) := borrow_mut α0 in
      let* α2 := M.read self in
      let* α3 : ltac:(refine (ref str)) :=
        match α2 with
        | unpacking_options_and_defaults_via_or_else.Fruit.Apple  =>
          let* α0 : ltac:(refine str) := deref (mk_str "Apple") in
          borrow α0
        | unpacking_options_and_defaults_via_or_else.Fruit.Orange  =>
          let* α0 : ltac:(refine str) := deref (mk_str "Orange") in
          borrow α0
        | unpacking_options_and_defaults_via_or_else.Fruit.Banana  =>
          let* α0 : ltac:(refine str) := deref (mk_str "Banana") in
          borrow α0
        | unpacking_options_and_defaults_via_or_else.Fruit.Kiwi  =>
          let* α0 : ltac:(refine str) := deref (mk_str "Kiwi") in
          borrow α0
        | unpacking_options_and_defaults_via_or_else.Fruit.Lemon  =>
          let* α0 : ltac:(refine str) := deref (mk_str "Lemon") in
          borrow α0
        end in
      core.fmt.Formatter::["write_str"] α1 α3).
  
  Global Instance AssociatedFunction_fmt : Notation.DoubleColon Self "fmt" := {
    Notation.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_unpacking_options_and_defaults_via_or_else_Fruit.
End Impl_core_fmt_Debug_for_unpacking_options_and_defaults_via_or_else_Fruit.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* apple :
        ltac:(refine
          (core.option.Option
            unpacking_options_and_defaults_via_or_else.Fruit)) :=
      let* α0 :
          ltac:(refine unpacking_options_and_defaults_via_or_else.Fruit) :=
        M.alloc unpacking_options_and_defaults_via_or_else.Fruit.Apple in
      M.alloc (core.option.Option.Some α0) in
    let* no_fruit :
        ltac:(refine
          (core.option.Option
            unpacking_options_and_defaults_via_or_else.Fruit)) :=
      M.alloc core.option.Option.None in
    let get_kiwi_as_fallback :=
      let* _ : ltac:(refine unit) :=
        let* _ : ltac:(refine unit) :=
          let* α0 : ltac:(refine (array (ref str))) :=
            M.alloc [ mk_str "Providing kiwi as fallback
" ] in
          let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
          let* α2 : ltac:(refine (array (ref str))) := deref α1 in
          let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
          let* α4 : ltac:(refine (ref (slice (ref str)))) :=
            pointer_coercion "Unsize" α3 in
          let* α5 : ltac:(refine core.fmt.Arguments) :=
            core.fmt.Arguments::["new_const"] α4 in
          std.io.stdio._print α5 in
        M.alloc tt in
      let* α0 :
          ltac:(refine unpacking_options_and_defaults_via_or_else.Fruit) :=
        M.alloc unpacking_options_and_defaults_via_or_else.Fruit.Kiwi in
      M.alloc (core.option.Option.Some α0) in
    let get_lemon_as_fallback :=
      let* _ : ltac:(refine unit) :=
        let* _ : ltac:(refine unit) :=
          let* α0 : ltac:(refine (array (ref str))) :=
            M.alloc [ mk_str "Providing lemon as fallback
" ] in
          let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
          let* α2 : ltac:(refine (array (ref str))) := deref α1 in
          let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
          let* α4 : ltac:(refine (ref (slice (ref str)))) :=
            pointer_coercion "Unsize" α3 in
          let* α5 : ltac:(refine core.fmt.Arguments) :=
            core.fmt.Arguments::["new_const"] α4 in
          std.io.stdio._print α5 in
        M.alloc tt in
      let* α0 :
          ltac:(refine unpacking_options_and_defaults_via_or_else.Fruit) :=
        M.alloc unpacking_options_and_defaults_via_or_else.Fruit.Lemon in
      M.alloc (core.option.Option.Some α0) in
    let* first_available_fruit :
        ltac:(refine
          (core.option.Option
            unpacking_options_and_defaults_via_or_else.Fruit)) :=
      let* α0 :
          ltac:(refine
            (core.option.Option
              unpacking_options_and_defaults_via_or_else.Fruit)) :=
        (core.option.Option
              unpacking_options_and_defaults_via_or_else.Fruit)::["or_else"]
          no_fruit
          get_kiwi_as_fallback in
      (core.option.Option
            unpacking_options_and_defaults_via_or_else.Fruit)::["or_else"]
        α0
        get_lemon_as_fallback in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "first_available_fruit: "; mk_str "
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 :
            ltac:(refine
              (ref
                (core.option.Option
                  unpacking_options_and_defaults_via_or_else.Fruit))) :=
          borrow first_available_fruit in
        let* α6 :
            ltac:(refine
              (core.option.Option
                unpacking_options_and_defaults_via_or_else.Fruit)) :=
          deref α5 in
        let* α7 :
            ltac:(refine
              (ref
                (core.option.Option
                  unpacking_options_and_defaults_via_or_else.Fruit))) :=
          borrow α6 in
        let* α8 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_debug"] α7 in
        let* α9 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α8 ] in
        let* α10 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α9 in
        let* α11 : ltac:(refine (array core.fmt.rt.Argument)) := deref α10 in
        let* α12 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α11 in
        let* α13 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α12 in
        let* α14 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α4 α13 in
        std.io.stdio._print α14 in
      M.alloc tt in
    M.alloc tt).
