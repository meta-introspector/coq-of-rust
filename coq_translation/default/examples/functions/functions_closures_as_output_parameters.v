(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition create_fn `{ℋ : State.Trait} : M _ (* OpaqueTy *) :=
  M.function_body
    (let* text : ltac:(refine alloc.string.String) :=
      let* α0 : ltac:(refine str) := deref (mk_str "Fn") in
      let* α1 : ltac:(refine (ref str)) := borrow α0 in
      (alloc.borrow.ToOwned.to_owned (Self := str) (Trait := ltac:(refine _)))
        α1 in
    M.pure
      (let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "This is a: "; mk_str "
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (ref alloc.string.String)) := borrow text in
        let* α4 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_display"] α3 in
        let* α5 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α4 ] in
        let* α6 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α5 in
        let* α7 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α6 in
        let* α8 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α2 α7 in
        std.io.stdio._print α8 in
      M.alloc tt)).

Error OpaqueTy.

Definition create_fnmut `{ℋ : State.Trait} : M _ (* OpaqueTy *) :=
  M.function_body
    (let* text : ltac:(refine alloc.string.String) :=
      let* α0 : ltac:(refine str) := deref (mk_str "FnMut") in
      let* α1 : ltac:(refine (ref str)) := borrow α0 in
      (alloc.borrow.ToOwned.to_owned (Self := str) (Trait := ltac:(refine _)))
        α1 in
    M.pure
      (let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "This is a: "; mk_str "
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (ref alloc.string.String)) := borrow text in
        let* α4 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_display"] α3 in
        let* α5 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α4 ] in
        let* α6 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α5 in
        let* α7 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α6 in
        let* α8 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α2 α7 in
        std.io.stdio._print α8 in
      M.alloc tt)).

Definition create_fnonce `{ℋ : State.Trait} : M _ (* OpaqueTy *) :=
  M.function_body
    (let* text : ltac:(refine alloc.string.String) :=
      let* α0 : ltac:(refine str) := deref (mk_str "FnOnce") in
      let* α1 : ltac:(refine (ref str)) := borrow α0 in
      (alloc.borrow.ToOwned.to_owned (Self := str) (Trait := ltac:(refine _)))
        α1 in
    M.pure
      (let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "This is a: "; mk_str "
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (ref alloc.string.String)) := borrow text in
        let* α4 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_display"] α3 in
        let* α5 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α4 ] in
        let* α6 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α5 in
        let* α7 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α6 in
        let* α8 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α2 α7 in
        std.io.stdio._print α8 in
      M.alloc tt)).

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* fn_plain : ltac:(refine type not implemented) :=
      functions_closures_as_output_parameters.create_fn in
    let* fn_mut : ltac:(refine type not implemented) :=
      functions_closures_as_output_parameters.create_fnmut in
    let* fn_once : ltac:(refine type not implemented) :=
      functions_closures_as_output_parameters.create_fnonce in
    let* _ : ltac:(refine unit) :=
      let* α0 : ltac:(refine (ref type not implemented)) := borrow fn_plain in
      let* α1 : ltac:(refine unit) := M.alloc tt in
      (core.ops.function.Fn.call
          (Self := type not implemented)
          (Trait := ltac:(refine _)))
        α0
        α1 in
    let* _ : ltac:(refine unit) :=
      let* α0 : ltac:(refine (mut_ref type not implemented)) :=
        borrow_mut fn_mut in
      let* α1 : ltac:(refine unit) := M.alloc tt in
      (core.ops.function.FnMut.call_mut
          (Self := type not implemented)
          (Trait := ltac:(refine _)))
        α0
        α1 in
    let* _ : ltac:(refine unit) :=
      let* α0 : ltac:(refine unit) := M.alloc tt in
      (core.ops.function.FnOnce.call_once
          (Self := type not implemented)
          (Trait := ltac:(refine _)))
        fn_once
        α0 in
    M.alloc tt).
