(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Person.
Section Person.
  Record t : Set := {
    job : core.option.Option.t unpacking_options_via_question_mark.Job.t;
  }.
  
  Global Instance Get_job : Notation.Dot "job" := {
    Notation.dot x := let* x := M.read x in M.alloc x.(job) : M _;
  }.
  Global Instance Get_AF_job : Notation.DoubleColon t "job" := {
    Notation.double_colon x := let* x := M.read x in M.alloc x.(job) : M _;
  }.
End Person.
End Person.

Module  Job.
Section Job.
  Record t : Set := {
    phone_number :
      core.option.Option.t unpacking_options_via_question_mark.PhoneNumber.t;
  }.
  
  Global Instance Get_phone_number : Notation.Dot "phone_number" := {
    Notation.dot x := let* x := M.read x in M.alloc x.(phone_number) : M _;
  }.
  Global Instance Get_AF_phone_number :
    Notation.DoubleColon t "phone_number" := {
    Notation.double_colon x :=
      let* x := M.read x in M.alloc x.(phone_number) : M _;
  }.
End Job.
End Job.

Module  Impl_core_clone_Clone_for_unpacking_options_via_question_mark_Job_t.
Section Impl_core_clone_Clone_for_unpacking_options_via_question_mark_Job_t.
  Ltac Self := exact unpacking_options_via_question_mark.Job.t.
  
  (*
  Clone
  *)
  Parameter clone :
      (M.Val (ref ltac:(Self))) ->
        M (M.Val unpacking_options_via_question_mark.Job.t).
  
  Global Instance AssociatedFunction_clone :
    Notation.DoubleColon ltac:(Self) "clone" := {
    Notation.double_colon := clone;
  }.
  
  Global Instance ℐ : core.clone.Clone.Required.Trait ltac:(Self) := {
    core.clone.Clone.clone := clone;
    core.clone.Clone.clone_from := Datatypes.None;
  }.
End Impl_core_clone_Clone_for_unpacking_options_via_question_mark_Job_t.
End Impl_core_clone_Clone_for_unpacking_options_via_question_mark_Job_t.

Module  Impl_core_marker_Copy_for_unpacking_options_via_question_mark_Job_t.
Section Impl_core_marker_Copy_for_unpacking_options_via_question_mark_Job_t.
  Ltac Self := exact unpacking_options_via_question_mark.Job.t.
  
  Global Instance ℐ : core.marker.Copy.Trait ltac:(Self) := {
  }.
End Impl_core_marker_Copy_for_unpacking_options_via_question_mark_Job_t.
End Impl_core_marker_Copy_for_unpacking_options_via_question_mark_Job_t.

Module  PhoneNumber.
Section PhoneNumber.
  Record t : Set := {
    area_code : core.option.Option.t u8.t;
    number : u32.t;
  }.
  
  Global Instance Get_area_code : Notation.Dot "area_code" := {
    Notation.dot x := let* x := M.read x in M.alloc x.(area_code) : M _;
  }.
  Global Instance Get_AF_area_code : Notation.DoubleColon t "area_code" := {
    Notation.double_colon x :=
      let* x := M.read x in M.alloc x.(area_code) : M _;
  }.
  Global Instance Get_number : Notation.Dot "number" := {
    Notation.dot x := let* x := M.read x in M.alloc x.(number) : M _;
  }.
  Global Instance Get_AF_number : Notation.DoubleColon t "number" := {
    Notation.double_colon x := let* x := M.read x in M.alloc x.(number) : M _;
  }.
End PhoneNumber.
End PhoneNumber.

Module  Impl_core_clone_Clone_for_unpacking_options_via_question_mark_PhoneNumber_t.
Section Impl_core_clone_Clone_for_unpacking_options_via_question_mark_PhoneNumber_t.
  Ltac Self := exact unpacking_options_via_question_mark.PhoneNumber.t.
  
  (*
  Clone
  *)
  Parameter clone :
      (M.Val (ref ltac:(Self))) ->
        M (M.Val unpacking_options_via_question_mark.PhoneNumber.t).
  
  Global Instance AssociatedFunction_clone :
    Notation.DoubleColon ltac:(Self) "clone" := {
    Notation.double_colon := clone;
  }.
  
  Global Instance ℐ : core.clone.Clone.Required.Trait ltac:(Self) := {
    core.clone.Clone.clone := clone;
    core.clone.Clone.clone_from := Datatypes.None;
  }.
End Impl_core_clone_Clone_for_unpacking_options_via_question_mark_PhoneNumber_t.
End Impl_core_clone_Clone_for_unpacking_options_via_question_mark_PhoneNumber_t.

Module  Impl_core_marker_Copy_for_unpacking_options_via_question_mark_PhoneNumber_t.
Section Impl_core_marker_Copy_for_unpacking_options_via_question_mark_PhoneNumber_t.
  Ltac Self := exact unpacking_options_via_question_mark.PhoneNumber.t.
  
  Global Instance ℐ : core.marker.Copy.Trait ltac:(Self) := {
  }.
End Impl_core_marker_Copy_for_unpacking_options_via_question_mark_PhoneNumber_t.
End Impl_core_marker_Copy_for_unpacking_options_via_question_mark_PhoneNumber_t.

Module  Impl_unpacking_options_via_question_mark_Person_t.
Section Impl_unpacking_options_via_question_mark_Person_t.
  Ltac Self := exact unpacking_options_via_question_mark.Person.t.
  
  (*
      fn work_phone_area_code(&self) -> Option<u8> {
          // This would need many nested `match` statements without the `?` operator.
          // It would take a lot more code - try writing it yourself and see which
          // is easier.
          self.job?.phone_number?.area_code
      }
  *)
  Parameter work_phone_area_code :
      (M.Val (ref ltac:(Self))) -> M (M.Val (core.option.Option.t u8.t)).
  
  Global Instance AssociatedFunction_work_phone_area_code :
    Notation.DoubleColon ltac:(Self) "work_phone_area_code" := {
    Notation.double_colon := work_phone_area_code;
  }.
End Impl_unpacking_options_via_question_mark_Person_t.
End Impl_unpacking_options_via_question_mark_Person_t.

(*
fn main() {
    let p = Person {
        job: Some(Job {
            phone_number: Some(PhoneNumber {
                area_code: Some(61),
                number: 439222222,
            }),
        }),
    };

    assert_eq!(p.work_phone_area_code(), Some(61));
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M (M.Val unit).
