(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module bump.
  Module BumpAllocator.
    Section BumpAllocator.
      Context `{ℋ : State.Trait}.
      
      Inductive t : Set := Build.
    End BumpAllocator.
  End BumpAllocator.
  Definition BumpAllocator := @BumpAllocator.t.
  
  Module
    Impl_core_alloc_global_GlobalAlloc_for_ink_allocator_bump_BumpAllocator.
    Section
      Impl_core_alloc_global_GlobalAlloc_for_ink_allocator_bump_BumpAllocator.
      Context `{ℋ : State.Trait}.
      
      Definition Self : Set := ink_allocator.bump.BumpAllocator.
      
      Parameter alloc :
          (ref Self) -> core.alloc.layout.Layout -> M (mut_ref u8).
      
      Global Instance AssociatedFunction_alloc :
        Notation.DoubleColon Self "alloc" := {
        Notation.double_colon := alloc;
      }.
      
      Parameter alloc_zeroed :
          (ref Self) -> core.alloc.layout.Layout -> M (mut_ref u8).
      
      Global Instance AssociatedFunction_alloc_zeroed :
        Notation.DoubleColon Self "alloc_zeroed" := {
        Notation.double_colon := alloc_zeroed;
      }.
      
      Parameter dealloc :
          (ref Self) -> (mut_ref u8) -> core.alloc.layout.Layout -> M unit.
      
      Global Instance AssociatedFunction_dealloc :
        Notation.DoubleColon Self "dealloc" := {
        Notation.double_colon := dealloc;
      }.
      
      Global Instance ℐ : core.alloc.global.GlobalAlloc.Trait Self := {
        core.alloc.global.GlobalAlloc.alloc := alloc;
        core.alloc.global.GlobalAlloc.dealloc := dealloc;
      }.
    End Impl_core_alloc_global_GlobalAlloc_for_ink_allocator_bump_BumpAllocator.
    Global Hint Resolve ℐ : core.
  End Impl_core_alloc_global_GlobalAlloc_for_ink_allocator_bump_BumpAllocator.
  
  (* Module Impl_core_fmt_Debug_for_ink_allocator_bump_InnerAlloc.
    (* Section Impl_core_fmt_Debug_for_ink_allocator_bump_InnerAlloc.
      Context `{ℋ : State.Trait}.
      
      Definition Self : Set := ink_allocator.bump.InnerAlloc.
      
      Parameter fmt :
          (ref Self) -> (mut_ref core.fmt.Formatter) -> M core.fmt.Result.
      
      Global Instance AssociatedFunction_fmt :
        Notation.DoubleColon Self "fmt" := {
        Notation.double_colon := fmt;
      }.
      
      Global Instance ℐ : core.fmt.Debug.Trait Self := {
        core.fmt.Debug.fmt := fmt;
      }.
    End Impl_core_fmt_Debug_for_ink_allocator_bump_InnerAlloc. *)
    Global Hint Resolve ℐ : core.
  End Impl_core_fmt_Debug_for_ink_allocator_bump_InnerAlloc. *)
  
  (* Module Impl_core_marker_Copy_for_ink_allocator_bump_InnerAlloc.
    (* Section Impl_core_marker_Copy_for_ink_allocator_bump_InnerAlloc.
      Context `{ℋ : State.Trait}.
      
      Definition Self : Set := ink_allocator.bump.InnerAlloc.
      
      Global Instance ℐ : core.marker.Copy.Trait Self := {
      }.
    End Impl_core_marker_Copy_for_ink_allocator_bump_InnerAlloc. *)
    Global Hint Resolve ℐ : core.
  End Impl_core_marker_Copy_for_ink_allocator_bump_InnerAlloc. *)
  
  (* Module Impl_core_clone_Clone_for_ink_allocator_bump_InnerAlloc.
    (* Section Impl_core_clone_Clone_for_ink_allocator_bump_InnerAlloc.
      Context `{ℋ : State.Trait}.
      
      Definition Self : Set := ink_allocator.bump.InnerAlloc.
      
      Parameter clone : (ref Self) -> M ink_allocator.bump.InnerAlloc.
      
      Global Instance AssociatedFunction_clone :
        Notation.DoubleColon Self "clone" := {
        Notation.double_colon := clone;
      }.
      
      Global Instance ℐ : core.clone.Clone.Trait Self := {
        core.clone.Clone.clone := clone;
      }.
    End Impl_core_clone_Clone_for_ink_allocator_bump_InnerAlloc. *)
    Global Hint Resolve ℐ : core.
  End Impl_core_clone_Clone_for_ink_allocator_bump_InnerAlloc. *)
End bump.

Module BumpAllocator.
  Section BumpAllocator.
    Context `{ℋ : State.Trait}.
    
    Inductive t : Set := Build.
  End BumpAllocator.
End BumpAllocator.
Definition BumpAllocator := @BumpAllocator.t.

Module Impl_core_alloc_global_GlobalAlloc_for_ink_allocator_bump_BumpAllocator.
  Section
    Impl_core_alloc_global_GlobalAlloc_for_ink_allocator_bump_BumpAllocator.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := ink_allocator.bump.BumpAllocator.
    
    Parameter alloc : (ref Self) -> core.alloc.layout.Layout -> M (mut_ref u8).
    
    Global Instance AssociatedFunction_alloc :
      Notation.DoubleColon Self "alloc" := {
      Notation.double_colon := alloc;
    }.
    
    Parameter alloc_zeroed :
        (ref Self) -> core.alloc.layout.Layout -> M (mut_ref u8).
    
    Global Instance AssociatedFunction_alloc_zeroed :
      Notation.DoubleColon Self "alloc_zeroed" := {
      Notation.double_colon := alloc_zeroed;
    }.
    
    Parameter dealloc :
        (ref Self) -> (mut_ref u8) -> core.alloc.layout.Layout -> M unit.
    
    Global Instance AssociatedFunction_dealloc :
      Notation.DoubleColon Self "dealloc" := {
      Notation.double_colon := dealloc;
    }.
    
    Global Instance ℐ : core.alloc.global.GlobalAlloc.Trait Self := {
      core.alloc.global.GlobalAlloc.alloc := alloc;
      core.alloc.global.GlobalAlloc.dealloc := dealloc;
    }.
  End Impl_core_alloc_global_GlobalAlloc_for_ink_allocator_bump_BumpAllocator.
  Global Hint Resolve ℐ : core.
End Impl_core_alloc_global_GlobalAlloc_for_ink_allocator_bump_BumpAllocator.

(* Module Impl_core_fmt_Debug_for_ink_allocator_bump_InnerAlloc.
  (* Section Impl_core_fmt_Debug_for_ink_allocator_bump_InnerAlloc.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := ink_allocator.bump.InnerAlloc.
    
    Parameter fmt :
        (ref Self) -> (mut_ref core.fmt.Formatter) -> M core.fmt.Result.
    
    Global Instance AssociatedFunction_fmt :
      Notation.DoubleColon Self "fmt" := {
      Notation.double_colon := fmt;
    }.
    
    Global Instance ℐ : core.fmt.Debug.Trait Self := {
      core.fmt.Debug.fmt := fmt;
    }.
  End Impl_core_fmt_Debug_for_ink_allocator_bump_InnerAlloc. *)
  Global Hint Resolve ℐ : core.
End Impl_core_fmt_Debug_for_ink_allocator_bump_InnerAlloc. *)

(* Module Impl_core_marker_Copy_for_ink_allocator_bump_InnerAlloc.
  (* Section Impl_core_marker_Copy_for_ink_allocator_bump_InnerAlloc.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := ink_allocator.bump.InnerAlloc.
    
    Global Instance ℐ : core.marker.Copy.Trait Self := {
    }.
  End Impl_core_marker_Copy_for_ink_allocator_bump_InnerAlloc. *)
  Global Hint Resolve ℐ : core.
End Impl_core_marker_Copy_for_ink_allocator_bump_InnerAlloc. *)

(* Module Impl_core_clone_Clone_for_ink_allocator_bump_InnerAlloc.
  (* Section Impl_core_clone_Clone_for_ink_allocator_bump_InnerAlloc.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := ink_allocator.bump.InnerAlloc.
    
    Parameter clone : (ref Self) -> M ink_allocator.bump.InnerAlloc.
    
    Global Instance AssociatedFunction_clone :
      Notation.DoubleColon Self "clone" := {
      Notation.double_colon := clone;
    }.
    
    Global Instance ℐ : core.clone.Clone.Trait Self := {
      core.clone.Clone.clone := clone;
    }.
  End Impl_core_clone_Clone_for_ink_allocator_bump_InnerAlloc. *)
  Global Hint Resolve ℐ : core.
End Impl_core_clone_Clone_for_ink_allocator_bump_InnerAlloc. *)
