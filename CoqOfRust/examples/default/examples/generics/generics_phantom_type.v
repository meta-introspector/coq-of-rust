(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  PhantomTuple.
Section PhantomTuple.
  Context {A B : Set}.
  
  Record t : Set := {
    x0 : A;
    x1 : core.marker.PhantomData.t B;
  }.
  
  Global Instance Get_0 : Notations.Dot "0" := {
    Notations.dot := Ref.map (fun x => x.(x0)) (fun v x => x <| x0 := v |>);
  }.
  Global Instance Get_1 : Notations.Dot "1" := {
    Notations.dot := Ref.map (fun x => x.(x1)) (fun v x => x <| x1 := v |>);
  }.
End PhantomTuple.
End PhantomTuple.

Module  Impl_core_marker_StructuralPartialEq_for_generics_phantom_type_PhantomTuple_t_A_B.
Section Impl_core_marker_StructuralPartialEq_for_generics_phantom_type_PhantomTuple_t_A_B.
  Context {A B : Set}.
  
  Ltac Self := exact (generics_phantom_type.PhantomTuple.t A B).
  
  Global Instance ℐ : core.marker.StructuralPartialEq.Trait ltac:(Self) := {
  }.
End Impl_core_marker_StructuralPartialEq_for_generics_phantom_type_PhantomTuple_t_A_B.
End Impl_core_marker_StructuralPartialEq_for_generics_phantom_type_PhantomTuple_t_A_B.

Module  Impl_core_cmp_PartialEq_for_generics_phantom_type_PhantomTuple_t_A_B.
Section Impl_core_cmp_PartialEq_for_generics_phantom_type_PhantomTuple_t_A_B.
  Context {A B : Set}.
  
  Context
    {ℋ_0 : core.cmp.PartialEq.Trait A (Rhs := core.cmp.PartialEq.Default.Rhs A)}
    {ℋ_1 :
      core.cmp.PartialEq.Trait B (Rhs := core.cmp.PartialEq.Default.Rhs B)}.
  
  Ltac Self := exact (generics_phantom_type.PhantomTuple.t A B).
  
  (*
  PartialEq
  *)
  Definition eq
      (self : ref ltac:(Self))
      (other : ref (generics_phantom_type.PhantomTuple.t A B))
      : M bool.t :=
    let* self := M.alloc self in
    let* other := M.alloc other in
    M.function_body
      (let* α0 : M.Val (generics_phantom_type.PhantomTuple.t A B) :=
        deref self in
      let* α1 : M.Val (ref A) := borrow α0.["0"] in
      let* α2 := M.read α1 in
      let* α3 : M.Val (generics_phantom_type.PhantomTuple.t A B) :=
        deref other in
      let* α4 : M.Val (ref A) := borrow α3.["0"] in
      let* α5 := M.read α4 in
      let* α6 :=
        (core.cmp.PartialEq.eq (Self := A) (Trait := ltac:(refine _))) α2 α5 in
      let* α7 : M.Val bool.t := M.alloc α6 in
      let* α8 : M.Val (generics_phantom_type.PhantomTuple.t A B) :=
        deref self in
      let* α9 : M.Val (ref (core.marker.PhantomData.t B)) := borrow α8.["1"] in
      let* α10 := M.read α9 in
      let* α11 : M.Val (generics_phantom_type.PhantomTuple.t A B) :=
        deref other in
      let* α12 : M.Val (ref (core.marker.PhantomData.t B)) :=
        borrow α11.["1"] in
      let* α13 := M.read α12 in
      let* α14 :=
        (core.cmp.PartialEq.eq
            (Self := core.marker.PhantomData.t B)
            (Trait := ltac:(refine _)))
          α10
          α13 in
      let* α15 : M.Val bool.t := M.alloc α14 in
      BinOp.and α7 α15).
  
  Global Instance AssociatedFunction_eq :
    Notations.DoubleColon ltac:(Self) "eq" := {
    Notations.double_colon := eq;
  }.
  
  Global Instance ℐ :
    core.cmp.PartialEq.Required.Trait ltac:(Self)
      (Rhs := core.cmp.PartialEq.Default.Rhs ltac:(Self)) := {
    core.cmp.PartialEq.eq := eq;
    core.cmp.PartialEq.ne := Datatypes.None;
  }.
End Impl_core_cmp_PartialEq_for_generics_phantom_type_PhantomTuple_t_A_B.
End Impl_core_cmp_PartialEq_for_generics_phantom_type_PhantomTuple_t_A_B.

Module  PhantomStruct.
Section PhantomStruct.
  Context (A B : Set).
  
  Record t : Set := {
    first : A;
    phantom : core.marker.PhantomData.t B;
  }.
  
  Global Instance Get_first : Notations.Dot "first" := {
    Notations.dot :=
      Ref.map (fun x => x.(first)) (fun v x => x <| first := v |>);
  }.
  Global Instance Get_AF_first : Notations.DoubleColon t "first" := {
    Notations.double_colon (x : M.Val t) := x.["first"];
  }.
  Global Instance Get_phantom : Notations.Dot "phantom" := {
    Notations.dot :=
      Ref.map (fun x => x.(phantom)) (fun v x => x <| phantom := v |>);
  }.
  Global Instance Get_AF_phantom : Notations.DoubleColon t "phantom" := {
    Notations.double_colon (x : M.Val t) := x.["phantom"];
  }.
End PhantomStruct.
End PhantomStruct.

Module  Impl_core_marker_StructuralPartialEq_for_generics_phantom_type_PhantomStruct_t_A_B.
Section Impl_core_marker_StructuralPartialEq_for_generics_phantom_type_PhantomStruct_t_A_B.
  Context {A B : Set}.
  
  Ltac Self := exact (generics_phantom_type.PhantomStruct.t A B).
  
  Global Instance ℐ : core.marker.StructuralPartialEq.Trait ltac:(Self) := {
  }.
End Impl_core_marker_StructuralPartialEq_for_generics_phantom_type_PhantomStruct_t_A_B.
End Impl_core_marker_StructuralPartialEq_for_generics_phantom_type_PhantomStruct_t_A_B.

Module  Impl_core_cmp_PartialEq_for_generics_phantom_type_PhantomStruct_t_A_B.
Section Impl_core_cmp_PartialEq_for_generics_phantom_type_PhantomStruct_t_A_B.
  Context {A B : Set}.
  
  Context
    {ℋ_0 : core.cmp.PartialEq.Trait A (Rhs := core.cmp.PartialEq.Default.Rhs A)}
    {ℋ_1 :
      core.cmp.PartialEq.Trait B (Rhs := core.cmp.PartialEq.Default.Rhs B)}.
  
  Ltac Self := exact (generics_phantom_type.PhantomStruct.t A B).
  
  (*
  PartialEq
  *)
  Definition eq
      (self : ref ltac:(Self))
      (other : ref (generics_phantom_type.PhantomStruct.t A B))
      : M bool.t :=
    let* self := M.alloc self in
    let* other := M.alloc other in
    M.function_body
      (let* α0 : M.Val (generics_phantom_type.PhantomStruct.t A B) :=
        deref self in
      let* α1 : M.Val (ref A) := borrow α0.["first"] in
      let* α2 := M.read α1 in
      let* α3 : M.Val (generics_phantom_type.PhantomStruct.t A B) :=
        deref other in
      let* α4 : M.Val (ref A) := borrow α3.["first"] in
      let* α5 := M.read α4 in
      let* α6 :=
        (core.cmp.PartialEq.eq (Self := A) (Trait := ltac:(refine _))) α2 α5 in
      let* α7 : M.Val bool.t := M.alloc α6 in
      let* α8 : M.Val (generics_phantom_type.PhantomStruct.t A B) :=
        deref self in
      let* α9 : M.Val (ref (core.marker.PhantomData.t B)) :=
        borrow α8.["phantom"] in
      let* α10 := M.read α9 in
      let* α11 : M.Val (generics_phantom_type.PhantomStruct.t A B) :=
        deref other in
      let* α12 : M.Val (ref (core.marker.PhantomData.t B)) :=
        borrow α11.["phantom"] in
      let* α13 := M.read α12 in
      let* α14 :=
        (core.cmp.PartialEq.eq
            (Self := core.marker.PhantomData.t B)
            (Trait := ltac:(refine _)))
          α10
          α13 in
      let* α15 : M.Val bool.t := M.alloc α14 in
      BinOp.and α7 α15).
  
  Global Instance AssociatedFunction_eq :
    Notations.DoubleColon ltac:(Self) "eq" := {
    Notations.double_colon := eq;
  }.
  
  Global Instance ℐ :
    core.cmp.PartialEq.Required.Trait ltac:(Self)
      (Rhs := core.cmp.PartialEq.Default.Rhs ltac:(Self)) := {
    core.cmp.PartialEq.eq := eq;
    core.cmp.PartialEq.ne := Datatypes.None;
  }.
End Impl_core_cmp_PartialEq_for_generics_phantom_type_PhantomStruct_t_A_B.
End Impl_core_cmp_PartialEq_for_generics_phantom_type_PhantomStruct_t_A_B.

(*
fn main() {
    // Here, `f32` and `f64` are the hidden parameters.
    // PhantomTuple type specified as `<char, f32>`.
    let _tuple1: PhantomTuple<char, f32> = PhantomTuple('Q', PhantomData);
    // PhantomTuple type specified as `<char, f64>`.
    let _tuple2: PhantomTuple<char, f64> = PhantomTuple('Q', PhantomData);

    // Type specified as `<char, f32>`.
    let _struct1: PhantomStruct<char, f32> = PhantomStruct {
        first: 'Q',
        phantom: PhantomData,
    };
    // Type specified as `<char, f64>`.
    let _struct2: PhantomStruct<char, f64> = PhantomStruct {
        first: 'Q',
        phantom: PhantomData,
    };

    // Compile-time Error! Type mismatch so these cannot be compared:
    // println!("_tuple1 == _tuple2 yields: {}",
    //           _tuple1 == _tuple2);

    // Compile-time Error! Type mismatch so these cannot be compared:
    // println!("_struct1 == _struct2 yields: {}",
    //           _struct1 == _struct2);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* _tuple1 : M.Val (generics_phantom_type.PhantomTuple.t char.t f32.t) :=
      let* α0 : M.Val char.t := M.alloc "Q"%char in
      let* α1 := M.read α0 in
      M.alloc
        (generics_phantom_type.PhantomTuple.Build_t
          α1
          core.marker.PhantomData.Build_t) in
    let* _tuple2 : M.Val (generics_phantom_type.PhantomTuple.t char.t f64.t) :=
      let* α0 : M.Val char.t := M.alloc "Q"%char in
      let* α1 := M.read α0 in
      M.alloc
        (generics_phantom_type.PhantomTuple.Build_t
          α1
          core.marker.PhantomData.Build_t) in
    let* _struct1 :
        M.Val (generics_phantom_type.PhantomStruct.t char.t f32.t) :=
      let* α0 : M.Val char.t := M.alloc "Q"%char in
      let* α1 := M.read α0 in
      M.alloc
        {|
          generics_phantom_type.PhantomStruct.first := α1;
          generics_phantom_type.PhantomStruct.phantom :=
            core.marker.PhantomData.Build_t;
        |} in
    let* _struct2 :
        M.Val (generics_phantom_type.PhantomStruct.t char.t f64.t) :=
      let* α0 : M.Val char.t := M.alloc "Q"%char in
      let* α1 := M.read α0 in
      M.alloc
        {|
          generics_phantom_type.PhantomStruct.first := α1;
          generics_phantom_type.PhantomStruct.phantom :=
            core.marker.PhantomData.Build_t;
        |} in
    M.alloc tt).
