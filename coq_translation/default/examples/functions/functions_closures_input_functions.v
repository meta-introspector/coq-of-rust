(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition call_me
    `{ℋ : State.Trait}
    {F : Set}
    {ℋ_0 : core.ops.function.Fn.Trait F (Args := unit)}
    (f : F)
    : M unit :=
  let* _ :=
    let* α0 := borrow f F in
    let* α1 := M.alloc tt in
    (core.ops.function.Fn.call (Self := F)) α0 α1 in
  M.alloc tt.

Definition function `{ℋ : State.Trait} : M unit :=
  let* _ :=
    let* _ :=
      let* α0 := borrow [ mk_str "I'm a function!
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := core.fmt.Arguments::["new_const"] α3 in
      std.io.stdio._print α4 in
    M.alloc tt in
  M.alloc tt.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  let closure :=
    let* _ :=
      let* α0 := borrow [ mk_str "I'm a closure!
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := core.fmt.Arguments::["new_const"] α3 in
      std.io.stdio._print α4 in
    M.alloc tt in
  let* _ := functions_closures_input_functions.call_me closure in
  let* _ :=
    functions_closures_input_functions.call_me
      functions_closures_input_functions.function in
  M.alloc tt.
