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
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_const"] α4 in
        std.io.stdio._print α5 in
      M.alloc tt in
    let* rc_a : ltac:(refine (alloc.rc.Rc alloc.string.String)) :=
      (alloc.rc.Rc alloc.string.String)::["new"] rc_examples in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "Reference Count of rc_a: "; mk_str "
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine (ref (alloc.rc.Rc alloc.string.String))) :=
          borrow rc_a in
        let* α6 : ltac:(refine (alloc.rc.Rc alloc.string.String)) := deref α5 in
        let* α7 : ltac:(refine (ref (alloc.rc.Rc alloc.string.String))) :=
          borrow α6 in
        let* α8 : ltac:(refine usize) :=
          (alloc.rc.Rc alloc.string.String)::["strong_count"] α7 in
        let* α9 : ltac:(refine (ref usize)) := borrow α8 in
        let* α10 : ltac:(refine usize) := deref α9 in
        let* α11 : ltac:(refine (ref usize)) := borrow α10 in
        let* α12 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_display"] α11 in
        let* α13 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α12 ] in
        let* α14 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α13 in
        let* α15 : ltac:(refine (array core.fmt.rt.Argument)) := deref α14 in
        let* α16 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α15 in
        let* α17 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α16 in
        let* α18 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α4 α17 in
        std.io.stdio._print α18 in
      M.alloc tt in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* _ : ltac:(refine unit) :=
          let* α0 : ltac:(refine (array (ref str))) :=
            M.alloc [ mk_str "--- rc_a is cloned to rc_b ---
" ] in
          let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
          let* α2 : ltac:(refine (array (ref str))) := deref α1 in
          let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
          let* α4 : ltac:(refine (ref (slice (ref str)))) :=
            pointer_coercion "Unsize" α3 in
          let* α5 : ltac:(refine core.fmt.Arguments) :=
            core.fmt.Arguments::["new_const"] α4 in
          std.io.stdio._print α5 in
        M.alloc tt in
      let* rc_b : ltac:(refine (alloc.rc.Rc alloc.string.String)) :=
        let* α0 : ltac:(refine (ref (alloc.rc.Rc alloc.string.String))) :=
          borrow rc_a in
        let* α1 : ltac:(refine (alloc.rc.Rc alloc.string.String)) := deref α0 in
        let* α2 : ltac:(refine (ref (alloc.rc.Rc alloc.string.String))) :=
          borrow α1 in
        (core.clone.Clone.clone
            (Self := alloc.rc.Rc alloc.string.String)
            (Trait := ltac:(refine _)))
          α2 in
      let* _ : ltac:(refine unit) :=
        let* _ : ltac:(refine unit) :=
          let* α0 : ltac:(refine (array (ref str))) :=
            M.alloc [ mk_str "Reference Count of rc_b: "; mk_str "
" ] in
          let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
          let* α2 : ltac:(refine (array (ref str))) := deref α1 in
          let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
          let* α4 : ltac:(refine (ref (slice (ref str)))) :=
            pointer_coercion "Unsize" α3 in
          let* α5 : ltac:(refine (ref (alloc.rc.Rc alloc.string.String))) :=
            borrow rc_b in
          let* α6 : ltac:(refine (alloc.rc.Rc alloc.string.String)) :=
            deref α5 in
          let* α7 : ltac:(refine (ref (alloc.rc.Rc alloc.string.String))) :=
            borrow α6 in
          let* α8 : ltac:(refine usize) :=
            (alloc.rc.Rc alloc.string.String)::["strong_count"] α7 in
          let* α9 : ltac:(refine (ref usize)) := borrow α8 in
          let* α10 : ltac:(refine usize) := deref α9 in
          let* α11 : ltac:(refine (ref usize)) := borrow α10 in
          let* α12 : ltac:(refine core.fmt.rt.Argument) :=
            core.fmt.rt.Argument::["new_display"] α11 in
          let* α13 : ltac:(refine (array core.fmt.rt.Argument)) :=
            M.alloc [ α12 ] in
          let* α14 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
            borrow α13 in
          let* α15 : ltac:(refine (array core.fmt.rt.Argument)) := deref α14 in
          let* α16 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
            borrow α15 in
          let* α17 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
            pointer_coercion "Unsize" α16 in
          let* α18 : ltac:(refine core.fmt.Arguments) :=
            core.fmt.Arguments::["new_v1"] α4 α17 in
          std.io.stdio._print α18 in
        M.alloc tt in
      let* _ : ltac:(refine unit) :=
        let* _ : ltac:(refine unit) :=
          let* α0 : ltac:(refine (array (ref str))) :=
            M.alloc [ mk_str "Reference Count of rc_a: "; mk_str "
" ] in
          let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
          let* α2 : ltac:(refine (array (ref str))) := deref α1 in
          let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
          let* α4 : ltac:(refine (ref (slice (ref str)))) :=
            pointer_coercion "Unsize" α3 in
          let* α5 : ltac:(refine (ref (alloc.rc.Rc alloc.string.String))) :=
            borrow rc_a in
          let* α6 : ltac:(refine (alloc.rc.Rc alloc.string.String)) :=
            deref α5 in
          let* α7 : ltac:(refine (ref (alloc.rc.Rc alloc.string.String))) :=
            borrow α6 in
          let* α8 : ltac:(refine usize) :=
            (alloc.rc.Rc alloc.string.String)::["strong_count"] α7 in
          let* α9 : ltac:(refine (ref usize)) := borrow α8 in
          let* α10 : ltac:(refine usize) := deref α9 in
          let* α11 : ltac:(refine (ref usize)) := borrow α10 in
          let* α12 : ltac:(refine core.fmt.rt.Argument) :=
            core.fmt.rt.Argument::["new_display"] α11 in
          let* α13 : ltac:(refine (array core.fmt.rt.Argument)) :=
            M.alloc [ α12 ] in
          let* α14 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
            borrow α13 in
          let* α15 : ltac:(refine (array core.fmt.rt.Argument)) := deref α14 in
          let* α16 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
            borrow α15 in
          let* α17 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
            pointer_coercion "Unsize" α16 in
          let* α18 : ltac:(refine core.fmt.Arguments) :=
            core.fmt.Arguments::["new_v1"] α4 α17 in
          std.io.stdio._print α18 in
        M.alloc tt in
      let* _ : ltac:(refine unit) :=
        let* _ : ltac:(refine unit) :=
          let* α0 : ltac:(refine (array (ref str))) :=
            M.alloc [ mk_str "rc_a and rc_b are equal: "; mk_str "
" ] in
          let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
          let* α2 : ltac:(refine (array (ref str))) := deref α1 in
          let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
          let* α4 : ltac:(refine (ref (slice (ref str)))) :=
            pointer_coercion "Unsize" α3 in
          let* α5 : ltac:(refine (ref (alloc.rc.Rc alloc.string.String))) :=
            borrow rc_a in
          let* α6 : ltac:(refine (ref (alloc.rc.Rc alloc.string.String))) :=
            borrow rc_b in
          let* α7 : ltac:(refine (alloc.rc.Rc alloc.string.String)) :=
            deref α6 in
          let* α8 : ltac:(refine (ref (alloc.rc.Rc alloc.string.String))) :=
            borrow α7 in
          let* α9 : ltac:(refine bool) :=
            (core.cmp.PartialEq.eq
                (Self := alloc.rc.Rc alloc.string.String)
                (Trait := ltac:(refine _)))
              α5
              α8 in
          let* α10 : ltac:(refine (ref bool)) := borrow α9 in
          let* α11 : ltac:(refine bool) := deref α10 in
          let* α12 : ltac:(refine (ref bool)) := borrow α11 in
          let* α13 : ltac:(refine core.fmt.rt.Argument) :=
            core.fmt.rt.Argument::["new_display"] α12 in
          let* α14 : ltac:(refine (array core.fmt.rt.Argument)) :=
            M.alloc [ α13 ] in
          let* α15 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
            borrow α14 in
          let* α16 : ltac:(refine (array core.fmt.rt.Argument)) := deref α15 in
          let* α17 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
            borrow α16 in
          let* α18 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
            pointer_coercion "Unsize" α17 in
          let* α19 : ltac:(refine core.fmt.Arguments) :=
            core.fmt.Arguments::["new_v1"] α4 α18 in
          std.io.stdio._print α19 in
        M.alloc tt in
      let* _ : ltac:(refine unit) :=
        let* _ : ltac:(refine unit) :=
          let* α0 : ltac:(refine (array (ref str))) :=
            M.alloc
              [ mk_str "Length of the value inside rc_a: "; mk_str "
" ] in
          let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
          let* α2 : ltac:(refine (array (ref str))) := deref α1 in
          let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
          let* α4 : ltac:(refine (ref (slice (ref str)))) :=
            pointer_coercion "Unsize" α3 in
          let* α5 : ltac:(refine (ref (alloc.rc.Rc alloc.string.String))) :=
            borrow rc_a in
          let* α6 : ltac:(refine (ref alloc.string.String)) :=
            (core.ops.deref.Deref.deref
                (Self := alloc.rc.Rc alloc.string.String)
                (Trait := ltac:(refine _)))
              α5 in
          let* α7 : ltac:(refine alloc.string.String) := deref α6 in
          let* α8 : ltac:(refine (ref alloc.string.String)) := borrow α7 in
          let* α9 : ltac:(refine usize) := alloc.string.String::["len"] α8 in
          let* α10 : ltac:(refine (ref usize)) := borrow α9 in
          let* α11 : ltac:(refine usize) := deref α10 in
          let* α12 : ltac:(refine (ref usize)) := borrow α11 in
          let* α13 : ltac:(refine core.fmt.rt.Argument) :=
            core.fmt.rt.Argument::["new_display"] α12 in
          let* α14 : ltac:(refine (array core.fmt.rt.Argument)) :=
            M.alloc [ α13 ] in
          let* α15 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
            borrow α14 in
          let* α16 : ltac:(refine (array core.fmt.rt.Argument)) := deref α15 in
          let* α17 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
            borrow α16 in
          let* α18 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
            pointer_coercion "Unsize" α17 in
          let* α19 : ltac:(refine core.fmt.Arguments) :=
            core.fmt.Arguments::["new_v1"] α4 α18 in
          std.io.stdio._print α19 in
        M.alloc tt in
      let* _ : ltac:(refine unit) :=
        let* _ : ltac:(refine unit) :=
          let* α0 : ltac:(refine (array (ref str))) :=
            M.alloc [ mk_str "Value of rc_b: "; mk_str "
" ] in
          let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
          let* α2 : ltac:(refine (array (ref str))) := deref α1 in
          let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
          let* α4 : ltac:(refine (ref (slice (ref str)))) :=
            pointer_coercion "Unsize" α3 in
          let* α5 : ltac:(refine (ref (alloc.rc.Rc alloc.string.String))) :=
            borrow rc_b in
          let* α6 : ltac:(refine (alloc.rc.Rc alloc.string.String)) :=
            deref α5 in
          let* α7 : ltac:(refine (ref (alloc.rc.Rc alloc.string.String))) :=
            borrow α6 in
          let* α8 : ltac:(refine core.fmt.rt.Argument) :=
            core.fmt.rt.Argument::["new_display"] α7 in
          let* α9 : ltac:(refine (array core.fmt.rt.Argument)) :=
            M.alloc [ α8 ] in
          let* α10 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
            borrow α9 in
          let* α11 : ltac:(refine (array core.fmt.rt.Argument)) := deref α10 in
          let* α12 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
            borrow α11 in
          let* α13 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
            pointer_coercion "Unsize" α12 in
          let* α14 : ltac:(refine core.fmt.Arguments) :=
            core.fmt.Arguments::["new_v1"] α4 α13 in
          std.io.stdio._print α14 in
        M.alloc tt in
      let* _ : ltac:(refine unit) :=
        let* _ : ltac:(refine unit) :=
          let* α0 : ltac:(refine (array (ref str))) :=
            M.alloc [ mk_str "--- rc_b is dropped out of scope ---
" ] in
          let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
          let* α2 : ltac:(refine (array (ref str))) := deref α1 in
          let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
          let* α4 : ltac:(refine (ref (slice (ref str)))) :=
            pointer_coercion "Unsize" α3 in
          let* α5 : ltac:(refine core.fmt.Arguments) :=
            core.fmt.Arguments::["new_const"] α4 in
          std.io.stdio._print α5 in
        M.alloc tt in
      M.alloc tt in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "Reference Count of rc_a: "; mk_str "
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine (ref (alloc.rc.Rc alloc.string.String))) :=
          borrow rc_a in
        let* α6 : ltac:(refine (alloc.rc.Rc alloc.string.String)) := deref α5 in
        let* α7 : ltac:(refine (ref (alloc.rc.Rc alloc.string.String))) :=
          borrow α6 in
        let* α8 : ltac:(refine usize) :=
          (alloc.rc.Rc alloc.string.String)::["strong_count"] α7 in
        let* α9 : ltac:(refine (ref usize)) := borrow α8 in
        let* α10 : ltac:(refine usize) := deref α9 in
        let* α11 : ltac:(refine (ref usize)) := borrow α10 in
        let* α12 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_display"] α11 in
        let* α13 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α12 ] in
        let* α14 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α13 in
        let* α15 : ltac:(refine (array core.fmt.rt.Argument)) := deref α14 in
        let* α16 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α15 in
        let* α17 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α16 in
        let* α18 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α4 α17 in
        std.io.stdio._print α18 in
      M.alloc tt in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "--- rc_a is dropped out of scope ---
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_const"] α4 in
        std.io.stdio._print α5 in
      M.alloc tt in
    M.alloc tt).
