(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module HashMap := std.collections.HashMap.
Definition HashMap := HashMap.t.

Module Account.
  Record t : Set := {
    username : ref str;
    password : ref str;
  }.
  
  Global Instance Get_username : Notation.Dot "username" := {
    Notation.dot '(Build_t x0 _) := x0;
  }.
  Global Instance Get_password : Notation.Dot "password" := {
    Notation.dot '(Build_t _ x1) := x1;
  }.
End Account.
Definition Account : Set := Account.t.

Module Impl__crate_marker_StructuralPartialEq_for_Account.
  Definition Self := Account.
  
  Global Instance I : _crate.marker.StructuralPartialEq.Trait Self :=
    _crate.marker.StructuralPartialEq.Build_Class _.
End Impl__crate_marker_StructuralPartialEq_for_Account.

Module Impl__crate_cmp_PartialEq_for_Account.
  Definition Self := Account.
  
  Definition eq (self : ref Self) (other : ref Account) :=
    let return_type := bool in
    ltac:(function (
      self.["username"].["eq"](| other.["username"] |).["andb"](|
        self.["password"].["eq"](| other.["password"] |)
      |)
    : return_type)).
  
  Global Instance Method_eq : Notation.Dot "eq" := {
    Notation.dot := eq;
  }.
  
  Global Instance I : _crate.cmp.PartialEq.Trait Self := {
    _crate.cmp.PartialEq.eq := eq;
  }.
End Impl__crate_cmp_PartialEq_for_Account.

Module Impl__crate_marker_StructuralEq_for_Account.
  Definition Self := Account.
  
  Global Instance I : _crate.marker.StructuralEq.Trait Self :=
    _crate.marker.StructuralEq.Build_Class _.
End Impl__crate_marker_StructuralEq_for_Account.

Module Impl__crate_cmp_Eq_for_Account.
  Definition Self := Account.
  
  Definition assert_receiver_is_total_eq (self : ref Self) :=
    let return_type := unit in
    ltac:(function (
      let '_ := tt in
      let '_ := tt in
      tt
    : return_type)).
  
  Global Instance Method_assert_receiver_is_total_eq :
    Notation.Dot "assert_receiver_is_total_eq" := {
    Notation.dot := assert_receiver_is_total_eq;
  }.
  
  Global Instance I : _crate.cmp.Eq.Trait Self := {
  }.
End Impl__crate_cmp_Eq_for_Account.

Module Impl__crate_hash_Hash_for_Account.
  Definition Self := Account.
  
  Definition hash (self : ref Self) (state : mut_ref __H) :=
    let return_type := unit in
    ltac:(function (
      let _ : unit := _crate.hash.Hash.hash(| self.["username"], state |) in
      _crate.hash.Hash.hash(| self.["password"], state |)
    : return_type)).
  
  Global Instance Method_hash : Notation.Dot "hash" := {
    Notation.dot := hash;
  }.
  
  Global Instance I : _crate.hash.Hash.Trait Self := {
    _crate.hash.Hash.hash := hash;
  }.
End Impl__crate_hash_Hash_for_Account.

Module AccountInfo.
  Record t : Set := {
    name : ref str;
    email : ref str;
  }.
  
  Global Instance Get_name : Notation.Dot "name" := {
    Notation.dot '(Build_t x0 _) := x0;
  }.
  Global Instance Get_email : Notation.Dot "email" := {
    Notation.dot '(Build_t _ x1) := x1;
  }.
End AccountInfo.
Definition AccountInfo : Set := AccountInfo.t.

Definition Accounts : Set := HashMap Account AccountInfo.

Definition try_logon
    (accounts : ref Accounts)
    (username : ref str)
    (password : ref str) :=
  let return_type := unit in
  ltac:(function (
    let _ : unit :=
      let _ : unit :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "Username: "; "
" ],
            [ format_argument::["new_display"](| username |) ]
          |)
        |) in
      tt in
    let _ : unit :=
      let _ : unit :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "Password: "; "
" ],
            [ format_argument::["new_display"](| password |) ]
          |)
        |) in
      tt in
    let _ : unit :=
      let _ : unit :=
        _crate.io._print(|
          format_arguments::["new_const"](| [ "Attempting logon...
" ] |)
        |) in
      tt in
    let logon :=
      {| Account.username := username; Account.password := password; |} in
    match accounts.["get"](| logon |) with
    | Some account_info =>
      let _ : unit :=
        let _ : unit :=
          _crate.io._print(|
            format_arguments::["new_const"](| [ "Successful logon!
" ] |)
          |) in
        tt in
      let _ : unit :=
        let _ : unit :=
          _crate.io._print(|
            format_arguments::["new_v1"](|
              [ "Name: "; "
" ],
              [ format_argument::["new_display"](| account_info.["name"] |) ]
            |)
          |) in
        tt in
      let _ : unit :=
        let _ : unit :=
          _crate.io._print(|
            format_arguments::["new_v1"](|
              [ "Email: "; "
" ],
              [ format_argument::["new_display"](| account_info.["email"] |) ]
            |)
          |) in
        tt in
      tt
    | _ =>
      let _ : unit :=
        _crate.io._print(|
          format_arguments::["new_const"](| [ "Login failed!
" ] |)
        |) in
      tt
    end
  : return_type)).

Definition main :=
  let return_type := unit in
  ltac:(function (
    let accounts := HashMap::["new"](||) in
    let account :=
      {| Account.username := "j.everyman"; Account.password := "password123";
      |} in
    let account_info :=
      {|
        AccountInfo.name := "John Everyman";
        AccountInfo.email := "j.everyman@email.com";
      |} in
    let _ : unit := accounts.["insert"](| account, account_info |) in
    let _ : unit := try_logon(| accounts, "j.everyman", "psasword123" |) in
    let _ : unit := try_logon(| accounts, "j.everyman", "password123" |) in
    tt
  : return_type)).
