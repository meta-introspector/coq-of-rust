(* Generated by coq-of-rust *)
Require Import Coq.Strings.String.
Require Import Coq.ZArith.ZArith.
Local Open Scope Z.

(* Approximation *)

Definition u8 : Set := Z.
Definition u16 : Set := Z.
Definition u32 : Set := Z.
Definition u64 : Set := Z.
Definition u128 : Set := Z.

Definition i8 : Set := Z.
Definition i16 : Set := Z.
Definition i32 : Set := Z.
Definition i64 : Set := Z.
Definition i128 : Set := Z.

Definition f32 : Set := Z.
Definition f64 : Set := Z.

Module Account.
  Record t : Set := {
    username : static_ref str;
    password : static_ref str;
  }.
End Account.
Definition Account : Set := Account.t.

(* Impl [Account] of trait [_crate.marker.StructuralPartialEq]*)
Module ImplAccount.
  
End ImplAccount.
(* End impl [Account] *)

(* Impl [Account] of trait [_crate.cmp.PartialEq]*)
Module ImplAccount.
  Definition
    eq
    (self : static_ref Account<'a>)
    (other : static_ref Account)
    : bool :=
    and (eq self.username other.username) (eq self.password other.password).
End ImplAccount.
(* End impl [Account] *)

(* Impl [Account] of trait [_crate.marker.StructuralEq]*)
Module ImplAccount.
  
End ImplAccount.
(* End impl [Account] *)

(* Impl [Account] of trait [_crate.cmp.Eq]*)
Module ImplAccount.
  Definition assert_receiver_is_total_eq (self : static_ref Account<'a>) :  :=
    let _ := tt in
    let _ := tt in
    tt.
End ImplAccount.
(* End impl [Account] *)

(* Impl [Account] of trait [_crate.hash.Hash]*)
Module ImplAccount.
  Definition hash (self : static_ref Account<'a>) (state : mut_ref __H) :  :=
    _crate.hash.Hash.hash self.username state ;;
    _crate.hash.Hash.hash self.password state.
End ImplAccount.
(* End impl [Account] *)

Module AccountInfo.
  Record t : Set := {
    name : static_ref str;
    email : static_ref str;
  }.
End AccountInfo.
Definition AccountInfo : Set := AccountInfo.t.

Error TyAlias.

Definition try_logon (_ : unit) :=
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["Username: ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_display username]) ;;
  tt ;;
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["Password: ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_display password]) ;;
  tt ;;
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1 ["Attempting logon...\n"] []) ;;
  tt ;;
  let logon := {|
    Account.username := username;
    Account.password := password;
  |} in
  match get accounts logon with
  | Some (account_info) =>
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1 ["Successful logon!\n"] []) ;;
    tt ;;
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1
        ["Name: ";"\n"]
        [_crate::fmt::ImplArgumentV1.new_display account_info.name]) ;;
    tt ;;
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1
        ["Email: ";"\n"]
        [_crate::fmt::ImplArgumentV1.new_display account_info.email]) ;;
    tt ;;
    tt
  | _ =>
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1 ["Login failed!\n"] []) ;;
    tt
  end.

Definition main (_ : unit) :=
  let accounts := ImplHashMap.new tt in
  let account := {|
    Account.username := "j.everyman";
    Account.password := "password123";
  |} in
  let account_info := {|
    AccountInfo.name := "John Everyman";
    AccountInfo.email := "j.everyman@email.com";
  |} in
  insert accounts account account_info ;;
  try_logon accounts "j.everyman" "psasword123" ;;
  try_logon accounts "j.everyman" "password123" ;;
  tt.