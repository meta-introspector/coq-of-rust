Require Import CoqOfRust.CoqOfRust.

Module  Mapping.
Section Mapping.
  Parameter t : Set -> Set -> Set.

  Context {K V : Set}.

  Parameter empty : t K V.
  Parameter get : K -> t K V -> option.Option.t V.
  Parameter insert : K -> V -> t K V -> t K V.

  Axiom get_empty : forall k,
    get k empty = option.Option.None.
  Axiom get_insert_eq : forall k v m,
    get k (insert k v m) = option.Option.Some v.
  Axiom get_insert_neq : forall k1 k2 v m,
    k1 <> k2 ->
    get k1 (insert k2 v m) = get k1 m.
End Mapping.
End Mapping.

Module  Impl_core_default_Default_for_lib_Mapping_t_K_V.
Section Impl_core_default_Default_for_lib_Mapping_t_K_V.
  Context {K V : Set}.
  
  Context
    {ℋ_0 : core.default.Default.Trait K}
    {ℋ_1 : core.default.Default.Trait V}.
  
  Definition Self : Set := Mapping.t K V.
  
  Definition default : M (M.Val (Mapping.t K V)) :=
    M.alloc Mapping.empty.
  
  Global Instance AssociatedFunction_default :
    Notations.DoubleColon Self "default" := {
    Notations.double_colon := default;
  }.
  
  Global Instance ℐ : core.default.Default.Trait Self := {
    core.default.Default.default := default;
  }.
End Impl_core_default_Default_for_lib_Mapping_t_K_V.
End Impl_core_default_Default_for_lib_Mapping_t_K_V.

Module  Impl_Mapping_t_K_V.
Section Impl_Mapping_t_K_V.
  Context {K V : Set}.
  
  Definition Self : Set := Mapping.t K V.
  
  Definition get
      (self : M.Val (ref Self))
      (key : M.Val (ref K))
      : M (M.Val (core.option.Option.t V)) :=
    let* self : M.Val Self := deref self in
    let* self : Self := M.read self in
    let* key : M.Val K := deref key in
    let* key : K := M.read key in
    M.alloc (Mapping.get key self).
  
  Global Instance AssociatedFunction_get :
    Notations.DoubleColon Self "get" := {
    Notations.double_colon := get;
  }.
  
  Definition insert
      (self : M.Val (mut_ref Self))
      (key : M.Val K)
      (value : M.Val V)
      : M (M.Val unit) :=
    let* self := deref self in
    let* key := M.read key in
    let* value := M.read value in
    let* self_content := M.read self in
    let new_self := Ref.Imm (Mapping.insert key value self_content) in
    assign self new_self.
  
  Global Instance AssociatedFunction_insert :
    Notations.DoubleColon Self "insert" := {
    Notations.double_colon := insert;
  }.
End Impl_Mapping_t_K_V.
End Impl_Mapping_t_K_V.