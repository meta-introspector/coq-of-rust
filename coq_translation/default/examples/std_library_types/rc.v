(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* rc_examples : ltac:(refine alloc.string.String) :=
      let* α0 : ltac:(refine str) := deref (mk_str "Rc examples") in
      let* α1 : ltac:(refine (ref str)) := borrow α0 in
      (alloc.string.ToString.to_string (Self := str) (Trait := ltac:(refine _)))
        α1 in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "--- rc_a is created ---
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_const"] α2 in
        std.io.stdio._print α3 in
      M.alloc tt in
    let* rc_a : ltac:(refine (alloc.rc.Rc alloc.string.String)) :=
      (alloc.rc.Rc alloc.string.String)::["new"] rc_examples in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "Reference Count of rc_a: "; mk_str "
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (ref (alloc.rc.Rc alloc.string.String))) :=
          borrow rc_a in
        let* α4 : ltac:(refine usize) :=
          (alloc.rc.Rc alloc.string.String)::["strong_count"] α3 in
        let* α5 : ltac:(refine (ref usize)) := borrow α4 in
        let* α6 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_display"] α5 in
        let* α7 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α6 ] in
        let* α8 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α7 in
        let* α9 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α8 in
        let* α10 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α2 α9 in
        std.io.stdio._print α10 in
      M.alloc tt in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* _ : ltac:(refine unit) :=
          let* α0 : ltac:(refine (array (ref str))) :=
            M.alloc [ mk_str "--- rc_a is cloned to rc_b ---
" ] in
          let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
          let* α2 : ltac:(refine (ref (slice (ref str)))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine core.fmt.Arguments) :=
            core.fmt.Arguments::["new_const"] α2 in
          std.io.stdio._print α3 in
        M.alloc tt in
      let* rc_b : ltac:(refine (alloc.rc.Rc alloc.string.String)) :=
        let* α0 : ltac:(refine (ref (alloc.rc.Rc alloc.string.String))) :=
          borrow rc_a in
        (core.clone.Clone.clone
            (Self := alloc.rc.Rc alloc.string.String)
            (Trait := ltac:(refine _)))
          α0 in
      let* _ : ltac:(refine unit) :=
        let* _ : ltac:(refine unit) :=
          let* α0 : ltac:(refine (array (ref str))) :=
            M.alloc [ mk_str "Reference Count of rc_b: "; mk_str "
" ] in
          let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
          let* α2 : ltac:(refine (ref (slice (ref str)))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (ref (alloc.rc.Rc alloc.string.String))) :=
            borrow rc_b in
          let* α4 : ltac:(refine usize) :=
            (alloc.rc.Rc alloc.string.String)::["strong_count"] α3 in
          let* α5 : ltac:(refine (ref usize)) := borrow α4 in
          let* α6 : ltac:(refine core.fmt.rt.Argument) :=
            core.fmt.rt.Argument::["new_display"] α5 in
          let* α7 : ltac:(refine (array core.fmt.rt.Argument)) :=
            M.alloc [ α6 ] in
          let* α8 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
            borrow α7 in
          let* α9 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
            pointer_coercion "Unsize" α8 in
          let* α10 : ltac:(refine core.fmt.Arguments) :=
            core.fmt.Arguments::["new_v1"] α2 α9 in
          std.io.stdio._print α10 in
        M.alloc tt in
      let* _ : ltac:(refine unit) :=
        let* _ : ltac:(refine unit) :=
          let* α0 : ltac:(refine (array (ref str))) :=
            M.alloc [ mk_str "Reference Count of rc_a: "; mk_str "
" ] in
          let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
          let* α2 : ltac:(refine (ref (slice (ref str)))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (ref (alloc.rc.Rc alloc.string.String))) :=
            borrow rc_a in
          let* α4 : ltac:(refine usize) :=
            (alloc.rc.Rc alloc.string.String)::["strong_count"] α3 in
          let* α5 : ltac:(refine (ref usize)) := borrow α4 in
          let* α6 : ltac:(refine core.fmt.rt.Argument) :=
            core.fmt.rt.Argument::["new_display"] α5 in
          let* α7 : ltac:(refine (array core.fmt.rt.Argument)) :=
            M.alloc [ α6 ] in
          let* α8 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
            borrow α7 in
          let* α9 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
            pointer_coercion "Unsize" α8 in
          let* α10 : ltac:(refine core.fmt.Arguments) :=
            core.fmt.Arguments::["new_v1"] α2 α9 in
          std.io.stdio._print α10 in
        M.alloc tt in
      let* _ : ltac:(refine unit) :=
        let* _ : ltac:(refine unit) :=
          let* α0 : ltac:(refine (array (ref str))) :=
            M.alloc [ mk_str "rc_a and rc_b are equal: "; mk_str "
" ] in
          let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
          let* α2 : ltac:(refine (ref (slice (ref str)))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (ref (alloc.rc.Rc alloc.string.String))) :=
            borrow rc_a in
          let* α4 : ltac:(refine (ref (alloc.rc.Rc alloc.string.String))) :=
            borrow rc_b in
          let* α5 : ltac:(refine bool) :=
            (core.cmp.PartialEq.eq
                (Self := alloc.rc.Rc alloc.string.String)
                (Trait := ltac:(refine _)))
              α3
              α4 in
          let* α6 : ltac:(refine (ref bool)) := borrow α5 in
          let* α7 : ltac:(refine core.fmt.rt.Argument) :=
            core.fmt.rt.Argument::["new_display"] α6 in
          let* α8 : ltac:(refine (array core.fmt.rt.Argument)) :=
            M.alloc [ α7 ] in
          let* α9 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
            borrow α8 in
          let* α10 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
            pointer_coercion "Unsize" α9 in
          let* α11 : ltac:(refine core.fmt.Arguments) :=
            core.fmt.Arguments::["new_v1"] α2 α10 in
          std.io.stdio._print α11 in
        M.alloc tt in
      let* _ : ltac:(refine unit) :=
        let* _ : ltac:(refine unit) :=
          let* α0 : ltac:(refine (array (ref str))) :=
            M.alloc
              [ mk_str "Length of the value inside rc_a: "; mk_str "
" ] in
          let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
          let* α2 : ltac:(refine (ref (slice (ref str)))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (ref (alloc.rc.Rc alloc.string.String))) :=
            borrow rc_a in
          let* α4 : ltac:(refine (ref alloc.string.String)) :=
            (core.ops.deref.Deref.deref
                (Self := alloc.rc.Rc alloc.string.String)
                (Trait := ltac:(refine _)))
              α3 in
          let* α5 : ltac:(refine alloc.string.String) := deref α4 in
          let* α6 : ltac:(refine (ref alloc.string.String)) := borrow α5 in
          let* α7 : ltac:(refine usize) := alloc.string.String::["len"] α6 in
          let* α8 : ltac:(refine (ref usize)) := borrow α7 in
          let* α9 : ltac:(refine core.fmt.rt.Argument) :=
            core.fmt.rt.Argument::["new_display"] α8 in
          let* α10 : ltac:(refine (array core.fmt.rt.Argument)) :=
            M.alloc [ α9 ] in
          let* α11 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
            borrow α10 in
          let* α12 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
            pointer_coercion "Unsize" α11 in
          let* α13 : ltac:(refine core.fmt.Arguments) :=
            core.fmt.Arguments::["new_v1"] α2 α12 in
          std.io.stdio._print α13 in
        M.alloc tt in
      let* _ : ltac:(refine unit) :=
        let* _ : ltac:(refine unit) :=
          let* α0 : ltac:(refine (array (ref str))) :=
            M.alloc [ mk_str "Value of rc_b: "; mk_str "
" ] in
          let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
          let* α2 : ltac:(refine (ref (slice (ref str)))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (ref (alloc.rc.Rc alloc.string.String))) :=
            borrow rc_b in
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
        M.alloc tt in
      let* _ : ltac:(refine unit) :=
        let* _ : ltac:(refine unit) :=
          let* α0 : ltac:(refine (array (ref str))) :=
            M.alloc [ mk_str "--- rc_b is dropped out of scope ---
" ] in
          let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
          let* α2 : ltac:(refine (ref (slice (ref str)))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine core.fmt.Arguments) :=
            core.fmt.Arguments::["new_const"] α2 in
          std.io.stdio._print α3 in
        M.alloc tt in
      M.alloc tt in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "Reference Count of rc_a: "; mk_str "
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (ref (alloc.rc.Rc alloc.string.String))) :=
          borrow rc_a in
        let* α4 : ltac:(refine usize) :=
          (alloc.rc.Rc alloc.string.String)::["strong_count"] α3 in
        let* α5 : ltac:(refine (ref usize)) := borrow α4 in
        let* α6 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_display"] α5 in
        let* α7 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α6 ] in
        let* α8 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α7 in
        let* α9 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α8 in
        let* α10 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α2 α9 in
        std.io.stdio._print α10 in
      M.alloc tt in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "--- rc_a is dropped out of scope ---
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_const"] α2 in
        std.io.stdio._print α3 in
      M.alloc tt in
    M.alloc tt).
