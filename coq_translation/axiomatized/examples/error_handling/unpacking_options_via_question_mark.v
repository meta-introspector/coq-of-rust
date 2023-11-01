(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Person.
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

Module Job.
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

Module Impl_core_clone_Clone_for_unpacking_options_via_question_mark_Job.
  Section Impl_core_clone_Clone_for_unpacking_options_via_question_mark_Job.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := unpacking_options_via_question_mark.Job.
    
    Parameter clone : (ref Self) -> M unpacking_options_via_question_mark.Job.
    
    Global Instance AssociatedFunction_clone :
      Notation.DoubleColon Self "clone" := {
      Notation.double_colon := clone;
    }.
    
    Global Instance ℐ : core.clone.Clone.Trait Self := {
      core.clone.Clone.clone := clone;
    }.
  End Impl_core_clone_Clone_for_unpacking_options_via_question_mark_Job.
End Impl_core_clone_Clone_for_unpacking_options_via_question_mark_Job.

Module Impl_core_marker_Copy_for_unpacking_options_via_question_mark_Job.
  Section Impl_core_marker_Copy_for_unpacking_options_via_question_mark_Job.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := unpacking_options_via_question_mark.Job.
    
    Global Instance ℐ : core.marker.Copy.Trait Self := {
    }.
  End Impl_core_marker_Copy_for_unpacking_options_via_question_mark_Job.
End Impl_core_marker_Copy_for_unpacking_options_via_question_mark_Job.

Module PhoneNumber.
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

Module
  Impl_core_clone_Clone_for_unpacking_options_via_question_mark_PhoneNumber.
  Section
    Impl_core_clone_Clone_for_unpacking_options_via_question_mark_PhoneNumber.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := unpacking_options_via_question_mark.PhoneNumber.
    
    Parameter clone :
        (ref Self) -> M unpacking_options_via_question_mark.PhoneNumber.
    
    Global Instance AssociatedFunction_clone :
      Notation.DoubleColon Self "clone" := {
      Notation.double_colon := clone;
    }.
    
    Global Instance ℐ : core.clone.Clone.Trait Self := {
      core.clone.Clone.clone := clone;
    }.
  End Impl_core_clone_Clone_for_unpacking_options_via_question_mark_PhoneNumber.
End Impl_core_clone_Clone_for_unpacking_options_via_question_mark_PhoneNumber.

Module
  Impl_core_marker_Copy_for_unpacking_options_via_question_mark_PhoneNumber.
  Section
    Impl_core_marker_Copy_for_unpacking_options_via_question_mark_PhoneNumber.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := unpacking_options_via_question_mark.PhoneNumber.
    
    Global Instance ℐ : core.marker.Copy.Trait Self := {
    }.
  End Impl_core_marker_Copy_for_unpacking_options_via_question_mark_PhoneNumber.
End Impl_core_marker_Copy_for_unpacking_options_via_question_mark_PhoneNumber.

Module Impl_unpacking_options_via_question_mark_Person.
  Section Impl_unpacking_options_via_question_mark_Person.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := unpacking_options_via_question_mark.Person.
    
    Parameter work_phone_area_code : (ref Self) -> M (core.option.Option u8).
    
    Global Instance AssociatedFunction_work_phone_area_code :
      Notation.DoubleColon Self "work_phone_area_code" := {
      Notation.double_colon := work_phone_area_code;
    }.
  End Impl_unpacking_options_via_question_mark_Person.
End Impl_unpacking_options_via_question_mark_Person.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{ℋ : State.Trait}, M unit.
