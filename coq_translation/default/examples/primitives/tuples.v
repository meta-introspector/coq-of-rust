(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition reverse (pair : i32 * bool) : M (bool * i32) :=
  let '(int_param, bool_param) := pair in
  Pure (bool_param, int_param).

Module Matrix.
  Record t : Set := { _ : f32; _ : f32; _ : f32; _ : f32;}.
  
  Global Instance Get_0 : Notation.Dot 0 := {
    Notation.dot '(Build_t x0 _ _ _) := x0;
  }.
  Global Instance Get_1 : Notation.Dot 1 := {
    Notation.dot '(Build_t _ x1 _ _) := x1;
  }.
  Global Instance Get_2 : Notation.Dot 2 := {
    Notation.dot '(Build_t _ _ x2 _) := x2;
  }.
  Global Instance Get_3 : Notation.Dot 3 := {
    Notation.dot '(Build_t _ _ _ x3) := x3;
  }.
End Matrix.
Definition Matrix := Matrix.t.

Module Impl_core_fmt_Debug_for_tuples_Matrix.
  Definition Self := tuples.Matrix.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter)
      : M core.fmt.Result :=
    core.fmt.Formatter::["debug_tuple_field4_finish"]
      f
      "Matrix"
      (addr_of (self.[0]))
      (addr_of (self.[1]))
      (addr_of (self.[2]))
      (addr_of (addr_of (self.[3]))).
  
  Global Instance Method_fmt : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_tuples_Matrix.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let* long_tuple :=
    let* α0 := 1.["neg"] in
    let* α1 := 2.["neg"] in
    let* α2 := 3.["neg"] in
    let* α3 := 4.["neg"] in
    Pure
      (1, 2, 3, 4, α0, α1, α2, α3, 0 (* 0.1 *), 0 (* 0.2 *), "a"%char, true) in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of (long_tuple.[0])) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "long tuple first value: "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of (long_tuple.[1])) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "long tuple second value: "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  let* tuple_of_tuples :=
    let* α0 := 1.["neg"] in
    let* α1 := 2.["neg"] in
    Pure ((1, 2, 2), (4, α0), α1) in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_debug"] (addr_of tuple_of_tuples) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "tuple of tuples: "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  let pair := (1, true) in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_debug"] (addr_of pair) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "pair is "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := tuples.reverse pair in
      let* α1 := format_argument::["new_debug"] (addr_of α0) in
      let* α2 :=
        format_arguments::["new_v1"]
          (addr_of [ "the reversed pair is "; "
" ])
          (addr_of [ α1 ]) in
      std.io.stdio._print α2 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_debug"] (addr_of (5)) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "one element tuple: "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_debug"] (addr_of 5) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "just an integer: "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  let tuple := (1, "hello", 5 (* 4.5 *), true) in
  let '(a, b, c, d) := tuple in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_debug"] (addr_of a) in
      let* α1 := format_argument::["new_debug"] (addr_of b) in
      let* α2 := format_argument::["new_debug"] (addr_of c) in
      let* α3 := format_argument::["new_debug"] (addr_of d) in
      let* α4 :=
        format_arguments::["new_v1"]
          (addr_of [ ""; ", "; ", "; ", "; "
" ])
          (addr_of [ α0; α1; α2; α3 ]) in
      std.io.stdio._print α4 in
    Pure tt in
  let matrix :=
    tuples.Matrix.Build_t 1 (* 1.1 *) 1 (* 1.2 *) 2 (* 2.1 *) 2 (* 2.2 *) in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_debug"] (addr_of matrix) in
      let* α1 :=
        format_arguments::["new_v1"] (addr_of [ ""; "
" ]) (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  Pure tt.