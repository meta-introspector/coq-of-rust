(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  UsernameWidget.
Section UsernameWidget.
  Context `{ℋ : State.Trait}.
  
  Class Trait (Self : Set) : Type := {
    get : (ref Self) -> M alloc.string.String;
  }.
  
End UsernameWidget.
End UsernameWidget.

Module  AgeWidget.
Section AgeWidget.
  Context `{ℋ : State.Trait}.
  
  Class Trait (Self : Set) : Type := {
    get : (ref Self) -> M u8;
  }.
  
End AgeWidget.
End AgeWidget.

Module  Form.
Section Form.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Record t : Set := {
    username : alloc.string.String;
    age : u8;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_username : Notation.Dot "username" := {
    Notation.dot x := let* x := M.read x in M.pure x.(username) : M _;
  }.
  Global Instance Get_AF_username : Notation.DoubleColon t "username" := {
    Notation.double_colon x := let* x := M.read x in M.pure x.(username) : M _;
  }.
  Global Instance Get_age : Notation.Dot "age" := {
    Notation.dot x := let* x := M.read x in M.pure x.(age) : M _;
  }.
  Global Instance Get_AF_age : Notation.DoubleColon t "age" := {
    Notation.double_colon x := let* x := M.read x in M.pure x.(age) : M _;
  }.
End Form.
End Form.
Definition Form `{ℋ : State.Trait} : Set := M.Val Form.t.

Module  Impl_disambiguating_overlapping_traits_UsernameWidget_for_disambiguating_overlapping_traits_Form.
Section Impl_disambiguating_overlapping_traits_UsernameWidget_for_disambiguating_overlapping_traits_Form.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := disambiguating_overlapping_traits.Form.
  
  Definition get (self : ref Self) : M alloc.string.String :=
    M.function_body
      (let* α0 : ltac:(refine disambiguating_overlapping_traits.Form) :=
        deref self in
      let* α1 : ltac:(refine alloc.string.String) := α0.["username"] in
      let* α2 : ltac:(refine (ref alloc.string.String)) := borrow α1 in
      (core.clone.Clone.clone
          (Self := alloc.string.String)
          (Trait := ltac:(refine _)))
        α2).
  
  Global Instance AssociatedFunction_get : Notation.DoubleColon Self "get" := {
    Notation.double_colon := get;
  }.
  
  Global Instance ℐ :
    disambiguating_overlapping_traits.UsernameWidget.Trait Self := {
    disambiguating_overlapping_traits.UsernameWidget.get := get;
  }.
End Impl_disambiguating_overlapping_traits_UsernameWidget_for_disambiguating_overlapping_traits_Form.
End Impl_disambiguating_overlapping_traits_UsernameWidget_for_disambiguating_overlapping_traits_Form.

Module  Impl_disambiguating_overlapping_traits_AgeWidget_for_disambiguating_overlapping_traits_Form.
Section Impl_disambiguating_overlapping_traits_AgeWidget_for_disambiguating_overlapping_traits_Form.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := disambiguating_overlapping_traits.Form.
  
  Definition get (self : ref Self) : M u8 :=
    M.function_body
      (let* α0 : ltac:(refine disambiguating_overlapping_traits.Form) :=
        deref self in
      α0.["age"]).
  
  Global Instance AssociatedFunction_get : Notation.DoubleColon Self "get" := {
    Notation.double_colon := get;
  }.
  
  Global Instance ℐ :
    disambiguating_overlapping_traits.AgeWidget.Trait Self := {
    disambiguating_overlapping_traits.AgeWidget.get := get;
  }.
End Impl_disambiguating_overlapping_traits_AgeWidget_for_disambiguating_overlapping_traits_Form.
End Impl_disambiguating_overlapping_traits_AgeWidget_for_disambiguating_overlapping_traits_Form.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* form : ltac:(refine disambiguating_overlapping_traits.Form) :=
      let* α0 : ltac:(refine str) := deref (mk_str "rustacean") in
      let* α1 : ltac:(refine (ref str)) := borrow α0 in
      let* α2 : ltac:(refine alloc.string.String) :=
        (alloc.borrow.ToOwned.to_owned (Self := str) (Trait := ltac:(refine _)))
          α1 in
      let* α3 : ltac:(refine u8) := M.alloc 28 in
      M.alloc
        {|
          disambiguating_overlapping_traits.Form.username := α2;
          disambiguating_overlapping_traits.Form.age := α3;
        |} in
    let* username : ltac:(refine alloc.string.String) :=
      let* α0 : ltac:(refine (ref disambiguating_overlapping_traits.Form)) :=
        borrow form in
      let* α1 : ltac:(refine disambiguating_overlapping_traits.Form) :=
        deref α0 in
      let* α2 : ltac:(refine (ref disambiguating_overlapping_traits.Form)) :=
        borrow α1 in
      (disambiguating_overlapping_traits.UsernameWidget.get
          (Self := disambiguating_overlapping_traits.Form)
          (Trait := ltac:(refine _)))
        α2 in
    let* _ : ltac:(refine unit) :=
      let* α0 : ltac:(refine str) := deref (mk_str "rustacean") in
      let* α1 : ltac:(refine (ref str)) := borrow α0 in
      let* α2 : ltac:(refine alloc.string.String) :=
        (alloc.string.ToString.to_string
            (Self := str)
            (Trait := ltac:(refine _)))
          α1 in
      let* α3 : ltac:(refine (ref alloc.string.String)) := borrow α2 in
      let* α4 : ltac:(refine (ref alloc.string.String)) := borrow username in
      let*
          α5 :
          ltac:(refine
            (M.Val ((ref alloc.string.String) * (ref alloc.string.String)))) :=
        M.alloc (α3, α4) in
      let* α6 := M.read α5 in
      match α6 with
      | (left_val, right_val) =>
        let* α0 : ltac:(refine alloc.string.String) := deref left_val in
        let* α1 : ltac:(refine (ref alloc.string.String)) := borrow α0 in
        let* α2 : ltac:(refine alloc.string.String) := deref right_val in
        let* α3 : ltac:(refine (ref alloc.string.String)) := borrow α2 in
        let* α4 : ltac:(refine bool) :=
          (core.cmp.PartialEq.eq
              (Self := alloc.string.String)
              (Trait := ltac:(refine _)))
            α1
            α3 in
        let* α5 : ltac:(refine bool) := UnOp.not α4 in
        let* α6 : ltac:(refine bool) := use α5 in
        if (α6 : bool) then
          let* kind : ltac:(refine core.panicking.AssertKind) :=
            M.alloc core.panicking.AssertKind.Eq in
          let* _ : ltac:(refine never) :=
            let* α0 : ltac:(refine alloc.string.String) := deref left_val in
            let* α1 : ltac:(refine (ref alloc.string.String)) := borrow α0 in
            let* α2 : ltac:(refine alloc.string.String) := deref α1 in
            let* α3 : ltac:(refine (ref alloc.string.String)) := borrow α2 in
            let* α4 : ltac:(refine alloc.string.String) := deref right_val in
            let* α5 : ltac:(refine (ref alloc.string.String)) := borrow α4 in
            let* α6 : ltac:(refine alloc.string.String) := deref α5 in
            let* α7 : ltac:(refine (ref alloc.string.String)) := borrow α6 in
            let* α8 : ltac:(refine (core.option.Option core.fmt.Arguments)) :=
              M.alloc core.option.Option.None in
            core.panicking.assert_failed kind α3 α7 α8 in
          let* α0 : ltac:(refine unit) := M.alloc tt in
          never_to_any α0
        else
          M.alloc tt
      end in
    let* age : ltac:(refine u8) :=
      let* α0 : ltac:(refine (ref disambiguating_overlapping_traits.Form)) :=
        borrow form in
      let* α1 : ltac:(refine disambiguating_overlapping_traits.Form) :=
        deref α0 in
      let* α2 : ltac:(refine (ref disambiguating_overlapping_traits.Form)) :=
        borrow α1 in
      (disambiguating_overlapping_traits.AgeWidget.get
          (Self := disambiguating_overlapping_traits.Form)
          (Trait := ltac:(refine _)))
        α2 in
    let* _ : ltac:(refine unit) :=
      let* α0 : ltac:(refine u8) := M.alloc 28 in
      let* α1 : ltac:(refine (ref u8)) := borrow α0 in
      let* α2 : ltac:(refine (ref u8)) := borrow age in
      let* α3 : ltac:(refine (M.Val ((ref u8) * (ref u8)))) :=
        M.alloc (α1, α2) in
      let* α4 := M.read α3 in
      match α4 with
      | (left_val, right_val) =>
        let* α0 : ltac:(refine u8) := deref left_val in
        let* α1 : ltac:(refine u8) := deref right_val in
        let* α2 : ltac:(refine bool) := BinOp.eq α0 α1 in
        let* α3 : ltac:(refine bool) := UnOp.not α2 in
        let* α4 : ltac:(refine bool) := use α3 in
        if (α4 : bool) then
          let* kind : ltac:(refine core.panicking.AssertKind) :=
            M.alloc core.panicking.AssertKind.Eq in
          let* _ : ltac:(refine never) :=
            let* α0 : ltac:(refine u8) := deref left_val in
            let* α1 : ltac:(refine (ref u8)) := borrow α0 in
            let* α2 : ltac:(refine u8) := deref α1 in
            let* α3 : ltac:(refine (ref u8)) := borrow α2 in
            let* α4 : ltac:(refine u8) := deref right_val in
            let* α5 : ltac:(refine (ref u8)) := borrow α4 in
            let* α6 : ltac:(refine u8) := deref α5 in
            let* α7 : ltac:(refine (ref u8)) := borrow α6 in
            let* α8 : ltac:(refine (core.option.Option core.fmt.Arguments)) :=
              M.alloc core.option.Option.None in
            core.panicking.assert_failed kind α3 α7 α8 in
          let* α0 : ltac:(refine unit) := M.alloc tt in
          never_to_any α0
        else
          M.alloc tt
      end in
    M.alloc tt).
