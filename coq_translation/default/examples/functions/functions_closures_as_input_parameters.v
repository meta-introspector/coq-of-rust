(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition apply
    `{H' : State.Trait}
    {F : Set}
    `{core.ops.function.FnOnce.Trait F (Args := unit)}
    (f : F)
    : M (H := H') unit :=
  let* _ := f in
  Pure tt.

Definition apply_to_3
    `{H' : State.Trait}
    {F : Set}
    `{core.ops.function.Fn.Trait F (Args := i32)}
    (f : F)
    : M (H := H') i32 :=
  f 3.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H' : State.Trait} : M (H := H') unit :=
  let greeting := "hello" in
  let* farewell := "goodbye".["to_owned"] in
  let diary :=
    let* _ :=
      let* _ :=
        let* α0 := format_argument::["new_display"] (addr_of greeting) in
        let* α1 :=
          format_arguments::["new_v1"]
            (addr_of [ "I said "; ".
" ])
            (addr_of [ α0 ]) in
        std.io.stdio._print α1 in
      Pure tt in
    let* _ := farewell.["push_str"] "!!!" in
    let* _ :=
      let* _ :=
        let* α0 := format_argument::["new_display"] (addr_of farewell) in
        let* α1 :=
          format_arguments::["new_v1"]
            (addr_of [ "Then I screamed "; ".
" ])
            (addr_of [ α0 ]) in
        std.io.stdio._print α1 in
      Pure tt in
    let* _ :=
      let* _ :=
        let* α0 :=
          format_arguments::["new_const"]
            (addr_of [ "Now I can sleep. zzzzz
" ]) in
        std.io.stdio._print α0 in
      Pure tt in
    let* _ := core.mem.drop farewell in
    Pure tt in
  let* _ := functions_closures_as_input_parameters.apply diary in
  let double := fun x => 2.["mul"] x in
  let* _ :=
    let* _ :=
      let* α0 := functions_closures_as_input_parameters.apply_to_3 double in
      let* α1 := format_argument::["new_display"] (addr_of α0) in
      let* α2 :=
        format_arguments::["new_v1"]
          (addr_of [ "3 doubled: "; "
" ])
          (addr_of [ α1 ]) in
      std.io.stdio._print α2 in
    Pure tt in
  Pure tt.
