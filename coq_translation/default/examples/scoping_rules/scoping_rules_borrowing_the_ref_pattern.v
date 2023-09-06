(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Point.
  Unset Primitive Projections.
  Record t : Set := {
    x : i32;
    y : i32;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_x : Notation.Dot "x" := {
    Notation.dot '(Build_t x0 _) := x0;
  }.
  Global Instance Get_y : Notation.Dot "y" := {
    Notation.dot '(Build_t _ x1) := x1;
  }.
End Point.
Definition Point : Set := Point.t.

Module Impl_core_clone_Clone_for_scoping_rules_borrowing_the_ref_pattern_Point.
  Definition Self := scoping_rules_borrowing_the_ref_pattern.Point.
  
  Definition clone
      `{H' : State.Trait}
      (self : ref Self)
      : M (H := H') scoping_rules_borrowing_the_ref_pattern.Point :=
    let _ : core.clone.AssertParamIsClone i32 := tt in
    self.["deref"].
  
  Global Instance Method_clone `{H' : State.Trait} : Notation.Dot "clone" := {
    Notation.dot := clone;
  }.
  
  Global Instance I : core.clone.Clone.Trait Self := {
    core.clone.Clone.clone `{H' : State.Trait} := clone;
  }.
  Global Hint Resolve I : core.
End Impl_core_clone_Clone_for_scoping_rules_borrowing_the_ref_pattern_Point.

Module Impl_core_marker_Copy_for_scoping_rules_borrowing_the_ref_pattern_Point.
  Definition Self := scoping_rules_borrowing_the_ref_pattern.Point.
  
  Global Instance I
    : core.marker.Copy.Trait Self := core.marker.Copy.Build_Trait _.
  Global Hint Resolve I : core.
End Impl_core_marker_Copy_for_scoping_rules_borrowing_the_ref_pattern_Point.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H' : State.Trait} : M (H := H') unit :=
  let c := "Q"%char in
  let ref_c1 := c in
  let ref_c2 := addr_of c in
  let* _ :=
    let* _ :=
      let* α0 := ref_c1.["deref"] in
      let* α1 := ref_c2.["deref"] in
      let* α2 := α0.["eq"] α1 in
      let* α3 := format_argument::["new_display"] (addr_of α2) in
      let* α4 :=
        format_arguments::["new_v1"]
          (addr_of [ "ref_c1 equals ref_c2: "; "
" ])
          (addr_of [ α3 ]) in
      std.io.stdio._print α4 in
    Pure tt in
  let point :=
    {|
      scoping_rules_borrowing_the_ref_pattern.Point.x := 0;
      scoping_rules_borrowing_the_ref_pattern.Point.y := 0;
    |} in
  let* _copy_of_x :=
    let
        '{|
          scoping_rules_borrowing_the_ref_pattern.Point.x := ref_to_x;
          scoping_rules_borrowing_the_ref_pattern.Point.y := _;
        |} :=
      point in
    ref_to_x.["deref"] in
  let mutable_point := point in
  let* _ :=
    let
        '{|
          scoping_rules_borrowing_the_ref_pattern.Point.x := _;
          scoping_rules_borrowing_the_ref_pattern.Point.y := mut_ref_to_y;
        |} :=
      mutable_point in
    let* _ :=
      let* α0 := mut_ref_to_y.["deref"] in
      assign α0 1 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of point.["x"]) in
      let* α1 := format_argument::["new_display"] (addr_of point.["y"]) in
      let* α2 :=
        format_arguments::["new_v1"]
          (addr_of [ "point is ("; ", "; ")
" ])
          (addr_of [ α0; α1 ]) in
      std.io.stdio._print α2 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 :=
        format_argument::["new_display"] (addr_of mutable_point.["x"]) in
      let* α1 :=
        format_argument::["new_display"] (addr_of mutable_point.["y"]) in
      let* α2 :=
        format_arguments::["new_v1"]
          (addr_of [ "mutable_point is ("; ", "; ")
" ])
          (addr_of [ α0; α1 ]) in
      std.io.stdio._print α2 in
    Pure tt in
  let* mutable_tuple :=
    let* α0 := alloc.boxed.Box::["new"] 5 in
    Pure (α0, 3) in
  let* _ :=
    let '(_, last) := mutable_tuple in
    let* _ :=
      let* α0 := last.["deref"] in
      assign α0 2 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_debug"] (addr_of mutable_tuple) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "tuple is "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  Pure tt.
