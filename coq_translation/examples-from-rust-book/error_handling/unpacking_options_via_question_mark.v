(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module Person.
  Record t : Set := {
    job : Option Job;
  }.
  
  Global Instance Get_job : Notation.Dot "job" := {
    Notation.dot '(Build_t x0) := x0;
  }.
End Person.
Definition Person : Set := Person.t.

Module Job.
  Record t : Set := {
    phone_number : Option PhoneNumber;
  }.
  
  Global Instance Get_phone_number : Notation.Dot "phone_number" := {
    Notation.dot '(Build_t x0) := x0;
  }.
End Job.
Definition Job : Set := Job.t.

Module Impl__crate_clone_Clone_for_Job.
  Definition Self := Job.
  
  Definition clone (self : ref Self) :=
    let return_type := Job in
    ltac:(function (
      let '_ := tt in
      self.["deref"](||)
    : return_type)).
  
  Global Instance Method_clone : Notation.Dot "clone" := {
    Notation.dot := clone;
  }.
  
  Global Instance I : _crate.clone.Clone.Trait Self := {
    _crate.clone.Clone.clone := clone;
  }.
End Impl__crate_clone_Clone_for_Job.

Module Impl__crate_marker_Copy_for_Job.
  Definition Self := Job.
  
  Global Instance I : _crate.marker.Copy.Trait Self :=
    _crate.marker.Copy.Build_Class _.
End Impl__crate_marker_Copy_for_Job.

Module PhoneNumber.
  Record t : Set := {
    area_code : Option u8;
    number : u32;
  }.
  
  Global Instance Get_area_code : Notation.Dot "area_code" := {
    Notation.dot '(Build_t x0 _) := x0;
  }.
  Global Instance Get_number : Notation.Dot "number" := {
    Notation.dot '(Build_t _ x1) := x1;
  }.
End PhoneNumber.
Definition PhoneNumber : Set := PhoneNumber.t.

Module Impl__crate_clone_Clone_for_PhoneNumber.
  Definition Self := PhoneNumber.
  
  Definition clone (self : ref Self) :=
    let return_type := PhoneNumber in
    ltac:(function (
      let '_ := tt in
      let '_ := tt in
      self.["deref"](||)
    : return_type)).
  
  Global Instance Method_clone : Notation.Dot "clone" := {
    Notation.dot := clone;
  }.
  
  Global Instance I : _crate.clone.Clone.Trait Self := {
    _crate.clone.Clone.clone := clone;
  }.
End Impl__crate_clone_Clone_for_PhoneNumber.

Module Impl__crate_marker_Copy_for_PhoneNumber.
  Definition Self := PhoneNumber.
  
  Global Instance I : _crate.marker.Copy.Trait Self :=
    _crate.marker.Copy.Build_Class _.
End Impl__crate_marker_Copy_for_PhoneNumber.

Module ImplPerson.
  Definition Self := Person.
  
  Definition work_phone_area_code (self : ref Self) :=
    let return_type := Option u8 in
    ltac:(function (
      match
          LangItem(|
            match LangItem(| self.["job"] |) with
              | Break {| Break.0 := residual; |} =>
                M.Return LangItem(| residual |)
              | Continue {| Continue.0 := val; |} => val
              end.["phone_number"]
          |)
        with
        | Break {| Break.0 := residual; |} => M.Return LangItem(| residual |)
        | Continue {| Continue.0 := val; |} => val
        end.["area_code"]
    : return_type)).
  
  Global Instance Method_work_phone_area_code :
    Notation.Dot "work_phone_area_code" := {
    Notation.dot := work_phone_area_code;
  }.
End ImplPerson.

Definition main :=
  let return_type := unit in
  ltac:(function (
    let p :=
      {|
        Person.job :=
          Some
            {|
              Job.phone_number :=
                Some
                  {|
                    PhoneNumber.area_code := Some 61;
                    PhoneNumber.number := 439222222;
                  |};
            |};
      |} in
    let _ : unit :=
      match (p.["work_phone_area_code"](||), Some 61) with
      | (left_val, right_val) =>
        if
          (left_val.["deref"](||).["eq"](| right_val.["deref"](||)
          |).["not"](||)
          : bool)
        then
          let kind := _crate.panicking.AssertKind.Eq in
          let _ : unit :=
            _crate.panicking.assert_failed(|
              kind,
              left_val.["deref"](||),
              right_val.["deref"](||),
              _crate.option.Option.None
            |) in
          tt
        else
          tt
      end in
    tt
  : return_type)).
