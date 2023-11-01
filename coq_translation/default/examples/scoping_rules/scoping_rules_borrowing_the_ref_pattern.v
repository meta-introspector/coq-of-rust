(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Point.
  Section Point.
    Context `{ℋ : State.Trait}.
    
    Unset Primitive Projections.
    Record t : Set := {
      x : i32;
      y : i32;
    }.
    Global Set Primitive Projections.
    
    Global Instance Get_x : Notation.Dot "x" := {
      Notation.dot x' := let* x' := M.read x' in Pure x'.(x) : M _;
    }.
    Global Instance Get_AF_x : Notation.DoubleColon t "x" := {
      Notation.double_colon x' := let* x' := M.read x' in Pure x'.(x) : M _;
    }.
    Global Instance Get_y : Notation.Dot "y" := {
      Notation.dot x := let* x := M.read x in Pure x.(y) : M _;
    }.
    Global Instance Get_AF_y : Notation.DoubleColon t "y" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(y) : M _;
    }.
  End Point.
End Point.
Definition Point `{ℋ : State.Trait} : Set := M.val Point.t.

Module Impl_core_clone_Clone_for_scoping_rules_borrowing_the_ref_pattern_Point.
  Section
    Impl_core_clone_Clone_for_scoping_rules_borrowing_the_ref_pattern_Point.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := scoping_rules_borrowing_the_ref_pattern.Point.
    
    Definition clone
        (self : ref Self)
        : M scoping_rules_borrowing_the_ref_pattern.Point :=
      let* _ := M.alloc tt in
      deref self scoping_rules_borrowing_the_ref_pattern.Point.
    
    Global Instance AssociatedFunction_clone :
      Notation.DoubleColon Self "clone" := {
      Notation.double_colon := clone;
    }.
    
    Global Instance ℐ : core.clone.Clone.Trait Self := {
      core.clone.Clone.clone := clone;
    }.
  End Impl_core_clone_Clone_for_scoping_rules_borrowing_the_ref_pattern_Point.
End Impl_core_clone_Clone_for_scoping_rules_borrowing_the_ref_pattern_Point.

Module Impl_core_marker_Copy_for_scoping_rules_borrowing_the_ref_pattern_Point.
  Section
    Impl_core_marker_Copy_for_scoping_rules_borrowing_the_ref_pattern_Point.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := scoping_rules_borrowing_the_ref_pattern.Point.
    
    Global Instance ℐ : core.marker.Copy.Trait Self := {
    }.
  End Impl_core_marker_Copy_for_scoping_rules_borrowing_the_ref_pattern_Point.
End Impl_core_marker_Copy_for_scoping_rules_borrowing_the_ref_pattern_Point.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  let* c := M.alloc "Q"%char in
  let ref_c1 := c in
  let* ref_c2 := borrow c char in
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow
          [ mk_str "ref_c1 equals ref_c2: "; mk_str "
" ]
          (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := deref ref_c1 char in
      let* α5 := deref ref_c2 char in
      let* α6 := BinOp.eq α4 α5 in
      let* α7 := borrow α6 bool in
      let* α8 := deref α7 bool in
      let* α9 := borrow α8 bool in
      let* α10 := core.fmt.rt.Argument::["new_display"] α9 in
      let* α11 := borrow [ α10 ] (list core.fmt.rt.Argument) in
      let* α12 := deref α11 (list core.fmt.rt.Argument) in
      let* α13 := borrow α12 (list core.fmt.rt.Argument) in
      let* α14 := pointer_coercion "Unsize" α13 in
      let* α15 := core.fmt.Arguments::["new_v1"] α3 α14 in
      std.io.stdio._print α15 in
    M.alloc tt in
  let* point :=
    let* α0 := M.alloc 0 in
    let* α1 := M.alloc 0 in
    M.alloc
      {|
        scoping_rules_borrowing_the_ref_pattern.Point.x := α0;
        scoping_rules_borrowing_the_ref_pattern.Point.y := α1;
      |} in
  let* _copy_of_x :=
    let
        '{|
          scoping_rules_borrowing_the_ref_pattern.Point.x := ref_to_x;
          scoping_rules_borrowing_the_ref_pattern.Point.y := _;
        |} :=
      point in
    deref ref_to_x i32 in
  let mutable_point := point in
  let* _ :=
    let
        '{|
          scoping_rules_borrowing_the_ref_pattern.Point.x := _;
          scoping_rules_borrowing_the_ref_pattern.Point.y := mut_ref_to_y;
        |} :=
      mutable_point in
    let* _ :=
      let* α0 := deref mut_ref_to_y i32 in
      let* α1 := M.alloc 1 in
      assign α0 α1 in
    M.alloc tt in
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow
          [ mk_str "point is ("; mk_str ", "; mk_str ")
" ]
          (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := point.["x"] in
      let* α5 := borrow α4 i32 in
      let* α6 := deref α5 i32 in
      let* α7 := borrow α6 i32 in
      let* α8 := core.fmt.rt.Argument::["new_display"] α7 in
      let* α9 := point.["y"] in
      let* α10 := borrow α9 i32 in
      let* α11 := deref α10 i32 in
      let* α12 := borrow α11 i32 in
      let* α13 := core.fmt.rt.Argument::["new_display"] α12 in
      let* α14 := borrow [ α8; α13 ] (list core.fmt.rt.Argument) in
      let* α15 := deref α14 (list core.fmt.rt.Argument) in
      let* α16 := borrow α15 (list core.fmt.rt.Argument) in
      let* α17 := pointer_coercion "Unsize" α16 in
      let* α18 := core.fmt.Arguments::["new_v1"] α3 α17 in
      std.io.stdio._print α18 in
    M.alloc tt in
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow
          [ mk_str "mutable_point is ("; mk_str ", "; mk_str ")
" ]
          (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := mutable_point.["x"] in
      let* α5 := borrow α4 i32 in
      let* α6 := deref α5 i32 in
      let* α7 := borrow α6 i32 in
      let* α8 := core.fmt.rt.Argument::["new_display"] α7 in
      let* α9 := mutable_point.["y"] in
      let* α10 := borrow α9 i32 in
      let* α11 := deref α10 i32 in
      let* α12 := borrow α11 i32 in
      let* α13 := core.fmt.rt.Argument::["new_display"] α12 in
      let* α14 := borrow [ α8; α13 ] (list core.fmt.rt.Argument) in
      let* α15 := deref α14 (list core.fmt.rt.Argument) in
      let* α16 := borrow α15 (list core.fmt.rt.Argument) in
      let* α17 := pointer_coercion "Unsize" α16 in
      let* α18 := core.fmt.Arguments::["new_v1"] α3 α17 in
      std.io.stdio._print α18 in
    M.alloc tt in
  let* mutable_tuple :=
    let* α0 := M.alloc 5 in
    let* α1 := (alloc.boxed.Box u32 alloc.alloc.Global)::["new"] α0 in
    let* α2 := M.alloc 3 in
    Pure (α1, α2) in
  let* _ :=
    let '(_, last) := mutable_tuple in
    let* _ :=
      let* α0 := deref last u32 in
      let* α1 := M.alloc 2 in
      assign α0 α1 in
    M.alloc tt in
  let* _ :=
    let* _ :=
      let* α0 := borrow [ mk_str "tuple is "; mk_str "
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 :=
        borrow mutable_tuple ((alloc.boxed.Box u32 alloc.alloc.Global) * u32) in
      let* α5 := deref α4 ((alloc.boxed.Box u32 alloc.alloc.Global) * u32) in
      let* α6 := borrow α5 ((alloc.boxed.Box u32 alloc.alloc.Global) * u32) in
      let* α7 := core.fmt.rt.Argument::["new_debug"] α6 in
      let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
      let* α9 := deref α8 (list core.fmt.rt.Argument) in
      let* α10 := borrow α9 (list core.fmt.rt.Argument) in
      let* α11 := pointer_coercion "Unsize" α10 in
      let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
      std.io.stdio._print α12 in
    M.alloc tt in
  M.alloc tt.
