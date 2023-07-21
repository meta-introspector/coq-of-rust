(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H : State.Trait} : M (H := H) unit :=
  let* array :=
    let* α0 := 2.["neg"] in
    Pure [ 1; α0; 6 ] in
  match array with
  | [0; second; third] =>
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of second) in
      let* α1 := format_argument::["new_display"] (addr_of third) in
      let* α2 :=
        format_arguments::["new_v1"]
          (addr_of [ "array[0] = 0, array[1] = "; ", array[2] = "; "
" ])
          (addr_of [ α0; α1 ]) in
      std.io.stdio._print α2 in
    Pure tt
  | [1; _; third] =>
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of third) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of
            [ "array[0] = 1, array[2] = "; " and array[1] was ignored
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt
  | 0TODO_implement_Some_in_Slice_in_compile_pattern =>
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of second) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of
            [
              "array[0] = -1, array[1] = ";
              " and all the other ones were ignored
"
            ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt
  | 0TODO_implement_Some_in_Slice_in_compile_pattern =>
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of second) in
      let* α1 := format_argument::["new_debug"] (addr_of tail) in
      let* α2 :=
        format_arguments::["new_v1"]
          (addr_of
            [ "array[0] = 3, array[1] = "; " and the other elements were "; "
"
            ])
          (addr_of [ α0; α1 ]) in
      std.io.stdio._print α2 in
    Pure tt
  | 0TODO_implement_Some_in_Slice_in_compile_pattern =>
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of first) in
      let* α1 := format_argument::["new_debug"] (addr_of middle) in
      let* α2 := format_argument::["new_display"] (addr_of last) in
      let* α3 :=
        format_arguments::["new_v1"]
          (addr_of [ "array[0] = "; ", middle = "; ", array[2] = "; "
" ])
          (addr_of [ α0; α1; α2 ]) in
      std.io.stdio._print α3 in
    Pure tt
  end.
