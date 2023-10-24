(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition create_fn `{State.Trait} : M _ (* OpaqueTy *) :=
  let* text :=
    let* α0 := deref (mk_str "Fn") str in
    let* α1 := borrow α0 str in
    alloc.borrow.ToOwned.to_owned α1 in
  Pure
    let* _ :=
      let* α0 := borrow [ mk_str "This is a: "; mk_str "
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := borrow text alloc.string.String in
      let* α5 := deref α4 alloc.string.String in
      let* α6 := borrow α5 alloc.string.String in
      let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
      let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
      let* α9 := deref α8 (list core.fmt.rt.Argument) in
      let* α10 := borrow α9 (list core.fmt.rt.Argument) in
      let* α11 := pointer_coercion "Unsize" α10 in
      let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
      std.io.stdio._print α12 in
    M.alloc tt.

Error OpaqueTy.

Definition create_fnmut `{State.Trait} : M _ (* OpaqueTy *) :=
  let* text :=
    let* α0 := deref (mk_str "FnMut") str in
    let* α1 := borrow α0 str in
    alloc.borrow.ToOwned.to_owned α1 in
  Pure
    let* _ :=
      let* α0 := borrow [ mk_str "This is a: "; mk_str "
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := borrow text alloc.string.String in
      let* α5 := deref α4 alloc.string.String in
      let* α6 := borrow α5 alloc.string.String in
      let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
      let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
      let* α9 := deref α8 (list core.fmt.rt.Argument) in
      let* α10 := borrow α9 (list core.fmt.rt.Argument) in
      let* α11 := pointer_coercion "Unsize" α10 in
      let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
      std.io.stdio._print α12 in
    M.alloc tt.

Definition create_fnonce `{State.Trait} : M _ (* OpaqueTy *) :=
  let* text :=
    let* α0 := deref (mk_str "FnOnce") str in
    let* α1 := borrow α0 str in
    alloc.borrow.ToOwned.to_owned α1 in
  Pure
    let* _ :=
      let* α0 := borrow [ mk_str "This is a: "; mk_str "
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := borrow text alloc.string.String in
      let* α5 := deref α4 alloc.string.String in
      let* α6 := borrow α5 alloc.string.String in
      let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
      let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
      let* α9 := deref α8 (list core.fmt.rt.Argument) in
      let* α10 := borrow α9 (list core.fmt.rt.Argument) in
      let* α11 := pointer_coercion "Unsize" α10 in
      let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
      std.io.stdio._print α12 in
    M.alloc tt.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{State.Trait} : M unit :=
  let* fn_plain := functions_closures_as_output_parameters.create_fn in
  let* fn_mut := functions_closures_as_output_parameters.create_fnmut in
  let* fn_once := functions_closures_as_output_parameters.create_fnonce in
  let* _ :=
    let* α0 := borrow fn_plain type not implemented in
    let* α1 := M.alloc tt in
    core.ops.function.Fn.call α0 α1 in
  let* _ :=
    let* α0 := borrow_mut fn_mut type not implemented in
    let* α1 := M.alloc tt in
    core.ops.function.FnMut.call_mut α0 α1 in
  let* _ :=
    let* α0 := M.alloc tt in
    core.ops.function.FnOnce.call_once fn_once α0 in
  M.alloc tt.
