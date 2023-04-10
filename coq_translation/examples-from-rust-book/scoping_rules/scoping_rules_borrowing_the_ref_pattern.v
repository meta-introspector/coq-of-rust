(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module Point.
  Record t : Set := {
    x : i32;
    y : i32;
  }.
  
  Global Instance Get_x : Notation.Dot "x" := {
    Notation.dot '(Build_t x0 _) := x0;
  }.
  Global Instance Get_y : Notation.Dot "y" := {
    Notation.dot '(Build_t _ x1) := x1;
  }.
End Point.
Definition Point : Set := Point.t.

Module Impl__crate_clone_Clone_for_Point.
  Definition Self := Point.
  
  Definition clone (self : ref Self) : Point :=
    let _ := tt in
    deref self.
  
  Global Instance Method_clone : Notation.Dot "clone" := {
    Notation.dot := clone;
  }.
  
  Global Instance I : _crate.clone.Clone.Trait Self := {
    _crate.clone.Clone.clone := clone;
  }.
End Impl__crate_clone_Clone_for_Point.

Module Impl__crate_marker_Copy_for_Point.
  Definition Self := Point.
  
  Global Instance I : _crate.marker.Copy.Trait Self :=
    _crate.marker.Copy.Build_Class _.
End Impl__crate_marker_Copy_for_Point.

Definition main (_ : unit) : unit :=
  let c := Q in
  let ref_c1 := c in
  let ref_c2 := c in
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "ref_c1 equals ref_c2: "; "\n" ]
      [
        _crate.fmt.ArgumentV1::["new_display"]
          ((deref ref_c1).["eq"] (deref ref_c2))
      ]) ;;
  tt ;;
  let point := {| Point.x := 0; Point.y := 0; |} in
  let _copy_of_x :=
    let Point {| Point.x := ref_to_x; Point.y := _; |} := point in
    deref ref_to_x in
  let mutable_point := point in
  let Point {| Point.x := _; Point.y := mut_ref_to_y; |} := mutable_point in
  assign (deref mut_ref_to_y) 1 ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "point is ("; ", "; ")\n" ]
      [
        _crate.fmt.ArgumentV1::["new_display"] point.["x"];
        _crate.fmt.ArgumentV1::["new_display"] point.["y"]
      ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "mutable_point is ("; ", "; ")\n" ]
      [
        _crate.fmt.ArgumentV1::["new_display"] mutable_point.["x"];
        _crate.fmt.ArgumentV1::["new_display"] mutable_point.["y"]
      ]) ;;
  tt ;;
  let mutable_tuple := (Box::["new"] 5, 3) in
  let (_, last) := mutable_tuple in
  assign (deref last) 2 ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "tuple is "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_debug"] mutable_tuple ]) ;;
  tt ;;
  tt.
