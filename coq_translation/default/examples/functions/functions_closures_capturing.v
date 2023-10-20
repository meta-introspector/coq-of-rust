(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{State.Trait} : M unit :=
  let* color := core.convert.From.from (mk_str "green") in
  let print :=
    let* _ :=
      let* α0 := borrow [ mk_str "`color`: "; mk_str "
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := borrow color alloc.string.String in
      let* α5 := deref α4 alloc.string.String in
      let* α6 := borrow α5 alloc.string.String in
      let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
      let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
      let* α9 := deref α8 (list core.fmt.rt.Argument) in
      let* α10 := borrow α9 (list core.fmt.rt.Argument) in
      let* α11 := pointer_coercion "Unsize" α10 in
      let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
      std.io.stdio._print α12 in
    Pure tt in
  let* _ :=
    let* α0 := borrow print type not implemented in
    core.ops.function.Fn.call α0 tt in
  let* _reborrow := borrow color alloc.string.String in
  let* _ :=
    let* α0 := borrow print type not implemented in
    core.ops.function.Fn.call α0 tt in
  let _color_moved := color in
  let* count := M.alloc 0 in
  let inc :=
    let* _ :=
      let* α0 := M.alloc 1 in
      assign_op add count α0 in
    let* _ :=
      let* _ :=
        let* α0 := borrow [ mk_str "`count`: "; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow count i32 in
        let* α5 := deref α4 i32 in
        let* α6 := borrow α5 i32 in
        let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
        let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
        let* α9 := deref α8 (list core.fmt.rt.Argument) in
        let* α10 := borrow α9 (list core.fmt.rt.Argument) in
        let* α11 := pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
        std.io.stdio._print α12 in
      Pure tt in
    Pure tt in
  let* _ :=
    let* α0 := borrow_mut inc type not implemented in
    core.ops.function.FnMut.call_mut α0 tt in
  let* _ :=
    let* α0 := borrow_mut inc type not implemented in
    core.ops.function.FnMut.call_mut α0 tt in
  let* _count_reborrowed := borrow_mut count i32 in
  let* movable :=
    let* α0 := M.alloc 3 in
    (alloc.boxed.Box _ alloc.alloc.Global)::["new"] α0 in
  let consume :=
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow [ mk_str "`movable`: "; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow movable (alloc.boxed.Box i32 alloc.alloc.Global) in
        let* α5 := deref α4 (alloc.boxed.Box i32 alloc.alloc.Global) in
        let* α6 := borrow α5 (alloc.boxed.Box i32 alloc.alloc.Global) in
        let* α7 := core.fmt.rt.Argument::["new_debug"] α6 in
        let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
        let* α9 := deref α8 (list core.fmt.rt.Argument) in
        let* α10 := borrow α9 (list core.fmt.rt.Argument) in
        let* α11 := pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
        std.io.stdio._print α12 in
      Pure tt in
    let* _ := core.mem.drop movable in
    Pure tt in
  let* _ := core.ops.function.FnOnce.call_once consume tt in
  Pure tt.
