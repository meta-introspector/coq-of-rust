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
  
  Definition eq (self : ref Self) (other : ref Account) : M bool :=
    let* α0 := self.["username"].["eq"] other.["username"] in
    let* α1 := self.["password"].["eq"] other.["password"] in
    α0.["andb"] α1.
  
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
  
  Definition assert_receiver_is_total_eq (self : ref Self) : M unit :=
    let _ := tt in
    let _ := tt in
    Pure tt.
  
  Global Instance Method_assert_receiver_is_total_eq :
    Notation.Dot "assert_receiver_is_total_eq" := {
    Notation.dot := assert_receiver_is_total_eq;
  }.
  
  Global Instance I : _crate.cmp.Eq.Trait Self := {
  }.
End Impl__crate_cmp_Eq_for_Account.

Module Impl__crate_hash_Hash_for_Account.
  Definition Self := Account.
  
  Definition hash (self : ref Self) (state : mut_ref __H) : M unit :=
    let* _ := _crate.hash.Hash.hash (deref self.["username"]) state in
    _crate.hash.Hash.hash (deref self.["password"]) state.
  
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
    : M unit :=
  let* α0 := format_argument::["new_display"] (deref username) in
  let* α1 :=
    format_arguments::["new_v1"] (deref [ "Username: "; "
" ]) (deref [ α0 ]) in
  let* _ := _crate.io._print α1 in
  let _ := tt in
  let* α2 := format_argument::["new_display"] (deref password) in
  let* α3 :=
    format_arguments::["new_v1"] (deref [ "Password: "; "
" ]) (deref [ α2 ]) in
  let* _ := _crate.io._print α3 in
  let _ := tt in
  let* α4 :=
    format_arguments::["new_const"] (deref [ "Attempting logon...
" ]) in
  let* _ := _crate.io._print α4 in
  let _ := tt in
  let logon :=
    {| Account.username := username; Account.password := password; |} in
  let* α5 := accounts.["get"] (deref logon) in
  match α5 with
  | Some account_info =>
    let* α0 :=
      format_arguments::["new_const"] (deref [ "Successful logon!
" ]) in
    let* _ := _crate.io._print α0 in
    let _ := tt in
    let* α1 := format_argument::["new_display"] (deref account_info.["name"]) in
    let* α2 :=
      format_arguments::["new_v1"] (deref [ "Name: "; "
" ]) (deref [ α1 ]) in
    let* _ := _crate.io._print α2 in
    let _ := tt in
    let* α3 :=
      format_argument::["new_display"] (deref account_info.["email"]) in
    let* α4 :=
      format_arguments::["new_v1"] (deref [ "Email: "; "
" ]) (deref [ α3 ]) in
    let* _ := _crate.io._print α4 in
    let _ := tt in
    Pure tt
  | _ =>
    let* α0 := format_arguments::["new_const"] (deref [ "Login failed!
" ]) in
    let* _ := _crate.io._print α0 in
    Pure tt
  end.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let* accounts := HashMap::["new"] tt in
  let account :=
    {| Account.username := "j.everyman"; Account.password := "password123";
    |} in
  let account_info :=
    {|
      AccountInfo.name := "John Everyman";
      AccountInfo.email := "j.everyman@email.com";
    |} in
  let* _ := accounts.["insert"] account account_info in
  let* _ := try_logon (deref accounts) "j.everyman" "psasword123" in
  let* _ := try_logon (deref accounts) "j.everyman" "password123" in
  Pure tt.
