(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  EvenNumber.
Section EvenNumber.
  Context `{ℋ : State.Trait}.
  
  Record t : Set := {
    x0 : i32;
  }.
  
  Global Instance Get_0 : Notation.Dot "0" := {
    Notation.dot x := let* x := M.read x in M.pure x.(x0) : M _;
  }.
End EvenNumber.
End EvenNumber.
Definition EvenNumber `{ℋ : State.Trait} : Set := M.Val EvenNumber.t.

Module  Impl_core_fmt_Debug_for_try_from_and_try_into_EvenNumber.
Section Impl_core_fmt_Debug_for_try_from_and_try_into_EvenNumber.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := try_from_and_try_into.EvenNumber.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter)
      : M ltac:(core.fmt.Result) :=
    M.function_body
      (let* α0 : ltac:(refine core.fmt.Formatter) := deref f in
      let* α1 : ltac:(refine (mut_ref core.fmt.Formatter)) := borrow_mut α0 in
      let* α2 : ltac:(refine str) := deref (mk_str "EvenNumber") in
      let* α3 : ltac:(refine (ref str)) := borrow α2 in
      let* α4 : ltac:(refine try_from_and_try_into.EvenNumber) := deref self in
      let* α5 : ltac:(refine i32) := α4.["0"] in
      let* α6 : ltac:(refine (ref i32)) := borrow α5 in
      let* α7 : ltac:(refine (ref (ref i32))) := borrow α6 in
      let* α8 : ltac:(refine (ref i32)) := deref α7 in
      let* α9 : ltac:(refine (ref (ref i32))) := borrow α8 in
      let* α10 : ltac:(refine (ref type not implemented)) :=
        pointer_coercion "Unsize" α9 in
      core.fmt.Formatter::["debug_tuple_field1_finish"] α1 α3 α10).
  
  Global Instance AssociatedFunction_fmt : Notation.DoubleColon Self "fmt" := {
    Notation.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_try_from_and_try_into_EvenNumber.
End Impl_core_fmt_Debug_for_try_from_and_try_into_EvenNumber.

Module  Impl_core_marker_StructuralPartialEq_for_try_from_and_try_into_EvenNumber.
Section Impl_core_marker_StructuralPartialEq_for_try_from_and_try_into_EvenNumber.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := try_from_and_try_into.EvenNumber.
  
  Global Instance ℐ : core.marker.StructuralPartialEq.Trait Self := {
  }.
End Impl_core_marker_StructuralPartialEq_for_try_from_and_try_into_EvenNumber.
End Impl_core_marker_StructuralPartialEq_for_try_from_and_try_into_EvenNumber.

Module  Impl_core_cmp_PartialEq_for_try_from_and_try_into_EvenNumber.
Section Impl_core_cmp_PartialEq_for_try_from_and_try_into_EvenNumber.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := try_from_and_try_into.EvenNumber.
  
  Definition eq
      (self : ref Self)
      (other : ref try_from_and_try_into.EvenNumber)
      : M bool :=
    M.function_body
      (let* α0 : ltac:(refine try_from_and_try_into.EvenNumber) := deref self in
      let* α1 : ltac:(refine i32) := α0.["0"] in
      let* α2 : ltac:(refine try_from_and_try_into.EvenNumber) := deref other in
      let* α3 : ltac:(refine i32) := α2.["0"] in
      BinOp.eq α1 α3).
  
  Global Instance AssociatedFunction_eq : Notation.DoubleColon Self "eq" := {
    Notation.double_colon := eq;
  }.
  
  Global Instance ℐ :
    core.cmp.PartialEq.Required.Trait Self
      (Rhs := core.cmp.PartialEq.Default.Rhs Self) := {
    core.cmp.PartialEq.eq := eq;
    core.cmp.PartialEq.ne := Datatypes.None;
  }.
End Impl_core_cmp_PartialEq_for_try_from_and_try_into_EvenNumber.
End Impl_core_cmp_PartialEq_for_try_from_and_try_into_EvenNumber.

Module  Impl_core_convert_TryFrom_i32_for_try_from_and_try_into_EvenNumber.
Section Impl_core_convert_TryFrom_i32_for_try_from_and_try_into_EvenNumber.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := try_from_and_try_into.EvenNumber.
  
  Definition Error : Set := unit.
  
  Definition try_from (value : i32) : M (core.result.Result Self Error) :=
    M.function_body
      (let* α0 : ltac:(refine i32) := M.alloc 2 in
      let* α1 : ltac:(refine i32) := BinOp.rem value α0 in
      let* α2 : ltac:(refine i32) := M.alloc 0 in
      let* α3 : ltac:(refine bool) := BinOp.eq α1 α2 in
      let* α4 : ltac:(refine bool) := use α3 in
      if (α4 : bool) then
        let* α0 : ltac:(refine try_from_and_try_into.EvenNumber) :=
          M.alloc (try_from_and_try_into.EvenNumber.Build_t value) in
        M.alloc (core.result.Result.Ok α0)
      else
        let* α0 : ltac:(refine unit) := M.alloc tt in
        M.alloc (core.result.Result.Err α0)).
  
  Global Instance AssociatedFunction_try_from :
    Notation.DoubleColon Self "try_from" := {
    Notation.double_colon := try_from;
  }.
  
  Global Instance ℐ : core.convert.TryFrom.Trait Self (T := i32) := {
    core.convert.TryFrom.Error := Error;
    core.convert.TryFrom.try_from := try_from;
  }.
End Impl_core_convert_TryFrom_i32_for_try_from_and_try_into_EvenNumber.
End Impl_core_convert_TryFrom_i32_for_try_from_and_try_into_EvenNumber.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* _ : ltac:(refine unit) :=
      let* α0 : ltac:(refine i32) := M.alloc 8 in
      let* α1 :
          ltac:(refine
            (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
        (core.convert.TryFrom.try_from
            (Self := try_from_and_try_into.EvenNumber)
            (Trait := ltac:(refine _)))
          α0 in
      let* α2 :
          ltac:(refine
            (ref (core.result.Result try_from_and_try_into.EvenNumber unit))) :=
        borrow α1 in
      let* α3 : ltac:(refine i32) := M.alloc 8 in
      let* α4 : ltac:(refine try_from_and_try_into.EvenNumber) :=
        M.alloc (try_from_and_try_into.EvenNumber.Build_t α3) in
      let* α5 :
          ltac:(refine
            (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
        M.alloc (core.result.Result.Ok α4) in
      let* α6 :
          ltac:(refine
            (ref (core.result.Result try_from_and_try_into.EvenNumber unit))) :=
        borrow α5 in
      let* α7 :
          ltac:(refine
            (M.Val
              ((ref
                  (core.result.Result try_from_and_try_into.EvenNumber unit)) *
                (ref
                  (core.result.Result
                    try_from_and_try_into.EvenNumber
                    unit))))) :=
        M.alloc (α2, α6) in
      let* α8 := M.read α7 in
      match α8 with
      | (left_val, right_val) =>
        let* α0 :
            ltac:(refine
              (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
          deref left_val in
        let* α1 :
            ltac:(refine
              (ref
                (core.result.Result try_from_and_try_into.EvenNumber unit))) :=
          borrow α0 in
        let* α2 :
            ltac:(refine
              (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
          deref right_val in
        let* α3 :
            ltac:(refine
              (ref
                (core.result.Result try_from_and_try_into.EvenNumber unit))) :=
          borrow α2 in
        let* α4 : ltac:(refine bool) :=
          (core.cmp.PartialEq.eq
              (Self := core.result.Result try_from_and_try_into.EvenNumber unit)
              (Trait := ltac:(refine _)))
            α1
            α3 in
        let* α5 : ltac:(refine bool) := UnOp.not α4 in
        let* α6 : ltac:(refine bool) := use α5 in
        if (α6 : bool) then
          let* kind : ltac:(refine core.panicking.AssertKind) :=
            M.alloc core.panicking.AssertKind.Eq in
          let* _ : ltac:(refine never) :=
            let* α0 :
                ltac:(refine
                  (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
              deref left_val in
            let* α1 :
                ltac:(refine
                  (ref
                    (core.result.Result
                      try_from_and_try_into.EvenNumber
                      unit))) :=
              borrow α0 in
            let* α2 :
                ltac:(refine
                  (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
              deref α1 in
            let* α3 :
                ltac:(refine
                  (ref
                    (core.result.Result
                      try_from_and_try_into.EvenNumber
                      unit))) :=
              borrow α2 in
            let* α4 :
                ltac:(refine
                  (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
              deref right_val in
            let* α5 :
                ltac:(refine
                  (ref
                    (core.result.Result
                      try_from_and_try_into.EvenNumber
                      unit))) :=
              borrow α4 in
            let* α6 :
                ltac:(refine
                  (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
              deref α5 in
            let* α7 :
                ltac:(refine
                  (ref
                    (core.result.Result
                      try_from_and_try_into.EvenNumber
                      unit))) :=
              borrow α6 in
            let* α8 : ltac:(refine (core.option.Option core.fmt.Arguments)) :=
              M.alloc core.option.Option.None in
            core.panicking.assert_failed kind α3 α7 α8 in
          let* α0 : ltac:(refine unit) := M.alloc tt in
          never_to_any α0
        else
          M.alloc tt
      end in
    let* _ : ltac:(refine unit) :=
      let* α0 : ltac:(refine i32) := M.alloc 5 in
      let* α1 :
          ltac:(refine
            (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
        (core.convert.TryFrom.try_from
            (Self := try_from_and_try_into.EvenNumber)
            (Trait := ltac:(refine _)))
          α0 in
      let* α2 :
          ltac:(refine
            (ref (core.result.Result try_from_and_try_into.EvenNumber unit))) :=
        borrow α1 in
      let* α3 : ltac:(refine unit) := M.alloc tt in
      let* α4 :
          ltac:(refine
            (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
        M.alloc (core.result.Result.Err α3) in
      let* α5 :
          ltac:(refine
            (ref (core.result.Result try_from_and_try_into.EvenNumber unit))) :=
        borrow α4 in
      let* α6 :
          ltac:(refine
            (M.Val
              ((ref
                  (core.result.Result try_from_and_try_into.EvenNumber unit)) *
                (ref
                  (core.result.Result
                    try_from_and_try_into.EvenNumber
                    unit))))) :=
        M.alloc (α2, α5) in
      let* α7 := M.read α6 in
      match α7 with
      | (left_val, right_val) =>
        let* α0 :
            ltac:(refine
              (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
          deref left_val in
        let* α1 :
            ltac:(refine
              (ref
                (core.result.Result try_from_and_try_into.EvenNumber unit))) :=
          borrow α0 in
        let* α2 :
            ltac:(refine
              (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
          deref right_val in
        let* α3 :
            ltac:(refine
              (ref
                (core.result.Result try_from_and_try_into.EvenNumber unit))) :=
          borrow α2 in
        let* α4 : ltac:(refine bool) :=
          (core.cmp.PartialEq.eq
              (Self := core.result.Result try_from_and_try_into.EvenNumber unit)
              (Trait := ltac:(refine _)))
            α1
            α3 in
        let* α5 : ltac:(refine bool) := UnOp.not α4 in
        let* α6 : ltac:(refine bool) := use α5 in
        if (α6 : bool) then
          let* kind : ltac:(refine core.panicking.AssertKind) :=
            M.alloc core.panicking.AssertKind.Eq in
          let* _ : ltac:(refine never) :=
            let* α0 :
                ltac:(refine
                  (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
              deref left_val in
            let* α1 :
                ltac:(refine
                  (ref
                    (core.result.Result
                      try_from_and_try_into.EvenNumber
                      unit))) :=
              borrow α0 in
            let* α2 :
                ltac:(refine
                  (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
              deref α1 in
            let* α3 :
                ltac:(refine
                  (ref
                    (core.result.Result
                      try_from_and_try_into.EvenNumber
                      unit))) :=
              borrow α2 in
            let* α4 :
                ltac:(refine
                  (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
              deref right_val in
            let* α5 :
                ltac:(refine
                  (ref
                    (core.result.Result
                      try_from_and_try_into.EvenNumber
                      unit))) :=
              borrow α4 in
            let* α6 :
                ltac:(refine
                  (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
              deref α5 in
            let* α7 :
                ltac:(refine
                  (ref
                    (core.result.Result
                      try_from_and_try_into.EvenNumber
                      unit))) :=
              borrow α6 in
            let* α8 : ltac:(refine (core.option.Option core.fmt.Arguments)) :=
              M.alloc core.option.Option.None in
            core.panicking.assert_failed kind α3 α7 α8 in
          let* α0 : ltac:(refine unit) := M.alloc tt in
          never_to_any α0
        else
          M.alloc tt
      end in
    let* result :
        ltac:(refine
          (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
      let* α0 : ltac:(refine i32) := M.alloc 8 in
      (core.convert.TryInto.try_into (Self := i32) (Trait := ltac:(refine _)))
        α0 in
    let* _ : ltac:(refine unit) :=
      let* α0 :
          ltac:(refine
            (ref (core.result.Result try_from_and_try_into.EvenNumber unit))) :=
        borrow result in
      let* α1 : ltac:(refine i32) := M.alloc 8 in
      let* α2 : ltac:(refine try_from_and_try_into.EvenNumber) :=
        M.alloc (try_from_and_try_into.EvenNumber.Build_t α1) in
      let* α3 :
          ltac:(refine
            (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
        M.alloc (core.result.Result.Ok α2) in
      let* α4 :
          ltac:(refine
            (ref (core.result.Result try_from_and_try_into.EvenNumber unit))) :=
        borrow α3 in
      let* α5 :
          ltac:(refine
            (M.Val
              ((ref
                  (core.result.Result try_from_and_try_into.EvenNumber unit)) *
                (ref
                  (core.result.Result
                    try_from_and_try_into.EvenNumber
                    unit))))) :=
        M.alloc (α0, α4) in
      let* α6 := M.read α5 in
      match α6 with
      | (left_val, right_val) =>
        let* α0 :
            ltac:(refine
              (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
          deref left_val in
        let* α1 :
            ltac:(refine
              (ref
                (core.result.Result try_from_and_try_into.EvenNumber unit))) :=
          borrow α0 in
        let* α2 :
            ltac:(refine
              (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
          deref right_val in
        let* α3 :
            ltac:(refine
              (ref
                (core.result.Result try_from_and_try_into.EvenNumber unit))) :=
          borrow α2 in
        let* α4 : ltac:(refine bool) :=
          (core.cmp.PartialEq.eq
              (Self := core.result.Result try_from_and_try_into.EvenNumber unit)
              (Trait := ltac:(refine _)))
            α1
            α3 in
        let* α5 : ltac:(refine bool) := UnOp.not α4 in
        let* α6 : ltac:(refine bool) := use α5 in
        if (α6 : bool) then
          let* kind : ltac:(refine core.panicking.AssertKind) :=
            M.alloc core.panicking.AssertKind.Eq in
          let* _ : ltac:(refine never) :=
            let* α0 :
                ltac:(refine
                  (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
              deref left_val in
            let* α1 :
                ltac:(refine
                  (ref
                    (core.result.Result
                      try_from_and_try_into.EvenNumber
                      unit))) :=
              borrow α0 in
            let* α2 :
                ltac:(refine
                  (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
              deref α1 in
            let* α3 :
                ltac:(refine
                  (ref
                    (core.result.Result
                      try_from_and_try_into.EvenNumber
                      unit))) :=
              borrow α2 in
            let* α4 :
                ltac:(refine
                  (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
              deref right_val in
            let* α5 :
                ltac:(refine
                  (ref
                    (core.result.Result
                      try_from_and_try_into.EvenNumber
                      unit))) :=
              borrow α4 in
            let* α6 :
                ltac:(refine
                  (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
              deref α5 in
            let* α7 :
                ltac:(refine
                  (ref
                    (core.result.Result
                      try_from_and_try_into.EvenNumber
                      unit))) :=
              borrow α6 in
            let* α8 : ltac:(refine (core.option.Option core.fmt.Arguments)) :=
              M.alloc core.option.Option.None in
            core.panicking.assert_failed kind α3 α7 α8 in
          let* α0 : ltac:(refine unit) := M.alloc tt in
          never_to_any α0
        else
          M.alloc tt
      end in
    let* result :
        ltac:(refine
          (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
      let* α0 : ltac:(refine i32) := M.alloc 5 in
      (core.convert.TryInto.try_into (Self := i32) (Trait := ltac:(refine _)))
        α0 in
    let* _ : ltac:(refine unit) :=
      let* α0 :
          ltac:(refine
            (ref (core.result.Result try_from_and_try_into.EvenNumber unit))) :=
        borrow result in
      let* α1 : ltac:(refine unit) := M.alloc tt in
      let* α2 :
          ltac:(refine
            (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
        M.alloc (core.result.Result.Err α1) in
      let* α3 :
          ltac:(refine
            (ref (core.result.Result try_from_and_try_into.EvenNumber unit))) :=
        borrow α2 in
      let* α4 :
          ltac:(refine
            (M.Val
              ((ref
                  (core.result.Result try_from_and_try_into.EvenNumber unit)) *
                (ref
                  (core.result.Result
                    try_from_and_try_into.EvenNumber
                    unit))))) :=
        M.alloc (α0, α3) in
      let* α5 := M.read α4 in
      match α5 with
      | (left_val, right_val) =>
        let* α0 :
            ltac:(refine
              (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
          deref left_val in
        let* α1 :
            ltac:(refine
              (ref
                (core.result.Result try_from_and_try_into.EvenNumber unit))) :=
          borrow α0 in
        let* α2 :
            ltac:(refine
              (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
          deref right_val in
        let* α3 :
            ltac:(refine
              (ref
                (core.result.Result try_from_and_try_into.EvenNumber unit))) :=
          borrow α2 in
        let* α4 : ltac:(refine bool) :=
          (core.cmp.PartialEq.eq
              (Self := core.result.Result try_from_and_try_into.EvenNumber unit)
              (Trait := ltac:(refine _)))
            α1
            α3 in
        let* α5 : ltac:(refine bool) := UnOp.not α4 in
        let* α6 : ltac:(refine bool) := use α5 in
        if (α6 : bool) then
          let* kind : ltac:(refine core.panicking.AssertKind) :=
            M.alloc core.panicking.AssertKind.Eq in
          let* _ : ltac:(refine never) :=
            let* α0 :
                ltac:(refine
                  (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
              deref left_val in
            let* α1 :
                ltac:(refine
                  (ref
                    (core.result.Result
                      try_from_and_try_into.EvenNumber
                      unit))) :=
              borrow α0 in
            let* α2 :
                ltac:(refine
                  (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
              deref α1 in
            let* α3 :
                ltac:(refine
                  (ref
                    (core.result.Result
                      try_from_and_try_into.EvenNumber
                      unit))) :=
              borrow α2 in
            let* α4 :
                ltac:(refine
                  (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
              deref right_val in
            let* α5 :
                ltac:(refine
                  (ref
                    (core.result.Result
                      try_from_and_try_into.EvenNumber
                      unit))) :=
              borrow α4 in
            let* α6 :
                ltac:(refine
                  (core.result.Result try_from_and_try_into.EvenNumber unit)) :=
              deref α5 in
            let* α7 :
                ltac:(refine
                  (ref
                    (core.result.Result
                      try_from_and_try_into.EvenNumber
                      unit))) :=
              borrow α6 in
            let* α8 : ltac:(refine (core.option.Option core.fmt.Arguments)) :=
              M.alloc core.option.Option.None in
            core.panicking.assert_failed kind α3 α7 α8 in
          let* α0 : ltac:(refine unit) := M.alloc tt in
          never_to_any α0
        else
          M.alloc tt
      end in
    M.alloc tt).
