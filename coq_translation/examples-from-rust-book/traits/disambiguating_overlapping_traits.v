(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Class UsernameWidget : Set := {
  get : static_ref Self -> String;
}.

Class AgeWidget : Set := {
  get : static_ref Self -> u8;
}.

Module Form.
  Record t : Set := {
    username : String;
    age : u8;
  }.
End Form.
Definition Form : Set := Form.t.

Module Impl_UsernameWidget_for_Form.
  Definition Self := Form.
  
  #[global] Instance I : UsernameWidget.Class Self := {|
    get (self : static_ref Form) : String := clone self.username;
  |}.
Module ImplForm.

Module Impl_AgeWidget_for_Form.
  Definition Self := Form.
  
  #[global] Instance I : AgeWidget.Class Self := {|
    get (self : static_ref Form) : u8 := self.age;
  |}.
Module ImplForm.

Definition main (_ : unit) :=
  let form := {| Form.username := to_owned "rustacean"; Form.age := 28; |} in
  let username := UsernameWidget.get form in
  match (to_owned "rustacean", username) with
  | (left_val, right_val) =>
    if not (eq (deref left_val) (deref right_val)) then
      let kind := _crate.panicking.AssertKind.Eq in
      _crate.panicking.assert_failed
        kind
        (deref left_val)
        (deref right_val)
        _crate.option.Option.None ;;
      tt
    else
      tt
  end ;;
  let age := AgeWidget.get form in
  match (28, age) with
  | (left_val, right_val) =>
    if not (eq (deref left_val) (deref right_val)) then
      let kind := _crate.panicking.AssertKind.Eq in
      _crate.panicking.assert_failed
        kind
        (deref left_val)
        (deref right_val)
        _crate.option.Option.None ;;
      tt
    else
      tt
  end ;;
  tt.
