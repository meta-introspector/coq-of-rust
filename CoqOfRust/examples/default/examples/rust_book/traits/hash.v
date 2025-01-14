(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Person.
Section Person.
  Record t : Set := {
    id : u32.t;
    name : alloc.string.String.t;
    phone : u64.t;
  }.
  
  Definition Get_id :=
    Ref.map (fun α => Some α.(id)) (fun β α => Some (α <| id := β |>)).
  Definition Get_name :=
    Ref.map (fun α => Some α.(name)) (fun β α => Some (α <| name := β |>)).
  Definition Get_phone :=
    Ref.map (fun α => Some α.(phone)) (fun β α => Some (α <| phone := β |>)).
End Person.
End Person.

Module  Impl_core_hash_Hash_for_hash_Person_t.
Section Impl_core_hash_Hash_for_hash_Person_t.
  Definition Self : Set := hash.Person.t.
  
  (*
  Hash
  *)
  Definition hash
      {__H : Set}
      {ℋ_0 : core.hash.Hasher.Trait __H}
      (self : ref Self)
      (state : mut_ref __H)
      : M unit :=
    let* self := M.alloc self in
    let* state := M.alloc state in
    let* _ : M.Val unit :=
      let* α0 : (ref u32.t) -> (mut_ref __H) -> M unit :=
        ltac:(M.get_method (fun ℐ =>
          core.hash.Hash.hash (Self := u32.t) (H := __H) (Trait := ℐ))) in
      let* α1 : ref hash.Person.t := M.read self in
      let* α2 : mut_ref __H := M.read state in
      let* α3 : unit :=
        M.call (α0 (borrow (hash.Person.Get_id (deref α1))) α2) in
      M.alloc α3 in
    let* _ : M.Val unit :=
      let* α0 : (ref alloc.string.String.t) -> (mut_ref __H) -> M unit :=
        ltac:(M.get_method (fun ℐ =>
          core.hash.Hash.hash
            (Self := alloc.string.String.t)
            (H := __H)
            (Trait := ℐ))) in
      let* α1 : ref hash.Person.t := M.read self in
      let* α2 : mut_ref __H := M.read state in
      let* α3 : unit :=
        M.call (α0 (borrow (hash.Person.Get_name (deref α1))) α2) in
      M.alloc α3 in
    let* α0 : (ref u64.t) -> (mut_ref __H) -> M unit :=
      ltac:(M.get_method (fun ℐ =>
        core.hash.Hash.hash (Self := u64.t) (H := __H) (Trait := ℐ))) in
    let* α1 : ref hash.Person.t := M.read self in
    let* α2 : mut_ref __H := M.read state in
    let* α3 : unit :=
      M.call (α0 (borrow (hash.Person.Get_phone (deref α1))) α2) in
    let* α0 : M.Val unit := M.alloc α3 in
    M.read α0.
  
  Global Instance AssociatedFunction_hash
      {__H : Set}
      {ℋ_0 : core.hash.Hasher.Trait __H} :
    Notations.DoubleColon Self "hash" := {
    Notations.double_colon := hash (__H := __H);
  }.
  
  Global Instance ℐ : core.hash.Hash.Required.Trait Self := {
    core.hash.Hash.hash {__H : Set} {ℋ_0 : core.hash.Hasher.Trait __H} :=
      hash (__H := __H);
    core.hash.Hash.hash_slice := Datatypes.None;
  }.
End Impl_core_hash_Hash_for_hash_Person_t.
End Impl_core_hash_Hash_for_hash_Person_t.

(*
fn calculate_hash<T: Hash>(t: &T) -> u64 {
    let mut s = DefaultHasher::new();
    t.hash(&mut s);
    s.finish()
}
*)
Definition calculate_hash
    {T : Set}
    {ℋ_0 : core.hash.Hash.Trait T}
    (t : ref T)
    : M u64.t :=
  let* t := M.alloc t in
  let* s : M.Val std.hash.random.DefaultHasher.t :=
    let* α0 : std.hash.random.DefaultHasher.t :=
      M.call std.hash.random.DefaultHasher.t::["new"] in
    M.alloc α0 in
  let* _ : M.Val unit :=
    let* α0 : (ref T) -> (mut_ref std.hash.random.DefaultHasher.t) -> M unit :=
      ltac:(M.get_method (fun ℐ =>
        core.hash.Hash.hash
          (Self := T)
          (H := std.hash.random.DefaultHasher.t)
          (Trait := ℐ))) in
    let* α1 : ref T := M.read t in
    let* α2 : unit := M.call (α0 α1 (borrow_mut s)) in
    M.alloc α2 in
  let* α0 : (ref std.hash.random.DefaultHasher.t) -> M u64.t :=
    ltac:(M.get_method (fun ℐ =>
      core.hash.Hasher.finish
        (Self := std.hash.random.DefaultHasher.t)
        (Trait := ℐ))) in
  let* α1 : u64.t := M.call (α0 (borrow s)) in
  let* α0 : M.Val u64.t := M.alloc α1 in
  M.read α0.

(*
fn main() {
    let person1 = Person {
        id: 5,
        name: "Janet".to_string(),
        phone: 555_666_7777,
    };
    let person2 = Person {
        id: 5,
        name: "Bob".to_string(),
        phone: 555_666_7777,
    };

    assert!(calculate_hash(&person1) != calculate_hash(&person2));
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* person1 : M.Val hash.Person.t :=
    let* α0 : (ref str.t) -> M alloc.string.String.t :=
      ltac:(M.get_method (fun ℐ =>
        alloc.string.ToString.to_string (Self := str.t) (Trait := ℐ))) in
    let* α1 : ref str.t := M.read (mk_str "Janet") in
    let* α2 : alloc.string.String.t := M.call (α0 α1) in
    M.alloc
      {|
        hash.Person.id := (Integer.of_Z 5) : u32.t;
        hash.Person.name := α2;
        hash.Person.phone := (Integer.of_Z 5556667777) : u64.t;
      |} in
  let* person2 : M.Val hash.Person.t :=
    let* α0 : (ref str.t) -> M alloc.string.String.t :=
      ltac:(M.get_method (fun ℐ =>
        alloc.string.ToString.to_string (Self := str.t) (Trait := ℐ))) in
    let* α1 : ref str.t := M.read (mk_str "Bob") in
    let* α2 : alloc.string.String.t := M.call (α0 α1) in
    M.alloc
      {|
        hash.Person.id := (Integer.of_Z 5) : u32.t;
        hash.Person.name := α2;
        hash.Person.phone := (Integer.of_Z 5556667777) : u64.t;
      |} in
  let* _ : M.Val unit :=
    let* α0 : u64.t := M.call (hash.calculate_hash (borrow person1)) in
    let* α1 : u64.t := M.call (hash.calculate_hash (borrow person2)) in
    let* α2 : M.Val bool.t := M.alloc (UnOp.not (BinOp.Pure.ne α0 α1)) in
    let* α3 : bool.t := M.read (use α2) in
    if α3 then
      let* α0 : ref str.t :=
        M.read
          (mk_str
            "assertion failed: calculate_hash(&person1) != calculate_hash(&person2)") in
      let* α1 : never.t := M.call (core.panicking.panic α0) in
      let* α2 : unit := never_to_any α1 in
      M.alloc α2
    else
      M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
