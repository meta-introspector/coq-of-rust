(* Generated by coq-of-rust and adapted by hand *)
Require Import CoqOfRust.CoqOfRust.

Module bounds.
  Module Bounded.
    Class Trait `{State.Trait} (Self : Set) : Set := {
      min_value : M Self;
      max_value : M Self;
    }.
  End Bounded.
  
  Module LowerBounded.
    Class Trait `{State.Trait} (Self : Set) : Set := {
      min_value : M Self;
    }.
  End LowerBounded.
  
  Module UpperBounded.
    Class Trait `{State.Trait} (Self : Set) : Set := {
      max_value : (M (H := H) Self);
    }.
  End UpperBounded.
End bounds.

Module identities.
  Module Zero.
    Class Trait `{State.Trait} (Self : Set) : Set := {
      _ :: core.marker.Sized.Trait Self;
      _ :: core.ops.arith.Add.Trait Self (Rhs := Self);
      zero `{H : State.Trait} : (M (H := H) Self);
      is_zero `{H : State.Trait} : (ref Self) -> (M (H := H) bool);
    }.
  End Zero.
  
  Module One.
    Class Trait `{State.Trait} (Self : Set) : Set := {
      _ :: core.marker.Sized.Trait Self;
      _ :: core.ops.arith.Mul.Trait Self (Rhs := Self);
      one `{H : State.Trait} : (M (H := H) Self);
    }.
  End One.
  
  Parameter zero : forall `{State.Trait},
      forall
      {T : Set},
      forall `{num_traits.identities.Zero.Trait T}, M (H := H) T.
  
  Parameter one : forall `{State.Trait},
      forall
      {T : Set},
      forall `{num_traits.identities.One.Trait T}, M (H := H) T.
End identities.

Module ops.
  Module checked.
    Module CheckedAdd.
      Class Trait `{State.Trait} (Self : Set) : Set := {
        _ :: core.marker.Sized.Trait Self;
        _ :: core.ops.arith.Add.Trait Self (Rhs := Self);
        checked_add :
          (ref Self) -> (ref Self) -> M (core.option.Option Self);
      }.
    End CheckedAdd.
    
    Module CheckedSub.
      Class Trait `{State.Trait} (Self : Set) : Set := {
        _ :: core.marker.Sized.Trait Self;
        _ :: core.ops.arith.Sub.Trait Self (Rhs := Self);
        checked_sub :
          (ref Self) -> (ref Self) -> (M (core.option.Option Self));
      }.
    End CheckedSub.
    
    Module CheckedMul.
      Class Trait `{State.Trait} (Self : Set) : Set := {
        _ :: core.marker.Sized.Trait Self;
        _ :: core.ops.arith.Mul.Trait Self (Rhs := Self);
        checked_mul :
          (ref Self) -> (ref Self) -> (M (core.option.Option Self));
      }.
    End CheckedMul.
    
    Module CheckedDiv.
      Class Trait `{State.Trait} (Self : Set) : Set := {
        _ :: core.marker.Sized.Trait Self;
        _ :: core.ops.arith.Div.Trait Self (Rhs := Self);
        checked_div :
          (ref Self) -> (ref Self) -> (M (core.option.Option Self));
      }.
    End CheckedDiv.
    
    Module CheckedRem.
      Class Trait `{State.Trait} (Self : Set) : Set := {
        _ :: core.marker.Sized.Trait Self;
        _ :: core.ops.arith.Rem.Trait Self (Rhs := Self);
        checked_rem :
          (ref Self) -> (ref Self) -> (M (core.option.Option Self));
      }.
    End CheckedRem.
    
    Module CheckedNeg.
      Class Trait `{State.Trait} (Self : Set) : Set := {
        _ :: core.marker.Sized.Trait Self;
        checked_neg :
          (ref Self) -> (M (core.option.Option Self));
      }.
    End CheckedNeg.
  End checked.

  Module saturating.
    Module Saturating.
      Class Trait `{State.Trait} (Self : Set) : Set := {
        (* TODO *)
      }.
    End Saturating.
  End saturating.
End ops.

(* moved *)
Module NumOps.
  Unset Primitive Projections.
  Class Trait `{State.Trait}
      (Self : Set) {(* TODO *) Rhs : Set} {(* TODO *) Output : option Set}
      : Set := {
    _ :: core.ops.arith.Add.Trait Self (Rhs := (Rhs (* @TODO *)));
    _ :: core.ops.arith.Sub.Trait Self (Rhs := (Rhs (* @TODO *)));
    _ :: core.ops.arith.Mul.Trait Self (Rhs := (Rhs (* @TODO *)));
    _ :: core.ops.arith.Div.Trait Self (Rhs := (Rhs (* @TODO *)));
    _ :: core.ops.arith.Rem.Trait Self (Rhs := (Rhs (* @TODO *)));
  }.
  Global Set Primitive Projections.
End NumOps.

(* moved *)
Module Num.
  Class Trait `{State.Trait} (Self : Set) : Type := {
    _ :: core.cmp.PartialEq.Trait Self (Rhs := Self);
    _ :: num_traits.identities.Zero.Trait Self;
    _ :: num_traits.identities.One.Trait Self;
    _ :: num_traits.NumOps.Trait Self (Rhs := Self) (Output := None);
    FromStrRadixErr : Set;
    from_str_radix :
      (ref str) ->
      u32 ->
      (M (core.result.Result Self FromStrRadixErr));
  }.
End Num.

Module sign.
  Module Unsigned.
    Unset Primitive Projections.
    Class Trait `{State.Trait} (Self : Set) : Set := {
      _ :: num_traits.Num.Trait Self;
    }.
    Global Set Primitive Projections.
  End Unsigned.
End sign.
