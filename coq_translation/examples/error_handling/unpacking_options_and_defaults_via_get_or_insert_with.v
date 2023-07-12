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
Definition Fruit := Fruit.t.

Module
  Impl_core_fmt_Debug_for_unpacking_options_and_defaults_via_get_or_insert_with_Fruit.
  Definition
    Self
    :=
    unpacking_options_and_defaults_via_get_or_insert_with.Fruit.
  
  Definition fmt
      `{H : State.Trait}
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter)
      : M (H := H) core.fmt.Result :=
    let* α0 :=
      match self with
      | unpacking_options_and_defaults_via_get_or_insert_with.Fruit.Apple =>
        Pure "Apple"
      | unpacking_options_and_defaults_via_get_or_insert_with.Fruit.Orange =>
        Pure "Orange"
      | unpacking_options_and_defaults_via_get_or_insert_with.Fruit.Banana =>
        Pure "Banana"
      | unpacking_options_and_defaults_via_get_or_insert_with.Fruit.Kiwi =>
        Pure "Kiwi"
      | unpacking_options_and_defaults_via_get_or_insert_with.Fruit.Lemon =>
        Pure "Lemon"
      end in
    core.fmt.Formatter::["write_str"] f α0.
  
  Global Instance Method_fmt `{H : State.Trait} : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt `{H : State.Trait} := fmt;
  }.
End
  Impl_core_fmt_Debug_for_unpacking_options_and_defaults_via_get_or_insert_with_Fruit.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H : State.Trait} (_ : unit) : M (H := H) unit :=
  let my_fruit := core.option.Option.None in
  let get_lemon_as_fallback :=
    fun  =>
      let* _ :=
        let* _ :=
          let* α0 :=
            format_arguments::["new_const"]
              (addr_of [ "Providing lemon as fallback
" ]) in
          std.io.stdio._print α0 in
        Pure tt in
      Pure unpacking_options_and_defaults_via_get_or_insert_with.Fruit.Lemon in
  let* first_available_fruit :=
    my_fruit.["get_or_insert_with"] get_lemon_as_fallback in
  let* _ :=
    let* _ :=
      let* α0 :=
        format_argument::["new_debug"] (addr_of first_available_fruit) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "my_fruit is: "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 :=
        format_argument::["new_debug"] (addr_of first_available_fruit) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "first_available_fruit is: "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  let my_apple :=
    core.option.Option.Some
      unpacking_options_and_defaults_via_get_or_insert_with.Fruit.Apple in
  let* should_be_apple :=
    my_apple.["get_or_insert_with"] get_lemon_as_fallback in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_debug"] (addr_of should_be_apple) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "should_be_apple is: "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_debug"] (addr_of my_apple) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "my_apple is unchanged: "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  Pure tt.
