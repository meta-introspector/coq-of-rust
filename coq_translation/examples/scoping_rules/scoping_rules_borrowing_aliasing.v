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

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let point := {| Point.x := 0; Point.y := 0; Point.z := 0; |} in
  let borrowed_point := deref point in
  let another_borrow := deref point in
  let* α0 := format_argument::["new_display"] (deref borrowed_point.["x"]) in
  let* α1 := format_argument::["new_display"] (deref another_borrow.["y"]) in
  let* α2 := format_argument::["new_display"] (deref point.["z"]) in
  let* α3 :=
    format_arguments::["new_v1"]
      (deref [ "Point has coordinates: ("; ", "; ", "; ")
" ])
      (deref [ α0; α1; α2 ]) in
  let* _ := _crate.io._print α3 in
  let _ := tt in
  let* α4 := format_argument::["new_display"] (deref borrowed_point.["x"]) in
  let* α5 := format_argument::["new_display"] (deref another_borrow.["y"]) in
  let* α6 := format_argument::["new_display"] (deref point.["z"]) in
  let* α7 :=
    format_arguments::["new_v1"]
      (deref [ "Point has coordinates: ("; ", "; ", "; ")
" ])
      (deref [ α4; α5; α6 ]) in
  let* _ := _crate.io._print α7 in
  let _ := tt in
  let mutable_borrow := deref point in
  let* _ := assign mutable_borrow.["x"] 5 in
  let* _ := assign mutable_borrow.["y"] 2 in
  let* _ := assign mutable_borrow.["z"] 1 in
  let* α8 := format_argument::["new_display"] (deref mutable_borrow.["x"]) in
  let* α9 := format_argument::["new_display"] (deref mutable_borrow.["y"]) in
  let* α10 := format_argument::["new_display"] (deref mutable_borrow.["z"]) in
  let* α11 :=
    format_arguments::["new_v1"]
      (deref [ "Point has coordinates: ("; ", "; ", "; ")
" ])
      (deref [ α8; α9; α10 ]) in
  let* _ := _crate.io._print α11 in
  let _ := tt in
  let new_borrowed_point := deref point in
  let* α12 :=
    format_argument::["new_display"] (deref new_borrowed_point.["x"]) in
  let* α13 :=
    format_argument::["new_display"] (deref new_borrowed_point.["y"]) in
  let* α14 :=
    format_argument::["new_display"] (deref new_borrowed_point.["z"]) in
  let* α15 :=
    format_arguments::["new_v1"]
      (deref [ "Point now has coordinates: ("; ", "; ", "; ")
" ])
      (deref [ α12; α13; α14 ]) in
  let* _ := _crate.io._print α15 in
  let _ := tt in
  Pure tt.
