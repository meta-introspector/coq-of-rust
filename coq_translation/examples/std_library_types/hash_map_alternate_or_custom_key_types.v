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
  
  Definition eq (self : ref Self) (other : ref Account) : bool :=
    (self.["username"].["eq"] other.["username"]).["andb"]
      (self.["password"].["eq"] other.["password"]).
  
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
  
  Definition assert_receiver_is_total_eq (self : ref Self) : unit :=
    let '_ := tt in
    let '_ := tt in
    tt.
  
  Global Instance Method_assert_receiver_is_total_eq :
    Notation.Dot "assert_receiver_is_total_eq" := {
    Notation.dot := assert_receiver_is_total_eq;
  }.
  
  Global Instance I : _crate.cmp.Eq.Trait Self := {
  }.
End Impl__crate_cmp_Eq_for_Account.

Module Impl__crate_hash_Hash_for_Account.
  Definition Self := Account.
  
  Definition hash (self : ref Self) (state : mut_ref __H) : unit :=
    _crate.hash.Hash.hash self.["username"] state ;;
    _crate.hash.Hash.hash self.["password"] state.
  
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
    (password : ref str)
    : unit :=
  _crate.io._print
    (format_arguments::["new_v1"]
      [ "Username: "; "
" ]
      [ format_argument::["new_display"] username ]) ;;
  tt ;;
  _crate.io._print
    (format_arguments::["new_v1"]
      [ "Password: "; "
" ]
      [ format_argument::["new_display"] password ]) ;;
  tt ;;
  _crate.io._print
    (format_arguments::["new_const"] [ "Attempting logon...
" ]) ;;
  tt ;;
  let logon :=
    {| Account.username := username; Account.password := password; |} in
  match accounts.["get"] logon with
  | Some account_info =>
    _crate.io._print
      (format_arguments::["new_const"] [ "Successful logon!
" ]) ;;
    tt ;;
    _crate.io._print
      (format_arguments::["new_v1"]
        [ "Name: "; "
" ]
        [ format_argument::["new_display"] account_info.["name"] ]) ;;
    tt ;;
    _crate.io._print
      (format_arguments::["new_v1"]
        [ "Email: "; "
" ]
        [ format_argument::["new_display"] account_info.["email"] ]) ;;
    tt ;;
    tt
  | _ =>
    _crate.io._print (format_arguments::["new_const"] [ "Login failed!
" ]) ;;
    tt
  end.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : unit :=
  let accounts := HashMap::["new"] tt in
  let account :=
    {| Account.username := "j.everyman"; Account.password := "password123";
    |} in
  let account_info :=
    {|
      AccountInfo.name := "John Everyman";
      AccountInfo.email := "j.everyman@email.com";
    |} in
  accounts.["insert"] account account_info ;;
  try_logon accounts "j.everyman" "psasword123" ;;
  try_logon accounts "j.everyman" "password123" ;;
  tt.