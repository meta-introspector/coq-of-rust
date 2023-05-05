(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition reverse (pair : i32 * bool) :=
  ltac:(function (
    let '(int_param, bool_param) := pair in
    (bool_param, int_param)
    : bool * i32)).

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

Module Impl__crate_fmt_Debug_for_Matrix.
  Definition Self := Matrix.
  
  Definition fmt (self : ref Self) (f : mut_ref _crate.fmt.Formatter) :=
    ltac:(function (
      _crate.fmt.Formatter::["debug_tuple_field4_finish"](|
        f,
        "Matrix",
        self.[0],
        self.[1],
        self.[2],
        self.[3]
      |)
      : _crate.fmt.Result)).
  
  Global Instance Method_fmt : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : _crate.fmt.Debug.Trait Self := {
    _crate.fmt.Debug.fmt := fmt;
  }.
End Impl__crate_fmt_Debug_for_Matrix.

Definition main :=
  ltac:(function (
    let long_tuple :=
      (1,
        2,
        3,
        4,
        1.["neg"](||),
        2.["neg"](||),
        3.["neg"](||),
        4.["neg"](||),
        0 (* 0.1 *),
        0 (* 0.2 *),
        "a"%char,
        true) in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "long tuple first value: "; "
" ],
            [ format_argument::["new_display"](| long_tuple.[0] |) ]
          |)
        |) in
      tt in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "long tuple second value: "; "
" ],
            [ format_argument::["new_display"](| long_tuple.[1] |) ]
          |)
        |) in
      tt in
    let tuple_of_tuples := ((1, 2, 2), (4, 1.["neg"](||)), 2.["neg"](||)) in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "tuple of tuples: "; "
" ],
            [ format_argument::["new_debug"](| tuple_of_tuples |) ]
          |)
        |) in
      tt in
    let pair := (1, true) in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "pair is "; "
" ],
            [ format_argument::["new_debug"](| pair |) ]
          |)
        |) in
      tt in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "the reversed pair is "; "
" ],
            [ format_argument::["new_debug"](| reverse(| pair |) |) ]
          |)
        |) in
      tt in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "one element tuple: "; "
" ],
            [ format_argument::["new_debug"](| (5) |) ]
          |)
        |) in
      tt in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "just an integer: "; "
" ],
            [ format_argument::["new_debug"](| 5 |) ]
          |)
        |) in
      tt in
    let tuple := (1, "hello", 5 (* 4.5 *), true) in
    let '(a, b, c, d) := tuple in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ ""; ", "; ", "; ", "; "
" ],
            [
              format_argument::["new_debug"](| a |);
              format_argument::["new_debug"](| b |);
              format_argument::["new_debug"](| c |);
              format_argument::["new_debug"](| d |)
            ]
          |)
        |) in
      tt in
    let matrix :=
      Matrix.Build_t 1 (* 1.1 *) 1 (* 1.2 *) 2 (* 2.1 *) 2 (* 2.2 *) in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ ""; "
" ],
            [ format_argument::["new_debug"](| matrix |) ]
          |)
        |) in
      tt in
    tt
    : unit)).
