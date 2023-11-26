(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Inch.
  Inductive t : Set :=
  .
End Inch.

Module  Impl_core_fmt_Debug_for_generics_phantom_type_test_case_unit_clarification_Inch_t.
Section Impl_core_fmt_Debug_for_generics_phantom_type_test_case_unit_clarification_Inch_t.
  Ltac Self := exact generics_phantom_type_test_case_unit_clarification.Inch.t.
  
  (*
  Debug
  *)
  Definition fmt
      (self : M.Val (ref ltac:(Self)))
      (f : M.Val (mut_ref core.fmt.Formatter.t))
      : M ltac:(core.fmt.Result) :=
    M.function_body
      (let* α0 := "unimplemented parent_kind" in
      let* α1 : M.Val never.t := M.alloc α0 in
      never_to_any α1).
  
  Global Instance AssociatedFunction_fmt :
    Notations.DoubleColon ltac:(Self) "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait ltac:(Self) := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_generics_phantom_type_test_case_unit_clarification_Inch_t.
End Impl_core_fmt_Debug_for_generics_phantom_type_test_case_unit_clarification_Inch_t.

Module  Impl_core_clone_Clone_for_generics_phantom_type_test_case_unit_clarification_Inch_t.
Section Impl_core_clone_Clone_for_generics_phantom_type_test_case_unit_clarification_Inch_t.
  Ltac Self := exact generics_phantom_type_test_case_unit_clarification.Inch.t.
  
  (*
  Clone
  *)
  Definition clone
      (self : M.Val (ref ltac:(Self)))
      : M generics_phantom_type_test_case_unit_clarification.Inch.t :=
    M.function_body (deref self).
  
  Global Instance AssociatedFunction_clone :
    Notations.DoubleColon ltac:(Self) "clone" := {
    Notations.double_colon := clone;
  }.
  
  Global Instance ℐ : core.clone.Clone.Required.Trait ltac:(Self) := {
    core.clone.Clone.clone := clone;
    core.clone.Clone.clone_from := Datatypes.None;
  }.
End Impl_core_clone_Clone_for_generics_phantom_type_test_case_unit_clarification_Inch_t.
End Impl_core_clone_Clone_for_generics_phantom_type_test_case_unit_clarification_Inch_t.

Module  Impl_core_marker_Copy_for_generics_phantom_type_test_case_unit_clarification_Inch_t.
Section Impl_core_marker_Copy_for_generics_phantom_type_test_case_unit_clarification_Inch_t.
  Ltac Self := exact generics_phantom_type_test_case_unit_clarification.Inch.t.
  
  Global Instance ℐ : core.marker.Copy.Trait ltac:(Self) := {
  }.
End Impl_core_marker_Copy_for_generics_phantom_type_test_case_unit_clarification_Inch_t.
End Impl_core_marker_Copy_for_generics_phantom_type_test_case_unit_clarification_Inch_t.

Module Mm.
  Inductive t : Set :=
  .
End Mm.

Module  Impl_core_fmt_Debug_for_generics_phantom_type_test_case_unit_clarification_Mm_t.
Section Impl_core_fmt_Debug_for_generics_phantom_type_test_case_unit_clarification_Mm_t.
  Ltac Self := exact generics_phantom_type_test_case_unit_clarification.Mm.t.
  
  (*
  Debug
  *)
  Definition fmt
      (self : M.Val (ref ltac:(Self)))
      (f : M.Val (mut_ref core.fmt.Formatter.t))
      : M ltac:(core.fmt.Result) :=
    M.function_body
      (let* α0 := "unimplemented parent_kind" in
      let* α1 : M.Val never.t := M.alloc α0 in
      never_to_any α1).
  
  Global Instance AssociatedFunction_fmt :
    Notations.DoubleColon ltac:(Self) "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait ltac:(Self) := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_generics_phantom_type_test_case_unit_clarification_Mm_t.
End Impl_core_fmt_Debug_for_generics_phantom_type_test_case_unit_clarification_Mm_t.

Module  Impl_core_clone_Clone_for_generics_phantom_type_test_case_unit_clarification_Mm_t.
Section Impl_core_clone_Clone_for_generics_phantom_type_test_case_unit_clarification_Mm_t.
  Ltac Self := exact generics_phantom_type_test_case_unit_clarification.Mm.t.
  
  (*
  Clone
  *)
  Definition clone
      (self : M.Val (ref ltac:(Self)))
      : M generics_phantom_type_test_case_unit_clarification.Mm.t :=
    M.function_body (deref self).
  
  Global Instance AssociatedFunction_clone :
    Notations.DoubleColon ltac:(Self) "clone" := {
    Notations.double_colon := clone;
  }.
  
  Global Instance ℐ : core.clone.Clone.Required.Trait ltac:(Self) := {
    core.clone.Clone.clone := clone;
    core.clone.Clone.clone_from := Datatypes.None;
  }.
End Impl_core_clone_Clone_for_generics_phantom_type_test_case_unit_clarification_Mm_t.
End Impl_core_clone_Clone_for_generics_phantom_type_test_case_unit_clarification_Mm_t.

Module  Impl_core_marker_Copy_for_generics_phantom_type_test_case_unit_clarification_Mm_t.
Section Impl_core_marker_Copy_for_generics_phantom_type_test_case_unit_clarification_Mm_t.
  Ltac Self := exact generics_phantom_type_test_case_unit_clarification.Mm.t.
  
  Global Instance ℐ : core.marker.Copy.Trait ltac:(Self) := {
  }.
End Impl_core_marker_Copy_for_generics_phantom_type_test_case_unit_clarification_Mm_t.
End Impl_core_marker_Copy_for_generics_phantom_type_test_case_unit_clarification_Mm_t.

Module  Length.
Section Length.
  Context {Unit : Set}.
  
  Record t : Set := {
    x0 : f64.t;
    x1 : core.marker.PhantomData.t Unit;
  }.
  
  Global Instance Get_0 : Notations.Dot "0" := {
    Notations.dot := Ref.map (fun x => x.(x0)) (fun v x => x <| x0 := v |>);
  }.
  Global Instance Get_1 : Notations.Dot "1" := {
    Notations.dot := Ref.map (fun x => x.(x1)) (fun v x => x <| x1 := v |>);
  }.
End Length.
End Length.

Module  Impl_core_fmt_Debug_for_generics_phantom_type_test_case_unit_clarification_Length_t_Unit.
Section Impl_core_fmt_Debug_for_generics_phantom_type_test_case_unit_clarification_Length_t_Unit.
  Context {Unit : Set}.
  
  Context {ℋ_0 : core.fmt.Debug.Trait Unit}.
  
  Ltac Self :=
    exact (generics_phantom_type_test_case_unit_clarification.Length.t Unit).
  
  (*
  Debug
  *)
  Definition fmt
      (self : M.Val (ref ltac:(Self)))
      (f : M.Val (mut_ref core.fmt.Formatter.t))
      : M ltac:(core.fmt.Result) :=
    M.function_body
      (let* α0 : M.Val core.fmt.Formatter.t := deref f in
      let* α1 : M.Val (mut_ref core.fmt.Formatter.t) := borrow_mut α0 in
      let* α2 : M.Val str.t := deref (mk_str "Length") in
      let* α3 : M.Val (ref str.t) := borrow α2 in
      let* α4 :
          M.Val
            (generics_phantom_type_test_case_unit_clarification.Length.t
              Unit) :=
        deref self in
      let* α5 : M.Val (ref f64.t) := borrow α4.["0"] in
      let* α6 : M.Val (ref type not implemented) :=
        pointer_coercion "Unsize" α5 in
      let* α7 :
          M.Val
            (generics_phantom_type_test_case_unit_clarification.Length.t
              Unit) :=
        deref self in
      let* α8 : M.Val (ref (core.marker.PhantomData.t Unit)) :=
        borrow α7.["1"] in
      let* α9 : M.Val (ref (ref (core.marker.PhantomData.t Unit))) :=
        borrow α8 in
      let* α10 : M.Val (ref type not implemented) :=
        pointer_coercion "Unsize" α9 in
      let* α11 :=
        core.fmt.Formatter.t::["debug_tuple_field2_finish"] α1 α3 α6 α10 in
      M.alloc α11).
  
  Global Instance AssociatedFunction_fmt :
    Notations.DoubleColon ltac:(Self) "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait ltac:(Self) := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_generics_phantom_type_test_case_unit_clarification_Length_t_Unit.
End Impl_core_fmt_Debug_for_generics_phantom_type_test_case_unit_clarification_Length_t_Unit.

Module  Impl_core_clone_Clone_for_generics_phantom_type_test_case_unit_clarification_Length_t_Unit.
Section Impl_core_clone_Clone_for_generics_phantom_type_test_case_unit_clarification_Length_t_Unit.
  Context {Unit : Set}.
  
  Context {ℋ_0 : core.clone.Clone.Trait Unit}.
  
  Ltac Self :=
    exact (generics_phantom_type_test_case_unit_clarification.Length.t Unit).
  
  (*
  Clone
  *)
  Definition clone
      (self : M.Val (ref ltac:(Self)))
      : M (generics_phantom_type_test_case_unit_clarification.Length.t Unit) :=
    M.function_body
      (let* α0 :
          M.Val
            (generics_phantom_type_test_case_unit_clarification.Length.t
              Unit) :=
        deref self in
      let* α1 : M.Val (ref f64.t) := borrow α0.["0"] in
      let* α2 :=
        (core.clone.Clone.clone (Self := f64.t) (Trait := ltac:(refine _)))
          α1 in
      let* α3 :
          M.Val
            (generics_phantom_type_test_case_unit_clarification.Length.t
              Unit) :=
        deref self in
      let* α4 : M.Val (ref (core.marker.PhantomData.t Unit)) :=
        borrow α3.["1"] in
      let* α5 :=
        (core.clone.Clone.clone
            (Self := core.marker.PhantomData.t Unit)
            (Trait := ltac:(refine _)))
          α4 in
      M.alloc
        (generics_phantom_type_test_case_unit_clarification.Length.Build_t
          α2
          α5)).
  
  Global Instance AssociatedFunction_clone :
    Notations.DoubleColon ltac:(Self) "clone" := {
    Notations.double_colon := clone;
  }.
  
  Global Instance ℐ : core.clone.Clone.Required.Trait ltac:(Self) := {
    core.clone.Clone.clone := clone;
    core.clone.Clone.clone_from := Datatypes.None;
  }.
End Impl_core_clone_Clone_for_generics_phantom_type_test_case_unit_clarification_Length_t_Unit.
End Impl_core_clone_Clone_for_generics_phantom_type_test_case_unit_clarification_Length_t_Unit.

Module  Impl_core_marker_Copy_for_generics_phantom_type_test_case_unit_clarification_Length_t_Unit.
Section Impl_core_marker_Copy_for_generics_phantom_type_test_case_unit_clarification_Length_t_Unit.
  Context {Unit : Set}.
  
  Context {ℋ_0 : core.marker.Copy.Trait Unit}.
  
  Ltac Self :=
    exact (generics_phantom_type_test_case_unit_clarification.Length.t Unit).
  
  Global Instance ℐ : core.marker.Copy.Trait ltac:(Self) := {
  }.
End Impl_core_marker_Copy_for_generics_phantom_type_test_case_unit_clarification_Length_t_Unit.
End Impl_core_marker_Copy_for_generics_phantom_type_test_case_unit_clarification_Length_t_Unit.

Module  Impl_core_ops_arith_Add_for_generics_phantom_type_test_case_unit_clarification_Length_t_Unit.
Section Impl_core_ops_arith_Add_for_generics_phantom_type_test_case_unit_clarification_Length_t_Unit.
  Context {Unit : Set}.
  
  Ltac Self :=
    exact (generics_phantom_type_test_case_unit_clarification.Length.t Unit).
  
  (*
      type Output = Length<Unit>;
  *)
  Definition Output : Set :=
    generics_phantom_type_test_case_unit_clarification.Length.t Unit.
  
  (*
      fn add(self, rhs: Length<Unit>) -> Length<Unit> {
          // `+` calls the `Add` implementation for `f64`.
          Length(self.0 + rhs.0, PhantomData)
      }
  *)
  Definition add
      (self : M.Val ltac:(Self))
      (rhs
        :
        M.Val
          (generics_phantom_type_test_case_unit_clarification.Length.t Unit))
      : M (generics_phantom_type_test_case_unit_clarification.Length.t Unit) :=
    M.function_body
      (let* α0 : M.Val f64.t := BinOp.add self.["0"] rhs.["0"] in
      let* α1 := M.read α0 in
      M.alloc
        (generics_phantom_type_test_case_unit_clarification.Length.Build_t
          α1
          core.marker.PhantomData.Build_t)).
  
  Global Instance AssociatedFunction_add :
    Notations.DoubleColon ltac:(Self) "add" := {
    Notations.double_colon := add;
  }.
  
  Global Instance ℐ :
    core.ops.arith.Add.Trait ltac:(Self)
      (Rhs := core.ops.arith.Add.Default.Rhs ltac:(Self)) := {
    core.ops.arith.Add.Output := Output;
    core.ops.arith.Add.add := add;
  }.
End Impl_core_ops_arith_Add_for_generics_phantom_type_test_case_unit_clarification_Length_t_Unit.
End Impl_core_ops_arith_Add_for_generics_phantom_type_test_case_unit_clarification_Length_t_Unit.

(*
fn main() {
    // Specifies `one_foot` to have phantom type parameter `Inch`.
    let one_foot: Length<Inch> = Length(12.0, PhantomData);
    // `one_meter` has phantom type parameter `Mm`.
    let one_meter: Length<Mm> = Length(1000.0, PhantomData);

    // `+` calls the `add()` method we implemented for `Length<Unit>`.
    //
    // Since `Length` implements `Copy`, `add()` does not consume
    // `one_foot` and `one_meter` but copies them into `self` and `rhs`.
    let two_feet = one_foot + one_foot;
    let two_meters = one_meter + one_meter;

    // Addition works.
    println!("one foot + one_foot = {:?} in", two_feet.0);
    println!("one meter + one_meter = {:?} mm", two_meters.0);

    // Nonsensical operations fail as they should:
    // Compile-time Error: type mismatch.
    //let one_feter = one_foot + one_meter;
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* one_foot :
        M.Val
          (generics_phantom_type_test_case_unit_clarification.Length.t
            generics_phantom_type_test_case_unit_clarification.Inch.t) :=
      let* α0 : M.Val f64.t := M.alloc 12 (* 12.0 *) in
      let* α1 := M.read α0 in
      M.alloc
        (generics_phantom_type_test_case_unit_clarification.Length.Build_t
          α1
          core.marker.PhantomData.Build_t) in
    let* one_meter :
        M.Val
          (generics_phantom_type_test_case_unit_clarification.Length.t
            generics_phantom_type_test_case_unit_clarification.Mm.t) :=
      let* α0 : M.Val f64.t := M.alloc 1000 (* 1000.0 *) in
      let* α1 := M.read α0 in
      M.alloc
        (generics_phantom_type_test_case_unit_clarification.Length.Build_t
          α1
          core.marker.PhantomData.Build_t) in
    let* two_feet :
        M.Val
          (generics_phantom_type_test_case_unit_clarification.Length.t
            generics_phantom_type_test_case_unit_clarification.Inch.t) :=
      let* α0 :=
        (core.ops.arith.Add.add
            (Self :=
              generics_phantom_type_test_case_unit_clarification.Length.t
                generics_phantom_type_test_case_unit_clarification.Inch.t)
            (Trait := ltac:(refine _)))
          one_foot
          one_foot in
      M.alloc α0 in
    let* two_meters :
        M.Val
          (generics_phantom_type_test_case_unit_clarification.Length.t
            generics_phantom_type_test_case_unit_clarification.Mm.t) :=
      let* α0 :=
        (core.ops.arith.Add.add
            (Self :=
              generics_phantom_type_test_case_unit_clarification.Length.t
                generics_phantom_type_test_case_unit_clarification.Mm.t)
            (Trait := ltac:(refine _)))
          one_meter
          one_meter in
      M.alloc α0 in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "one foot + one_foot = "; mk_str " in
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : M.Val (ref f64.t) := borrow two_feet.["0"] in
        let* α4 := core.fmt.rt.Argument.t::["new_debug"] α3 in
        let* α5 : M.Val core.fmt.rt.Argument.t := M.alloc α4 in
        let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
        let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α6 in
        let* α8 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α7 in
        let* α9 := core.fmt.Arguments.t::["new_v1"] α2 α8 in
        let* α10 : M.Val core.fmt.Arguments.t := M.alloc α9 in
        let* α11 := std.io.stdio._print α10 in
        M.alloc α11 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "one meter + one_meter = "; mk_str " mm
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : M.Val (ref f64.t) := borrow two_meters.["0"] in
        let* α4 := core.fmt.rt.Argument.t::["new_debug"] α3 in
        let* α5 : M.Val core.fmt.rt.Argument.t := M.alloc α4 in
        let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
        let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α6 in
        let* α8 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α7 in
        let* α9 := core.fmt.Arguments.t::["new_v1"] α2 α8 in
        let* α10 : M.Val core.fmt.Arguments.t := M.alloc α9 in
        let* α11 := std.io.stdio._print α10 in
        M.alloc α11 in
      M.alloc tt in
    M.alloc tt).
