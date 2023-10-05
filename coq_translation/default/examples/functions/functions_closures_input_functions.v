(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition call_me
    `{H' : State.Trait}
    {F : Set}
    `{core.ops.function.Fn.Trait F (Args := unit)}
    (f : F)
    : M (H := H') unit :=
  let* _ := f in
  Pure tt.

Definition function `{H' : State.Trait} : M (H := H') unit :=
  let* _ :=
    let* _ :=
      let* α0 :=
        format_arguments::["new_const"] (addr_of [ "I'm a function!
" ]) in
      std.io.stdio._print α0 in
    Pure tt in
  Pure tt.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H' : State.Trait} : M (H := H') unit :=
  let closure :=
    let* _ :=
      let* α0 :=
        format_arguments::["new_const"] (addr_of [ "I'm a closure!
" ]) in
      std.io.stdio._print α0 in
    Pure tt in
  let* _ := functions_closures_input_functions.call_me closure in
  let* _ :=
    functions_closures_input_functions.call_me
      functions_closures_input_functions.function in
  Pure tt.
