(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

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

Module
    Impl_core_marker_StructuralPartialEq_for_hash_map_alternate_or_custom_key_types_Account.
  Definition Self := hash_map_alternate_or_custom_key_types.Account.
  
  Global Instance I : core.marker.StructuralPartialEq.Trait Self :=
    core.marker.StructuralPartialEq.Build_Trait _.
End
  Impl_core_marker_StructuralPartialEq_for_hash_map_alternate_or_custom_key_types_Account.

Module
    Impl_core_cmp_PartialEq_for_hash_map_alternate_or_custom_key_types_Account.
  Definition Self := hash_map_alternate_or_custom_key_types.Account.
  
  Definition eq
      (self : ref Self)
      (other : ref hash_map_alternate_or_custom_key_types.Account)
      : M bool :=
    let* α0 := self.["username"].["eq"] other.["username"] in
    let* α1 := self.["password"].["eq"] other.["password"] in
    α0.["andb"] α1.
  
  Global Instance Method_eq : Notation.Dot "eq" := {
    Notation.dot := eq;
  }.
  
  Global Instance I : core.cmp.PartialEq.Trait Self := {
    core.cmp.PartialEq.eq := eq;
  }.
End Impl_core_cmp_PartialEq_for_hash_map_alternate_or_custom_key_types_Account.

Module
    Impl_core_marker_StructuralEq_for_hash_map_alternate_or_custom_key_types_Account.
  Definition Self := hash_map_alternate_or_custom_key_types.Account.
  
  Global Instance I : core.marker.StructuralEq.Trait Self :=
    core.marker.StructuralEq.Build_Trait _.
End
  Impl_core_marker_StructuralEq_for_hash_map_alternate_or_custom_key_types_Account.

Module Impl_core_cmp_Eq_for_hash_map_alternate_or_custom_key_types_Account.
  Definition Self := hash_map_alternate_or_custom_key_types.Account.
  
  Definition assert_receiver_is_total_eq (self : ref Self) : M unit :=
    let _ := tt in
    let _ := tt in
    Pure tt.
  
  Global Instance Method_assert_receiver_is_total_eq :
    Notation.Dot "assert_receiver_is_total_eq" := {
    Notation.dot := assert_receiver_is_total_eq;
  }.
  
  Global Instance I : core.cmp.Eq.Trait Self := {
  }.
End Impl_core_cmp_Eq_for_hash_map_alternate_or_custom_key_types_Account.

Module Impl_core_hash_Hash_for_hash_map_alternate_or_custom_key_types_Account.
  Definition Self := hash_map_alternate_or_custom_key_types.Account.
  
  Definition hash (self : ref Self) (state : mut_ref __H) : M unit :=
    let* _ := core.hash.Hash.hash (addr_of self.["username"]) state in
    core.hash.Hash.hash (addr_of self.["password"]) state.
  
  Global Instance Method_hash : Notation.Dot "hash" := {
    Notation.dot := hash;
  }.
  
  Global Instance I : core.hash.Hash.Trait Self := {
    core.hash.Hash.hash := hash;
  }.
End Impl_core_hash_Hash_for_hash_map_alternate_or_custom_key_types_Account.

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

Definition Accounts : Set :=
  std.collections.hash.map.HashMap
    hash_map_alternate_or_custom_key_types.Account
    hash_map_alternate_or_custom_key_types.AccountInfo.

Definition try_logon
    (accounts : ref hash_map_alternate_or_custom_key_types.Accounts)
    (username : ref str)
    (password : ref str)
    : M unit :=
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of username) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "Username: "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of password) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "Password: "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 :=
        format_arguments::["new_const"] (addr_of [ "Attempting logon...
" ]) in
      std.io.stdio._print α0 in
    Pure tt in
  let logon :=
    {|
      hash_map_alternate_or_custom_key_types.Account.username := username;
      hash_map_alternate_or_custom_key_types.Account.password := password;
    |} in
  let* α0 := accounts.["get"] (addr_of logon) in
  match α0 with
  | core.option.Option.Some account_info =>
    let* _ :=
      let* _ :=
        let* α0 :=
          format_arguments::["new_const"] (addr_of [ "Successful logon!
" ]) in
        std.io.stdio._print α0 in
      Pure tt in
    let* _ :=
      let* _ :=
        let* α0 :=
          format_argument::["new_display"] (addr_of account_info.["name"]) in
        let* α1 :=
          format_arguments::["new_v1"]
            (addr_of [ "Name: "; "
" ])
            (addr_of [ α0 ]) in
        std.io.stdio._print α1 in
      Pure tt in
    let* _ :=
      let* _ :=
        let* α0 :=
          format_argument::["new_display"] (addr_of account_info.["email"]) in
        let* α1 :=
          format_arguments::["new_v1"]
            (addr_of [ "Email: "; "
" ])
            (addr_of [ α0 ]) in
        std.io.stdio._print α1 in
      Pure tt in
    Pure tt
  | _ =>
    let* _ :=
      let* α0 :=
        format_arguments::["new_const"] (addr_of [ "Login failed!
" ]) in
      std.io.stdio._print α0 in
    Pure tt
  end.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let* accounts := std.collections.hash.map.HashMap::["new"] tt in
  let account :=
    {|
      hash_map_alternate_or_custom_key_types.Account.username := "j.everyman";
      hash_map_alternate_or_custom_key_types.Account.password := "password123";
    |} in
  let account_info :=
    {|
      hash_map_alternate_or_custom_key_types.AccountInfo.name :=
        "John Everyman";
      hash_map_alternate_or_custom_key_types.AccountInfo.email :=
        "j.everyman@email.com";
    |} in
  let* _ := accounts.["insert"] account account_info in
  let* _ :=
    hash_map_alternate_or_custom_key_types.try_logon
      (addr_of accounts)
      "j.everyman"
      "psasword123" in
  let* _ :=
    hash_map_alternate_or_custom_key_types.try_logon
      (addr_of accounts)
      "j.everyman"
      "password123" in
  Pure tt.
