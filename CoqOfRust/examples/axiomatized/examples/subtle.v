(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Choice.
Section Choice.
  Record t : Set := {
    x0 : u8.t;
  }.
  
  Definition Get_0 :=
    Ref.map (fun α => Some α.(x0)) (fun β α => Some (α <| x0 := β |>)).
End Choice.
End Choice.

Module  Impl_core_marker_Copy_for_subtle_Choice_t.
Section Impl_core_marker_Copy_for_subtle_Choice_t.
  Definition Self : Set := subtle.Choice.t.
  
  Global Instance ℐ : core.marker.Copy.Trait Self := {
  }.
End Impl_core_marker_Copy_for_subtle_Choice_t.
End Impl_core_marker_Copy_for_subtle_Choice_t.

Module  Impl_core_clone_Clone_for_subtle_Choice_t.
Section Impl_core_clone_Clone_for_subtle_Choice_t.
  Definition Self : Set := subtle.Choice.t.
  
  Parameter clone : (ref Self) -> M subtle.Choice.t.
  
  Global Instance AssociatedFunction_clone :
    Notations.DoubleColon Self "clone" := {
    Notations.double_colon := clone;
  }.
  
  Global Instance ℐ : core.clone.Clone.Required.Trait Self := {
    core.clone.Clone.clone := clone;
    core.clone.Clone.clone_from := Datatypes.None;
  }.
End Impl_core_clone_Clone_for_subtle_Choice_t.
End Impl_core_clone_Clone_for_subtle_Choice_t.

Module  Impl_core_fmt_Debug_for_subtle_Choice_t.
Section Impl_core_fmt_Debug_for_subtle_Choice_t.
  Definition Self : Set := subtle.Choice.t.
  
  Parameter fmt :
      (ref Self) -> (mut_ref core.fmt.Formatter.t) -> M ltac:(core.fmt.Result).
  
  Global Instance AssociatedFunction_fmt : Notations.DoubleColon Self "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_subtle_Choice_t.
End Impl_core_fmt_Debug_for_subtle_Choice_t.

Module  Impl_subtle_Choice_t.
Section Impl_subtle_Choice_t.
  Definition Self : Set := subtle.Choice.t.
  
  Parameter unwrap_u8 : (ref Self) -> M u8.t.
  
  Global Instance AssociatedFunction_unwrap_u8 :
    Notations.DoubleColon Self "unwrap_u8" := {
    Notations.double_colon := unwrap_u8;
  }.
End Impl_subtle_Choice_t.
End Impl_subtle_Choice_t.

Module  Impl_core_convert_From_subtle_Choice_t_for_bool_t.
Section Impl_core_convert_From_subtle_Choice_t_for_bool_t.
  Definition Self : Set := bool.t.
  
  Parameter from : subtle.Choice.t -> M bool.t.
  
  Global Instance AssociatedFunction_from :
    Notations.DoubleColon Self "from" := {
    Notations.double_colon := from;
  }.
  
  Global Instance ℐ : core.convert.From.Trait Self (T := subtle.Choice.t) := {
    core.convert.From.from := from;
  }.
End Impl_core_convert_From_subtle_Choice_t_for_bool_t.
End Impl_core_convert_From_subtle_Choice_t_for_bool_t.

Module  Impl_core_ops_bit_BitAnd_for_subtle_Choice_t.
Section Impl_core_ops_bit_BitAnd_for_subtle_Choice_t.
  Definition Self : Set := subtle.Choice.t.
  
  Definition Output : Set := subtle.Choice.t.
  
  Parameter bitand : Self -> subtle.Choice.t -> M subtle.Choice.t.
  
  Global Instance AssociatedFunction_bitand :
    Notations.DoubleColon Self "bitand" := {
    Notations.double_colon := bitand;
  }.
  
  Global Instance ℐ :
    core.ops.bit.BitAnd.Trait Self
      (Rhs := core.ops.bit.BitAnd.Default.Rhs Self) := {
    core.ops.bit.BitAnd.Output := Output;
    core.ops.bit.BitAnd.bitand := bitand;
  }.
End Impl_core_ops_bit_BitAnd_for_subtle_Choice_t.
End Impl_core_ops_bit_BitAnd_for_subtle_Choice_t.

Module  Impl_core_ops_bit_BitAndAssign_for_subtle_Choice_t.
Section Impl_core_ops_bit_BitAndAssign_for_subtle_Choice_t.
  Definition Self : Set := subtle.Choice.t.
  
  Parameter bitand_assign : (mut_ref Self) -> subtle.Choice.t -> M unit.
  
  Global Instance AssociatedFunction_bitand_assign :
    Notations.DoubleColon Self "bitand_assign" := {
    Notations.double_colon := bitand_assign;
  }.
  
  Global Instance ℐ :
    core.ops.bit.BitAndAssign.Trait Self
      (Rhs := core.ops.bit.BitAndAssign.Default.Rhs Self) := {
    core.ops.bit.BitAndAssign.bitand_assign := bitand_assign;
  }.
End Impl_core_ops_bit_BitAndAssign_for_subtle_Choice_t.
End Impl_core_ops_bit_BitAndAssign_for_subtle_Choice_t.

Module  Impl_core_ops_bit_BitOr_for_subtle_Choice_t.
Section Impl_core_ops_bit_BitOr_for_subtle_Choice_t.
  Definition Self : Set := subtle.Choice.t.
  
  Definition Output : Set := subtle.Choice.t.
  
  Parameter bitor : Self -> subtle.Choice.t -> M subtle.Choice.t.
  
  Global Instance AssociatedFunction_bitor :
    Notations.DoubleColon Self "bitor" := {
    Notations.double_colon := bitor;
  }.
  
  Global Instance ℐ :
    core.ops.bit.BitOr.Trait Self
      (Rhs := core.ops.bit.BitOr.Default.Rhs Self) := {
    core.ops.bit.BitOr.Output := Output;
    core.ops.bit.BitOr.bitor := bitor;
  }.
End Impl_core_ops_bit_BitOr_for_subtle_Choice_t.
End Impl_core_ops_bit_BitOr_for_subtle_Choice_t.

Module  Impl_core_ops_bit_BitOrAssign_for_subtle_Choice_t.
Section Impl_core_ops_bit_BitOrAssign_for_subtle_Choice_t.
  Definition Self : Set := subtle.Choice.t.
  
  Parameter bitor_assign : (mut_ref Self) -> subtle.Choice.t -> M unit.
  
  Global Instance AssociatedFunction_bitor_assign :
    Notations.DoubleColon Self "bitor_assign" := {
    Notations.double_colon := bitor_assign;
  }.
  
  Global Instance ℐ :
    core.ops.bit.BitOrAssign.Trait Self
      (Rhs := core.ops.bit.BitOrAssign.Default.Rhs Self) := {
    core.ops.bit.BitOrAssign.bitor_assign := bitor_assign;
  }.
End Impl_core_ops_bit_BitOrAssign_for_subtle_Choice_t.
End Impl_core_ops_bit_BitOrAssign_for_subtle_Choice_t.

Module  Impl_core_ops_bit_BitXor_for_subtle_Choice_t.
Section Impl_core_ops_bit_BitXor_for_subtle_Choice_t.
  Definition Self : Set := subtle.Choice.t.
  
  Definition Output : Set := subtle.Choice.t.
  
  Parameter bitxor : Self -> subtle.Choice.t -> M subtle.Choice.t.
  
  Global Instance AssociatedFunction_bitxor :
    Notations.DoubleColon Self "bitxor" := {
    Notations.double_colon := bitxor;
  }.
  
  Global Instance ℐ :
    core.ops.bit.BitXor.Trait Self
      (Rhs := core.ops.bit.BitXor.Default.Rhs Self) := {
    core.ops.bit.BitXor.Output := Output;
    core.ops.bit.BitXor.bitxor := bitxor;
  }.
End Impl_core_ops_bit_BitXor_for_subtle_Choice_t.
End Impl_core_ops_bit_BitXor_for_subtle_Choice_t.

Module  Impl_core_ops_bit_BitXorAssign_for_subtle_Choice_t.
Section Impl_core_ops_bit_BitXorAssign_for_subtle_Choice_t.
  Definition Self : Set := subtle.Choice.t.
  
  Parameter bitxor_assign : (mut_ref Self) -> subtle.Choice.t -> M unit.
  
  Global Instance AssociatedFunction_bitxor_assign :
    Notations.DoubleColon Self "bitxor_assign" := {
    Notations.double_colon := bitxor_assign;
  }.
  
  Global Instance ℐ :
    core.ops.bit.BitXorAssign.Trait Self
      (Rhs := core.ops.bit.BitXorAssign.Default.Rhs Self) := {
    core.ops.bit.BitXorAssign.bitxor_assign := bitxor_assign;
  }.
End Impl_core_ops_bit_BitXorAssign_for_subtle_Choice_t.
End Impl_core_ops_bit_BitXorAssign_for_subtle_Choice_t.

Module  Impl_core_ops_bit_Not_for_subtle_Choice_t.
Section Impl_core_ops_bit_Not_for_subtle_Choice_t.
  Definition Self : Set := subtle.Choice.t.
  
  Definition Output : Set := subtle.Choice.t.
  
  Parameter not : Self -> M subtle.Choice.t.
  
  Global Instance AssociatedFunction_not : Notations.DoubleColon Self "not" := {
    Notations.double_colon := not;
  }.
  
  Global Instance ℐ : core.ops.bit.Not.Trait Self := {
    core.ops.bit.Not.Output := Output;
    core.ops.bit.Not.not := not;
  }.
End Impl_core_ops_bit_Not_for_subtle_Choice_t.
End Impl_core_ops_bit_Not_for_subtle_Choice_t.

Parameter black_box : u8.t -> M u8.t.

Module  Impl_core_convert_From_u8_t_for_subtle_Choice_t.
Section Impl_core_convert_From_u8_t_for_subtle_Choice_t.
  Definition Self : Set := subtle.Choice.t.
  
  Parameter from : u8.t -> M subtle.Choice.t.
  
  Global Instance AssociatedFunction_from :
    Notations.DoubleColon Self "from" := {
    Notations.double_colon := from;
  }.
  
  Global Instance ℐ : core.convert.From.Trait Self (T := u8.t) := {
    core.convert.From.from := from;
  }.
End Impl_core_convert_From_u8_t_for_subtle_Choice_t.
End Impl_core_convert_From_u8_t_for_subtle_Choice_t.

Module  ConstantTimeEq.
Section ConstantTimeEq.
  Class Trait (Self : Set) : Type := {
    ct_eq : (ref Self) -> (ref Self) -> M subtle.Choice.t;
  }.
  
End ConstantTimeEq.
End ConstantTimeEq.

Module  Impl_subtle_ConstantTimeEq_for_slice_T.
Section Impl_subtle_ConstantTimeEq_for_slice_T.
  Context {T : Set}.
  
  Definition Self : Set := slice T.
  
  Parameter ct_eq : (ref Self) -> (ref (slice T)) -> M subtle.Choice.t.
  
  Global Instance AssociatedFunction_ct_eq :
    Notations.DoubleColon Self "ct_eq" := {
    Notations.double_colon := ct_eq;
  }.
  
  Global Instance ℐ : subtle.ConstantTimeEq.Required.Trait Self := {
    subtle.ConstantTimeEq.ct_eq := ct_eq;
    subtle.ConstantTimeEq.ct_ne := Datatypes.None;
  }.
End Impl_subtle_ConstantTimeEq_for_slice_T.
End Impl_subtle_ConstantTimeEq_for_slice_T.

Module  Impl_subtle_ConstantTimeEq_for_subtle_Choice_t.
Section Impl_subtle_ConstantTimeEq_for_subtle_Choice_t.
  Definition Self : Set := subtle.Choice.t.
  
  Parameter ct_eq : (ref Self) -> (ref subtle.Choice.t) -> M subtle.Choice.t.
  
  Global Instance AssociatedFunction_ct_eq :
    Notations.DoubleColon Self "ct_eq" := {
    Notations.double_colon := ct_eq;
  }.
  
  Global Instance ℐ : subtle.ConstantTimeEq.Required.Trait Self := {
    subtle.ConstantTimeEq.ct_eq := ct_eq;
    subtle.ConstantTimeEq.ct_ne := Datatypes.None;
  }.
End Impl_subtle_ConstantTimeEq_for_subtle_Choice_t.
End Impl_subtle_ConstantTimeEq_for_subtle_Choice_t.

Module  Impl_subtle_ConstantTimeEq_for_u8_t.
Section Impl_subtle_ConstantTimeEq_for_u8_t.
  Definition Self : Set := u8.t.
  
  Parameter ct_eq : (ref Self) -> (ref u8.t) -> M subtle.Choice.t.
  
  Global Instance AssociatedFunction_ct_eq :
    Notations.DoubleColon Self "ct_eq" := {
    Notations.double_colon := ct_eq;
  }.
  
  Global Instance ℐ : subtle.ConstantTimeEq.Required.Trait Self := {
    subtle.ConstantTimeEq.ct_eq := ct_eq;
    subtle.ConstantTimeEq.ct_ne := Datatypes.None;
  }.
End Impl_subtle_ConstantTimeEq_for_u8_t.
End Impl_subtle_ConstantTimeEq_for_u8_t.

Module  Impl_subtle_ConstantTimeEq_for_i8_t.
Section Impl_subtle_ConstantTimeEq_for_i8_t.
  Definition Self : Set := i8.t.
  
  Parameter ct_eq : (ref Self) -> (ref i8.t) -> M subtle.Choice.t.
  
  Global Instance AssociatedFunction_ct_eq :
    Notations.DoubleColon Self "ct_eq" := {
    Notations.double_colon := ct_eq;
  }.
  
  Global Instance ℐ : subtle.ConstantTimeEq.Required.Trait Self := {
    subtle.ConstantTimeEq.ct_eq := ct_eq;
    subtle.ConstantTimeEq.ct_ne := Datatypes.None;
  }.
End Impl_subtle_ConstantTimeEq_for_i8_t.
End Impl_subtle_ConstantTimeEq_for_i8_t.

Module  Impl_subtle_ConstantTimeEq_for_u16_t.
Section Impl_subtle_ConstantTimeEq_for_u16_t.
  Definition Self : Set := u16.t.
  
  Parameter ct_eq : (ref Self) -> (ref u16.t) -> M subtle.Choice.t.
  
  Global Instance AssociatedFunction_ct_eq :
    Notations.DoubleColon Self "ct_eq" := {
    Notations.double_colon := ct_eq;
  }.
  
  Global Instance ℐ : subtle.ConstantTimeEq.Required.Trait Self := {
    subtle.ConstantTimeEq.ct_eq := ct_eq;
    subtle.ConstantTimeEq.ct_ne := Datatypes.None;
  }.
End Impl_subtle_ConstantTimeEq_for_u16_t.
End Impl_subtle_ConstantTimeEq_for_u16_t.

Module  Impl_subtle_ConstantTimeEq_for_i16_t.
Section Impl_subtle_ConstantTimeEq_for_i16_t.
  Definition Self : Set := i16.t.
  
  Parameter ct_eq : (ref Self) -> (ref i16.t) -> M subtle.Choice.t.
  
  Global Instance AssociatedFunction_ct_eq :
    Notations.DoubleColon Self "ct_eq" := {
    Notations.double_colon := ct_eq;
  }.
  
  Global Instance ℐ : subtle.ConstantTimeEq.Required.Trait Self := {
    subtle.ConstantTimeEq.ct_eq := ct_eq;
    subtle.ConstantTimeEq.ct_ne := Datatypes.None;
  }.
End Impl_subtle_ConstantTimeEq_for_i16_t.
End Impl_subtle_ConstantTimeEq_for_i16_t.

Module  Impl_subtle_ConstantTimeEq_for_u32_t.
Section Impl_subtle_ConstantTimeEq_for_u32_t.
  Definition Self : Set := u32.t.
  
  Parameter ct_eq : (ref Self) -> (ref u32.t) -> M subtle.Choice.t.
  
  Global Instance AssociatedFunction_ct_eq :
    Notations.DoubleColon Self "ct_eq" := {
    Notations.double_colon := ct_eq;
  }.
  
  Global Instance ℐ : subtle.ConstantTimeEq.Required.Trait Self := {
    subtle.ConstantTimeEq.ct_eq := ct_eq;
    subtle.ConstantTimeEq.ct_ne := Datatypes.None;
  }.
End Impl_subtle_ConstantTimeEq_for_u32_t.
End Impl_subtle_ConstantTimeEq_for_u32_t.

Module  Impl_subtle_ConstantTimeEq_for_i32_t.
Section Impl_subtle_ConstantTimeEq_for_i32_t.
  Definition Self : Set := i32.t.
  
  Parameter ct_eq : (ref Self) -> (ref i32.t) -> M subtle.Choice.t.
  
  Global Instance AssociatedFunction_ct_eq :
    Notations.DoubleColon Self "ct_eq" := {
    Notations.double_colon := ct_eq;
  }.
  
  Global Instance ℐ : subtle.ConstantTimeEq.Required.Trait Self := {
    subtle.ConstantTimeEq.ct_eq := ct_eq;
    subtle.ConstantTimeEq.ct_ne := Datatypes.None;
  }.
End Impl_subtle_ConstantTimeEq_for_i32_t.
End Impl_subtle_ConstantTimeEq_for_i32_t.

Module  Impl_subtle_ConstantTimeEq_for_u64_t.
Section Impl_subtle_ConstantTimeEq_for_u64_t.
  Definition Self : Set := u64.t.
  
  Parameter ct_eq : (ref Self) -> (ref u64.t) -> M subtle.Choice.t.
  
  Global Instance AssociatedFunction_ct_eq :
    Notations.DoubleColon Self "ct_eq" := {
    Notations.double_colon := ct_eq;
  }.
  
  Global Instance ℐ : subtle.ConstantTimeEq.Required.Trait Self := {
    subtle.ConstantTimeEq.ct_eq := ct_eq;
    subtle.ConstantTimeEq.ct_ne := Datatypes.None;
  }.
End Impl_subtle_ConstantTimeEq_for_u64_t.
End Impl_subtle_ConstantTimeEq_for_u64_t.

Module  Impl_subtle_ConstantTimeEq_for_i64_t.
Section Impl_subtle_ConstantTimeEq_for_i64_t.
  Definition Self : Set := i64.t.
  
  Parameter ct_eq : (ref Self) -> (ref i64.t) -> M subtle.Choice.t.
  
  Global Instance AssociatedFunction_ct_eq :
    Notations.DoubleColon Self "ct_eq" := {
    Notations.double_colon := ct_eq;
  }.
  
  Global Instance ℐ : subtle.ConstantTimeEq.Required.Trait Self := {
    subtle.ConstantTimeEq.ct_eq := ct_eq;
    subtle.ConstantTimeEq.ct_ne := Datatypes.None;
  }.
End Impl_subtle_ConstantTimeEq_for_i64_t.
End Impl_subtle_ConstantTimeEq_for_i64_t.

Module  Impl_subtle_ConstantTimeEq_for_usize_t.
Section Impl_subtle_ConstantTimeEq_for_usize_t.
  Definition Self : Set := usize.t.
  
  Parameter ct_eq : (ref Self) -> (ref usize.t) -> M subtle.Choice.t.
  
  Global Instance AssociatedFunction_ct_eq :
    Notations.DoubleColon Self "ct_eq" := {
    Notations.double_colon := ct_eq;
  }.
  
  Global Instance ℐ : subtle.ConstantTimeEq.Required.Trait Self := {
    subtle.ConstantTimeEq.ct_eq := ct_eq;
    subtle.ConstantTimeEq.ct_ne := Datatypes.None;
  }.
End Impl_subtle_ConstantTimeEq_for_usize_t.
End Impl_subtle_ConstantTimeEq_for_usize_t.

Module  Impl_subtle_ConstantTimeEq_for_isize_t.
Section Impl_subtle_ConstantTimeEq_for_isize_t.
  Definition Self : Set := isize.t.
  
  Parameter ct_eq : (ref Self) -> (ref isize.t) -> M subtle.Choice.t.
  
  Global Instance AssociatedFunction_ct_eq :
    Notations.DoubleColon Self "ct_eq" := {
    Notations.double_colon := ct_eq;
  }.
  
  Global Instance ℐ : subtle.ConstantTimeEq.Required.Trait Self := {
    subtle.ConstantTimeEq.ct_eq := ct_eq;
    subtle.ConstantTimeEq.ct_ne := Datatypes.None;
  }.
End Impl_subtle_ConstantTimeEq_for_isize_t.
End Impl_subtle_ConstantTimeEq_for_isize_t.

Module  ConditionallySelectable.
Section ConditionallySelectable.
  Class Trait (Self : Set) : Type := {
    conditional_select : (ref Self) -> (ref Self) -> subtle.Choice.t -> M Self;
  }.
  
End ConditionallySelectable.
End ConditionallySelectable.

Module  Impl_subtle_ConditionallySelectable_for_u8_t.
Section Impl_subtle_ConditionallySelectable_for_u8_t.
  Definition Self : Set := u8.t.
  
  Parameter conditional_select :
      (ref Self) -> (ref Self) -> subtle.Choice.t -> M Self.
  
  Global Instance AssociatedFunction_conditional_select :
    Notations.DoubleColon Self "conditional_select" := {
    Notations.double_colon := conditional_select;
  }.
  
  Parameter conditional_assign :
      (mut_ref Self) -> (ref Self) -> subtle.Choice.t -> M unit.
  
  Global Instance AssociatedFunction_conditional_assign :
    Notations.DoubleColon Self "conditional_assign" := {
    Notations.double_colon := conditional_assign;
  }.
  
  Parameter conditional_swap :
      (mut_ref Self) -> (mut_ref Self) -> subtle.Choice.t -> M unit.
  
  Global Instance AssociatedFunction_conditional_swap :
    Notations.DoubleColon Self "conditional_swap" := {
    Notations.double_colon := conditional_swap;
  }.
  
  Global Instance ℐ : subtle.ConditionallySelectable.Required.Trait Self := {
    subtle.ConditionallySelectable.conditional_select := conditional_select;
    subtle.ConditionallySelectable.conditional_assign :=
      Datatypes.Some conditional_assign;
    subtle.ConditionallySelectable.conditional_swap :=
      Datatypes.Some conditional_swap;
  }.
End Impl_subtle_ConditionallySelectable_for_u8_t.
End Impl_subtle_ConditionallySelectable_for_u8_t.

Module  Impl_subtle_ConditionallySelectable_for_i8_t.
Section Impl_subtle_ConditionallySelectable_for_i8_t.
  Definition Self : Set := i8.t.
  
  Parameter conditional_select :
      (ref Self) -> (ref Self) -> subtle.Choice.t -> M Self.
  
  Global Instance AssociatedFunction_conditional_select :
    Notations.DoubleColon Self "conditional_select" := {
    Notations.double_colon := conditional_select;
  }.
  
  Parameter conditional_assign :
      (mut_ref Self) -> (ref Self) -> subtle.Choice.t -> M unit.
  
  Global Instance AssociatedFunction_conditional_assign :
    Notations.DoubleColon Self "conditional_assign" := {
    Notations.double_colon := conditional_assign;
  }.
  
  Parameter conditional_swap :
      (mut_ref Self) -> (mut_ref Self) -> subtle.Choice.t -> M unit.
  
  Global Instance AssociatedFunction_conditional_swap :
    Notations.DoubleColon Self "conditional_swap" := {
    Notations.double_colon := conditional_swap;
  }.
  
  Global Instance ℐ : subtle.ConditionallySelectable.Required.Trait Self := {
    subtle.ConditionallySelectable.conditional_select := conditional_select;
    subtle.ConditionallySelectable.conditional_assign :=
      Datatypes.Some conditional_assign;
    subtle.ConditionallySelectable.conditional_swap :=
      Datatypes.Some conditional_swap;
  }.
End Impl_subtle_ConditionallySelectable_for_i8_t.
End Impl_subtle_ConditionallySelectable_for_i8_t.

Module  Impl_subtle_ConditionallySelectable_for_u16_t.
Section Impl_subtle_ConditionallySelectable_for_u16_t.
  Definition Self : Set := u16.t.
  
  Parameter conditional_select :
      (ref Self) -> (ref Self) -> subtle.Choice.t -> M Self.
  
  Global Instance AssociatedFunction_conditional_select :
    Notations.DoubleColon Self "conditional_select" := {
    Notations.double_colon := conditional_select;
  }.
  
  Parameter conditional_assign :
      (mut_ref Self) -> (ref Self) -> subtle.Choice.t -> M unit.
  
  Global Instance AssociatedFunction_conditional_assign :
    Notations.DoubleColon Self "conditional_assign" := {
    Notations.double_colon := conditional_assign;
  }.
  
  Parameter conditional_swap :
      (mut_ref Self) -> (mut_ref Self) -> subtle.Choice.t -> M unit.
  
  Global Instance AssociatedFunction_conditional_swap :
    Notations.DoubleColon Self "conditional_swap" := {
    Notations.double_colon := conditional_swap;
  }.
  
  Global Instance ℐ : subtle.ConditionallySelectable.Required.Trait Self := {
    subtle.ConditionallySelectable.conditional_select := conditional_select;
    subtle.ConditionallySelectable.conditional_assign :=
      Datatypes.Some conditional_assign;
    subtle.ConditionallySelectable.conditional_swap :=
      Datatypes.Some conditional_swap;
  }.
End Impl_subtle_ConditionallySelectable_for_u16_t.
End Impl_subtle_ConditionallySelectable_for_u16_t.

Module  Impl_subtle_ConditionallySelectable_for_i16_t.
Section Impl_subtle_ConditionallySelectable_for_i16_t.
  Definition Self : Set := i16.t.
  
  Parameter conditional_select :
      (ref Self) -> (ref Self) -> subtle.Choice.t -> M Self.
  
  Global Instance AssociatedFunction_conditional_select :
    Notations.DoubleColon Self "conditional_select" := {
    Notations.double_colon := conditional_select;
  }.
  
  Parameter conditional_assign :
      (mut_ref Self) -> (ref Self) -> subtle.Choice.t -> M unit.
  
  Global Instance AssociatedFunction_conditional_assign :
    Notations.DoubleColon Self "conditional_assign" := {
    Notations.double_colon := conditional_assign;
  }.
  
  Parameter conditional_swap :
      (mut_ref Self) -> (mut_ref Self) -> subtle.Choice.t -> M unit.
  
  Global Instance AssociatedFunction_conditional_swap :
    Notations.DoubleColon Self "conditional_swap" := {
    Notations.double_colon := conditional_swap;
  }.
  
  Global Instance ℐ : subtle.ConditionallySelectable.Required.Trait Self := {
    subtle.ConditionallySelectable.conditional_select := conditional_select;
    subtle.ConditionallySelectable.conditional_assign :=
      Datatypes.Some conditional_assign;
    subtle.ConditionallySelectable.conditional_swap :=
      Datatypes.Some conditional_swap;
  }.
End Impl_subtle_ConditionallySelectable_for_i16_t.
End Impl_subtle_ConditionallySelectable_for_i16_t.

Module  Impl_subtle_ConditionallySelectable_for_u32_t.
Section Impl_subtle_ConditionallySelectable_for_u32_t.
  Definition Self : Set := u32.t.
  
  Parameter conditional_select :
      (ref Self) -> (ref Self) -> subtle.Choice.t -> M Self.
  
  Global Instance AssociatedFunction_conditional_select :
    Notations.DoubleColon Self "conditional_select" := {
    Notations.double_colon := conditional_select;
  }.
  
  Parameter conditional_assign :
      (mut_ref Self) -> (ref Self) -> subtle.Choice.t -> M unit.
  
  Global Instance AssociatedFunction_conditional_assign :
    Notations.DoubleColon Self "conditional_assign" := {
    Notations.double_colon := conditional_assign;
  }.
  
  Parameter conditional_swap :
      (mut_ref Self) -> (mut_ref Self) -> subtle.Choice.t -> M unit.
  
  Global Instance AssociatedFunction_conditional_swap :
    Notations.DoubleColon Self "conditional_swap" := {
    Notations.double_colon := conditional_swap;
  }.
  
  Global Instance ℐ : subtle.ConditionallySelectable.Required.Trait Self := {
    subtle.ConditionallySelectable.conditional_select := conditional_select;
    subtle.ConditionallySelectable.conditional_assign :=
      Datatypes.Some conditional_assign;
    subtle.ConditionallySelectable.conditional_swap :=
      Datatypes.Some conditional_swap;
  }.
End Impl_subtle_ConditionallySelectable_for_u32_t.
End Impl_subtle_ConditionallySelectable_for_u32_t.

Module  Impl_subtle_ConditionallySelectable_for_i32_t.
Section Impl_subtle_ConditionallySelectable_for_i32_t.
  Definition Self : Set := i32.t.
  
  Parameter conditional_select :
      (ref Self) -> (ref Self) -> subtle.Choice.t -> M Self.
  
  Global Instance AssociatedFunction_conditional_select :
    Notations.DoubleColon Self "conditional_select" := {
    Notations.double_colon := conditional_select;
  }.
  
  Parameter conditional_assign :
      (mut_ref Self) -> (ref Self) -> subtle.Choice.t -> M unit.
  
  Global Instance AssociatedFunction_conditional_assign :
    Notations.DoubleColon Self "conditional_assign" := {
    Notations.double_colon := conditional_assign;
  }.
  
  Parameter conditional_swap :
      (mut_ref Self) -> (mut_ref Self) -> subtle.Choice.t -> M unit.
  
  Global Instance AssociatedFunction_conditional_swap :
    Notations.DoubleColon Self "conditional_swap" := {
    Notations.double_colon := conditional_swap;
  }.
  
  Global Instance ℐ : subtle.ConditionallySelectable.Required.Trait Self := {
    subtle.ConditionallySelectable.conditional_select := conditional_select;
    subtle.ConditionallySelectable.conditional_assign :=
      Datatypes.Some conditional_assign;
    subtle.ConditionallySelectable.conditional_swap :=
      Datatypes.Some conditional_swap;
  }.
End Impl_subtle_ConditionallySelectable_for_i32_t.
End Impl_subtle_ConditionallySelectable_for_i32_t.

Module  Impl_subtle_ConditionallySelectable_for_u64_t.
Section Impl_subtle_ConditionallySelectable_for_u64_t.
  Definition Self : Set := u64.t.
  
  Parameter conditional_select :
      (ref Self) -> (ref Self) -> subtle.Choice.t -> M Self.
  
  Global Instance AssociatedFunction_conditional_select :
    Notations.DoubleColon Self "conditional_select" := {
    Notations.double_colon := conditional_select;
  }.
  
  Parameter conditional_assign :
      (mut_ref Self) -> (ref Self) -> subtle.Choice.t -> M unit.
  
  Global Instance AssociatedFunction_conditional_assign :
    Notations.DoubleColon Self "conditional_assign" := {
    Notations.double_colon := conditional_assign;
  }.
  
  Parameter conditional_swap :
      (mut_ref Self) -> (mut_ref Self) -> subtle.Choice.t -> M unit.
  
  Global Instance AssociatedFunction_conditional_swap :
    Notations.DoubleColon Self "conditional_swap" := {
    Notations.double_colon := conditional_swap;
  }.
  
  Global Instance ℐ : subtle.ConditionallySelectable.Required.Trait Self := {
    subtle.ConditionallySelectable.conditional_select := conditional_select;
    subtle.ConditionallySelectable.conditional_assign :=
      Datatypes.Some conditional_assign;
    subtle.ConditionallySelectable.conditional_swap :=
      Datatypes.Some conditional_swap;
  }.
End Impl_subtle_ConditionallySelectable_for_u64_t.
End Impl_subtle_ConditionallySelectable_for_u64_t.

Module  Impl_subtle_ConditionallySelectable_for_i64_t.
Section Impl_subtle_ConditionallySelectable_for_i64_t.
  Definition Self : Set := i64.t.
  
  Parameter conditional_select :
      (ref Self) -> (ref Self) -> subtle.Choice.t -> M Self.
  
  Global Instance AssociatedFunction_conditional_select :
    Notations.DoubleColon Self "conditional_select" := {
    Notations.double_colon := conditional_select;
  }.
  
  Parameter conditional_assign :
      (mut_ref Self) -> (ref Self) -> subtle.Choice.t -> M unit.
  
  Global Instance AssociatedFunction_conditional_assign :
    Notations.DoubleColon Self "conditional_assign" := {
    Notations.double_colon := conditional_assign;
  }.
  
  Parameter conditional_swap :
      (mut_ref Self) -> (mut_ref Self) -> subtle.Choice.t -> M unit.
  
  Global Instance AssociatedFunction_conditional_swap :
    Notations.DoubleColon Self "conditional_swap" := {
    Notations.double_colon := conditional_swap;
  }.
  
  Global Instance ℐ : subtle.ConditionallySelectable.Required.Trait Self := {
    subtle.ConditionallySelectable.conditional_select := conditional_select;
    subtle.ConditionallySelectable.conditional_assign :=
      Datatypes.Some conditional_assign;
    subtle.ConditionallySelectable.conditional_swap :=
      Datatypes.Some conditional_swap;
  }.
End Impl_subtle_ConditionallySelectable_for_i64_t.
End Impl_subtle_ConditionallySelectable_for_i64_t.

Module  Impl_subtle_ConditionallySelectable_for_subtle_Choice_t.
Section Impl_subtle_ConditionallySelectable_for_subtle_Choice_t.
  Definition Self : Set := subtle.Choice.t.
  
  Parameter conditional_select :
      (ref Self) -> (ref Self) -> subtle.Choice.t -> M Self.
  
  Global Instance AssociatedFunction_conditional_select :
    Notations.DoubleColon Self "conditional_select" := {
    Notations.double_colon := conditional_select;
  }.
  
  Global Instance ℐ : subtle.ConditionallySelectable.Required.Trait Self := {
    subtle.ConditionallySelectable.conditional_select := conditional_select;
    subtle.ConditionallySelectable.conditional_assign := Datatypes.None;
    subtle.ConditionallySelectable.conditional_swap := Datatypes.None;
  }.
End Impl_subtle_ConditionallySelectable_for_subtle_Choice_t.
End Impl_subtle_ConditionallySelectable_for_subtle_Choice_t.

Module  ConditionallyNegatable.
Section ConditionallyNegatable.
  Class Trait (Self : Set) : Type := {
    conditional_negate : (mut_ref Self) -> subtle.Choice.t -> M unit;
  }.
  
End ConditionallyNegatable.
End ConditionallyNegatable.

Module  Impl_subtle_ConditionallyNegatable_for_T.
Section Impl_subtle_ConditionallyNegatable_for_T.
  Context {T : Set}.
  
  Definition Self : Set := T.
  
  Parameter conditional_negate : (mut_ref Self) -> subtle.Choice.t -> M unit.
  
  Global Instance AssociatedFunction_conditional_negate :
    Notations.DoubleColon Self "conditional_negate" := {
    Notations.double_colon := conditional_negate;
  }.
  
  Global Instance ℐ : subtle.ConditionallyNegatable.Trait Self := {
    subtle.ConditionallyNegatable.conditional_negate := conditional_negate;
  }.
End Impl_subtle_ConditionallyNegatable_for_T.
End Impl_subtle_ConditionallyNegatable_for_T.

Module  CtOption.
Section CtOption.
  Context (T : Set).
  
  Record t : Set := {
    value : T;
    is_some : subtle.Choice.t;
  }.
  
  Definition Get_value :=
    Ref.map (fun α => Some α.(value)) (fun β α => Some (α <| value := β |>)).
  Definition Get_is_some :=
    Ref.map
      (fun α => Some α.(is_some))
      (fun β α => Some (α <| is_some := β |>)).
End CtOption.
End CtOption.

Module  Impl_core_clone_Clone_for_subtle_CtOption_t_T.
Section Impl_core_clone_Clone_for_subtle_CtOption_t_T.
  Context {T : Set}.
  
  Definition Self : Set := subtle.CtOption.t T.
  
  Parameter clone : (ref Self) -> M (subtle.CtOption.t T).
  
  Global Instance AssociatedFunction_clone :
    Notations.DoubleColon Self "clone" := {
    Notations.double_colon := clone;
  }.
  
  Global Instance ℐ : core.clone.Clone.Required.Trait Self := {
    core.clone.Clone.clone := clone;
    core.clone.Clone.clone_from := Datatypes.None;
  }.
End Impl_core_clone_Clone_for_subtle_CtOption_t_T.
End Impl_core_clone_Clone_for_subtle_CtOption_t_T.

Module  Impl_core_marker_Copy_for_subtle_CtOption_t_T.
Section Impl_core_marker_Copy_for_subtle_CtOption_t_T.
  Context {T : Set}.
  
  Definition Self : Set := subtle.CtOption.t T.
  
  Global Instance ℐ : core.marker.Copy.Trait Self := {
  }.
End Impl_core_marker_Copy_for_subtle_CtOption_t_T.
End Impl_core_marker_Copy_for_subtle_CtOption_t_T.

Module  Impl_core_fmt_Debug_for_subtle_CtOption_t_T.
Section Impl_core_fmt_Debug_for_subtle_CtOption_t_T.
  Context {T : Set}.
  
  Definition Self : Set := subtle.CtOption.t T.
  
  Parameter fmt :
      (ref Self) -> (mut_ref core.fmt.Formatter.t) -> M ltac:(core.fmt.Result).
  
  Global Instance AssociatedFunction_fmt : Notations.DoubleColon Self "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_subtle_CtOption_t_T.
End Impl_core_fmt_Debug_for_subtle_CtOption_t_T.

Module  Impl_core_convert_From_subtle_CtOption_t_T_for_core_option_Option_t_T.
Section Impl_core_convert_From_subtle_CtOption_t_T_for_core_option_Option_t_T.
  Context {T : Set}.
  
  Definition Self : Set := core.option.Option.t T.
  
  Parameter from : (subtle.CtOption.t T) -> M (core.option.Option.t T).
  
  Global Instance AssociatedFunction_from :
    Notations.DoubleColon Self "from" := {
    Notations.double_colon := from;
  }.
  
  Global Instance ℐ :
    core.convert.From.Trait Self (T := subtle.CtOption.t T) := {
    core.convert.From.from := from;
  }.
End Impl_core_convert_From_subtle_CtOption_t_T_for_core_option_Option_t_T.
End Impl_core_convert_From_subtle_CtOption_t_T_for_core_option_Option_t_T.

Module  Impl_subtle_CtOption_t_T.
Section Impl_subtle_CtOption_t_T.
  Context {T : Set}.
  
  Definition Self : Set := subtle.CtOption.t T.
  
  Parameter new : T -> subtle.Choice.t -> M (subtle.CtOption.t T).
  
  Global Instance AssociatedFunction_new : Notations.DoubleColon Self "new" := {
    Notations.double_colon := new;
  }.
  
  Parameter expect : Self -> (ref str.t) -> M T.
  
  Global Instance AssociatedFunction_expect :
    Notations.DoubleColon Self "expect" := {
    Notations.double_colon := expect;
  }.
  
  Parameter unwrap : Self -> M T.
  
  Global Instance AssociatedFunction_unwrap :
    Notations.DoubleColon Self "unwrap" := {
    Notations.double_colon := unwrap;
  }.
  
  Parameter unwrap_or : Self -> T -> M T.
  
  Global Instance AssociatedFunction_unwrap_or :
    Notations.DoubleColon Self "unwrap_or" := {
    Notations.double_colon := unwrap_or;
  }.
  
  Parameter unwrap_or_else : forall {F : Set}, Self -> F -> M T.
  
  Global Instance AssociatedFunction_unwrap_or_else {F : Set} :
    Notations.DoubleColon Self "unwrap_or_else" := {
    Notations.double_colon := unwrap_or_else (F := F);
  }.
  
  Parameter is_some : (ref Self) -> M subtle.Choice.t.
  
  Global Instance AssociatedFunction_is_some :
    Notations.DoubleColon Self "is_some" := {
    Notations.double_colon := is_some;
  }.
  
  Parameter is_none : (ref Self) -> M subtle.Choice.t.
  
  Global Instance AssociatedFunction_is_none :
    Notations.DoubleColon Self "is_none" := {
    Notations.double_colon := is_none;
  }.
  
  Parameter map : forall {U F : Set}, Self -> F -> M (subtle.CtOption.t U).
  
  Global Instance AssociatedFunction_map {U F : Set} :
    Notations.DoubleColon Self "map" := {
    Notations.double_colon := map (U := U) (F := F);
  }.
  
  Parameter and_then : forall {U F : Set}, Self -> F -> M (subtle.CtOption.t U).
  
  Global Instance AssociatedFunction_and_then {U F : Set} :
    Notations.DoubleColon Self "and_then" := {
    Notations.double_colon := and_then (U := U) (F := F);
  }.
  
  Parameter or_else : forall {F : Set}, Self -> F -> M (subtle.CtOption.t T).
  
  Global Instance AssociatedFunction_or_else {F : Set} :
    Notations.DoubleColon Self "or_else" := {
    Notations.double_colon := or_else (F := F);
  }.
End Impl_subtle_CtOption_t_T.
End Impl_subtle_CtOption_t_T.

Module  Impl_subtle_ConditionallySelectable_for_subtle_CtOption_t_T.
Section Impl_subtle_ConditionallySelectable_for_subtle_CtOption_t_T.
  Context {T : Set}.
  
  Definition Self : Set := subtle.CtOption.t T.
  
  Parameter conditional_select :
      (ref Self) -> (ref Self) -> subtle.Choice.t -> M Self.
  
  Global Instance AssociatedFunction_conditional_select :
    Notations.DoubleColon Self "conditional_select" := {
    Notations.double_colon := conditional_select;
  }.
  
  Global Instance ℐ : subtle.ConditionallySelectable.Required.Trait Self := {
    subtle.ConditionallySelectable.conditional_select := conditional_select;
    subtle.ConditionallySelectable.conditional_assign := Datatypes.None;
    subtle.ConditionallySelectable.conditional_swap := Datatypes.None;
  }.
End Impl_subtle_ConditionallySelectable_for_subtle_CtOption_t_T.
End Impl_subtle_ConditionallySelectable_for_subtle_CtOption_t_T.

Module  Impl_subtle_ConstantTimeEq_for_subtle_CtOption_t_T.
Section Impl_subtle_ConstantTimeEq_for_subtle_CtOption_t_T.
  Context {T : Set}.
  
  Definition Self : Set := subtle.CtOption.t T.
  
  Parameter ct_eq :
      (ref Self) -> (ref (subtle.CtOption.t T)) -> M subtle.Choice.t.
  
  Global Instance AssociatedFunction_ct_eq :
    Notations.DoubleColon Self "ct_eq" := {
    Notations.double_colon := ct_eq;
  }.
  
  Global Instance ℐ : subtle.ConstantTimeEq.Required.Trait Self := {
    subtle.ConstantTimeEq.ct_eq := ct_eq;
    subtle.ConstantTimeEq.ct_ne := Datatypes.None;
  }.
End Impl_subtle_ConstantTimeEq_for_subtle_CtOption_t_T.
End Impl_subtle_ConstantTimeEq_for_subtle_CtOption_t_T.

Module  ConstantTimeGreater.
Section ConstantTimeGreater.
  Class Trait (Self : Set) : Type := {
    ct_gt : (ref Self) -> (ref Self) -> M subtle.Choice.t;
  }.
  
End ConstantTimeGreater.
End ConstantTimeGreater.

Module  Impl_subtle_ConstantTimeGreater_for_u8_t.
Section Impl_subtle_ConstantTimeGreater_for_u8_t.
  Definition Self : Set := u8.t.
  
  Parameter ct_gt : (ref Self) -> (ref u8.t) -> M subtle.Choice.t.
  
  Global Instance AssociatedFunction_ct_gt :
    Notations.DoubleColon Self "ct_gt" := {
    Notations.double_colon := ct_gt;
  }.
  
  Global Instance ℐ : subtle.ConstantTimeGreater.Trait Self := {
    subtle.ConstantTimeGreater.ct_gt := ct_gt;
  }.
End Impl_subtle_ConstantTimeGreater_for_u8_t.
End Impl_subtle_ConstantTimeGreater_for_u8_t.

Module  Impl_subtle_ConstantTimeGreater_for_u16_t.
Section Impl_subtle_ConstantTimeGreater_for_u16_t.
  Definition Self : Set := u16.t.
  
  Parameter ct_gt : (ref Self) -> (ref u16.t) -> M subtle.Choice.t.
  
  Global Instance AssociatedFunction_ct_gt :
    Notations.DoubleColon Self "ct_gt" := {
    Notations.double_colon := ct_gt;
  }.
  
  Global Instance ℐ : subtle.ConstantTimeGreater.Trait Self := {
    subtle.ConstantTimeGreater.ct_gt := ct_gt;
  }.
End Impl_subtle_ConstantTimeGreater_for_u16_t.
End Impl_subtle_ConstantTimeGreater_for_u16_t.

Module  Impl_subtle_ConstantTimeGreater_for_u32_t.
Section Impl_subtle_ConstantTimeGreater_for_u32_t.
  Definition Self : Set := u32.t.
  
  Parameter ct_gt : (ref Self) -> (ref u32.t) -> M subtle.Choice.t.
  
  Global Instance AssociatedFunction_ct_gt :
    Notations.DoubleColon Self "ct_gt" := {
    Notations.double_colon := ct_gt;
  }.
  
  Global Instance ℐ : subtle.ConstantTimeGreater.Trait Self := {
    subtle.ConstantTimeGreater.ct_gt := ct_gt;
  }.
End Impl_subtle_ConstantTimeGreater_for_u32_t.
End Impl_subtle_ConstantTimeGreater_for_u32_t.

Module  Impl_subtle_ConstantTimeGreater_for_u64_t.
Section Impl_subtle_ConstantTimeGreater_for_u64_t.
  Definition Self : Set := u64.t.
  
  Parameter ct_gt : (ref Self) -> (ref u64.t) -> M subtle.Choice.t.
  
  Global Instance AssociatedFunction_ct_gt :
    Notations.DoubleColon Self "ct_gt" := {
    Notations.double_colon := ct_gt;
  }.
  
  Global Instance ℐ : subtle.ConstantTimeGreater.Trait Self := {
    subtle.ConstantTimeGreater.ct_gt := ct_gt;
  }.
End Impl_subtle_ConstantTimeGreater_for_u64_t.
End Impl_subtle_ConstantTimeGreater_for_u64_t.

Module  ConstantTimeLess.
Section ConstantTimeLess.
  Unset Primitive Projections.
  Class Trait (Self : Set) : Type := {
  }.
  Global Set Primitive Projections.
End ConstantTimeLess.
End ConstantTimeLess.

Module  Impl_subtle_ConstantTimeLess_for_u8_t.
Section Impl_subtle_ConstantTimeLess_for_u8_t.
  Definition Self : Set := u8.t.
  
  Global Instance ℐ : subtle.ConstantTimeLess.Required.Trait Self := {
    subtle.ConstantTimeLess.ct_lt := Datatypes.None;
  }.
End Impl_subtle_ConstantTimeLess_for_u8_t.
End Impl_subtle_ConstantTimeLess_for_u8_t.

Module  Impl_subtle_ConstantTimeLess_for_u16_t.
Section Impl_subtle_ConstantTimeLess_for_u16_t.
  Definition Self : Set := u16.t.
  
  Global Instance ℐ : subtle.ConstantTimeLess.Required.Trait Self := {
    subtle.ConstantTimeLess.ct_lt := Datatypes.None;
  }.
End Impl_subtle_ConstantTimeLess_for_u16_t.
End Impl_subtle_ConstantTimeLess_for_u16_t.

Module  Impl_subtle_ConstantTimeLess_for_u32_t.
Section Impl_subtle_ConstantTimeLess_for_u32_t.
  Definition Self : Set := u32.t.
  
  Global Instance ℐ : subtle.ConstantTimeLess.Required.Trait Self := {
    subtle.ConstantTimeLess.ct_lt := Datatypes.None;
  }.
End Impl_subtle_ConstantTimeLess_for_u32_t.
End Impl_subtle_ConstantTimeLess_for_u32_t.

Module  Impl_subtle_ConstantTimeLess_for_u64_t.
Section Impl_subtle_ConstantTimeLess_for_u64_t.
  Definition Self : Set := u64.t.
  
  Global Instance ℐ : subtle.ConstantTimeLess.Required.Trait Self := {
    subtle.ConstantTimeLess.ct_lt := Datatypes.None;
  }.
End Impl_subtle_ConstantTimeLess_for_u64_t.
End Impl_subtle_ConstantTimeLess_for_u64_t.
