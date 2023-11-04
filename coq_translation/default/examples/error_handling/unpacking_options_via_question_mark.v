(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Person.
Section Person.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Record t : Set := {
    job : core.option.Option unpacking_options_via_question_mark.Job;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_job : Notation.Dot "job" := {
    Notation.dot x := let* x := M.read x in Pure x.(job) : M _;
  }.
  Global Instance Get_AF_job : Notation.DoubleColon t "job" := {
    Notation.double_colon x := let* x := M.read x in Pure x.(job) : M _;
  }.
End Person.
End Person.
Definition Person `{ℋ : State.Trait} : Set := M.val Person.t.

Module  Job.
Section Job.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Record t : Set := {
    phone_number :
      core.option.Option unpacking_options_via_question_mark.PhoneNumber;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_phone_number : Notation.Dot "phone_number" := {
    Notation.dot x := let* x := M.read x in Pure x.(phone_number) : M _;
  }.
  Global Instance Get_AF_phone_number :
    Notation.DoubleColon t "phone_number" := {
    Notation.double_colon x :=
      let* x := M.read x in Pure x.(phone_number) : M _;
  }.
End Job.
End Job.
Definition Job `{ℋ : State.Trait} : Set := M.val Job.t.

Module  Impl_core_clone_Clone_for_unpacking_options_via_question_mark_Job.
Section Impl_core_clone_Clone_for_unpacking_options_via_question_mark_Job.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := unpacking_options_via_question_mark.Job.
  
  Definition clone
      (self : ref Self)
      : M unpacking_options_via_question_mark.Job :=
    let* _ := M.alloc tt in
    deref self unpacking_options_via_question_mark.Job.
  
  Global Instance AssociatedFunction_clone :
    Notation.DoubleColon Self "clone" := {
    Notation.double_colon := clone;
  }.
  
  Global Instance ℐ : core.clone.Clone.Required.Trait Self := {
    core.clone.Clone.clone := clone;
    core.clone.Clone.clone_from := Datatypes.None;
  }.
End Impl_core_clone_Clone_for_unpacking_options_via_question_mark_Job.
End Impl_core_clone_Clone_for_unpacking_options_via_question_mark_Job.

Module  Impl_core_marker_Copy_for_unpacking_options_via_question_mark_Job.
Section Impl_core_marker_Copy_for_unpacking_options_via_question_mark_Job.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := unpacking_options_via_question_mark.Job.
  
  Global Instance ℐ : core.marker.Copy.Trait Self := {
  }.
End Impl_core_marker_Copy_for_unpacking_options_via_question_mark_Job.
End Impl_core_marker_Copy_for_unpacking_options_via_question_mark_Job.

Module  PhoneNumber.
Section PhoneNumber.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Record t : Set := {
    area_code : core.option.Option u8;
    number : u32;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_area_code : Notation.Dot "area_code" := {
    Notation.dot x := let* x := M.read x in Pure x.(area_code) : M _;
  }.
  Global Instance Get_AF_area_code : Notation.DoubleColon t "area_code" := {
    Notation.double_colon x := let* x := M.read x in Pure x.(area_code) : M _;
  }.
  Global Instance Get_number : Notation.Dot "number" := {
    Notation.dot x := let* x := M.read x in Pure x.(number) : M _;
  }.
  Global Instance Get_AF_number : Notation.DoubleColon t "number" := {
    Notation.double_colon x := let* x := M.read x in Pure x.(number) : M _;
  }.
End PhoneNumber.
End PhoneNumber.
Definition PhoneNumber `{ℋ : State.Trait} : Set := M.val PhoneNumber.t.

Module  Impl_core_clone_Clone_for_unpacking_options_via_question_mark_PhoneNumber.
Section Impl_core_clone_Clone_for_unpacking_options_via_question_mark_PhoneNumber.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := unpacking_options_via_question_mark.PhoneNumber.
  
  Definition clone
      (self : ref Self)
      : M unpacking_options_via_question_mark.PhoneNumber :=
    let* _ := M.alloc tt in
    let* _ := M.alloc tt in
    deref self unpacking_options_via_question_mark.PhoneNumber.
  
  Global Instance AssociatedFunction_clone :
    Notation.DoubleColon Self "clone" := {
    Notation.double_colon := clone;
  }.
  
  Global Instance ℐ : core.clone.Clone.Required.Trait Self := {
    core.clone.Clone.clone := clone;
    core.clone.Clone.clone_from := Datatypes.None;
  }.
End Impl_core_clone_Clone_for_unpacking_options_via_question_mark_PhoneNumber.
End Impl_core_clone_Clone_for_unpacking_options_via_question_mark_PhoneNumber.

Module  Impl_core_marker_Copy_for_unpacking_options_via_question_mark_PhoneNumber.
Section Impl_core_marker_Copy_for_unpacking_options_via_question_mark_PhoneNumber.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := unpacking_options_via_question_mark.PhoneNumber.
  
  Global Instance ℐ : core.marker.Copy.Trait Self := {
  }.
End Impl_core_marker_Copy_for_unpacking_options_via_question_mark_PhoneNumber.
End Impl_core_marker_Copy_for_unpacking_options_via_question_mark_PhoneNumber.

Module  Impl_unpacking_options_via_question_mark_Person.
Section Impl_unpacking_options_via_question_mark_Person.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := unpacking_options_via_question_mark.Person.
  
  Definition work_phone_area_code
      (self : ref Self)
      : M (core.option.Option u8) :=
    let* α0 := deref self unpacking_options_via_question_mark.Person in
    let* α1 := α0.["job"] in
    let* α2 :=
      (core.ops.try_trait.Try.branch
          (Self := core.option.Option unpacking_options_via_question_mark.Job)
          (Trait := ltac:(refine _)))
        α1 in
    let* α3 :=
      match α2 with
      | core.ops.control_flow.ControlFlow residual =>
        let* α0 :=
          (core.ops.try_trait.FromResidual.from_residual
              (Self := core.option.Option u8)
              (Trait := ltac:(refine _)))
            residual in
        let* α1 := Return α0 in
        never_to_any α1
      | core.ops.control_flow.ControlFlow val => Pure val
      end in
    let* α4 := α3.["phone_number"] in
    let* α5 :=
      (core.ops.try_trait.Try.branch
          (Self :=
            core.option.Option unpacking_options_via_question_mark.PhoneNumber)
          (Trait := ltac:(refine _)))
        α4 in
    let* α6 :=
      match α5 with
      | core.ops.control_flow.ControlFlow residual =>
        let* α0 :=
          (core.ops.try_trait.FromResidual.from_residual
              (Self := core.option.Option u8)
              (Trait := ltac:(refine _)))
            residual in
        let* α1 := Return α0 in
        never_to_any α1
      | core.ops.control_flow.ControlFlow val => Pure val
      end in
    α6.["area_code"].
  
  Global Instance AssociatedFunction_work_phone_area_code :
    Notation.DoubleColon Self "work_phone_area_code" := {
    Notation.double_colon := work_phone_area_code;
  }.
End Impl_unpacking_options_via_question_mark_Person.
End Impl_unpacking_options_via_question_mark_Person.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  let* p :=
    let* α0 := M.alloc 61 in
    let* α1 := M.alloc (core.option.Option.Some α0) in
    let* α2 := M.alloc 439222222 in
    let* α3 :=
      M.alloc
        {|
          unpacking_options_via_question_mark.PhoneNumber.area_code := α1;
          unpacking_options_via_question_mark.PhoneNumber.number := α2;
        |} in
    let* α4 := M.alloc (core.option.Option.Some α3) in
    let* α5 :=
      M.alloc
        {| unpacking_options_via_question_mark.Job.phone_number := α4; |} in
    let* α6 := M.alloc (core.option.Option.Some α5) in
    M.alloc {| unpacking_options_via_question_mark.Person.job := α6; |} in
  let* _ :=
    let* α0 := borrow p unpacking_options_via_question_mark.Person in
    let* α1 :=
      unpacking_options_via_question_mark.Person::["work_phone_area_code"] α0 in
    let* α2 := borrow α1 (core.option.Option u8) in
    let* α3 := M.alloc 61 in
    let* α4 := M.alloc (core.option.Option.Some α3) in
    let* α5 := borrow α4 (core.option.Option u8) in
    match (α2, α5) with
    | (left_val, right_val) =>
      let* α0 := deref left_val (core.option.Option u8) in
      let* α1 := borrow α0 (core.option.Option u8) in
      let* α2 := deref right_val (core.option.Option u8) in
      let* α3 := borrow α2 (core.option.Option u8) in
      let* α4 :=
        (core.cmp.PartialEq.eq
            (Self := core.option.Option u8)
            (Trait := ltac:(refine _)))
          α1
          α3 in
      let* α5 := UnOp.not α4 in
      let* α6 := use α5 in
      if (α6 : bool) then
        let* kind := M.alloc core.panicking.AssertKind.Eq in
        let* _ :=
          let* α0 := deref left_val (core.option.Option u8) in
          let* α1 := borrow α0 (core.option.Option u8) in
          let* α2 := deref α1 (core.option.Option u8) in
          let* α3 := borrow α2 (core.option.Option u8) in
          let* α4 := deref right_val (core.option.Option u8) in
          let* α5 := borrow α4 (core.option.Option u8) in
          let* α6 := deref α5 (core.option.Option u8) in
          let* α7 := borrow α6 (core.option.Option u8) in
          let* α8 := M.alloc core.option.Option.None in
          core.panicking.assert_failed kind α3 α7 α8 in
        let* α0 := M.alloc tt in
        never_to_any α0
      else
        M.alloc tt
    end in
  M.alloc tt.
