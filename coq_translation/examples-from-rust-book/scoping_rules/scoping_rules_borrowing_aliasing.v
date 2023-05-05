(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module Point.
  Record t : Set := {
    x : i32;
    y : i32;
    z : i32;
  }.
  
  Global Instance Get_x : Notation.Dot "x" := {
    Notation.dot '(Build_t x0 _ _) := x0;
  }.
  Global Instance Get_y : Notation.Dot "y" := {
    Notation.dot '(Build_t _ x1 _) := x1;
  }.
  Global Instance Get_z : Notation.Dot "z" := {
    Notation.dot '(Build_t _ _ x2) := x2;
  }.
End Point.
Definition Point : Set := Point.t.

Definition main :=
  ltac:(function (
    let point := {| Point.x := 0; Point.y := 0; Point.z := 0; |} in
    let borrowed_point := point in
    let another_borrow := point in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "Point has coordinates: ("; ", "; ", "; ")
" ],
            [
              format_argument::["new_display"](| borrowed_point.["x"] |);
              format_argument::["new_display"](| another_borrow.["y"] |);
              format_argument::["new_display"](| point.["z"] |)
            ]
          |)
        |) in
      tt in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "Point has coordinates: ("; ", "; ", "; ")
" ],
            [
              format_argument::["new_display"](| borrowed_point.["x"] |);
              format_argument::["new_display"](| another_borrow.["y"] |);
              format_argument::["new_display"](| point.["z"] |)
            ]
          |)
        |) in
      tt in
    let mutable_borrow := point in
    let '_ := assign mutable_borrow.["x"] 5 in
    let '_ := assign mutable_borrow.["y"] 2 in
    let '_ := assign mutable_borrow.["z"] 1 in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "Point has coordinates: ("; ", "; ", "; ")
" ],
            [
              format_argument::["new_display"](| mutable_borrow.["x"] |);
              format_argument::["new_display"](| mutable_borrow.["y"] |);
              format_argument::["new_display"](| mutable_borrow.["z"] |)
            ]
          |)
        |) in
      tt in
    let new_borrowed_point := point in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "Point now has coordinates: ("; ", "; ", "; ")
" ],
            [
              format_argument::["new_display"](| new_borrowed_point.["x"] |);
              format_argument::["new_display"](| new_borrowed_point.["y"] |);
              format_argument::["new_display"](| new_borrowed_point.["z"] |)
            ]
          |)
        |) in
      tt in
    tt
    : unit)).
