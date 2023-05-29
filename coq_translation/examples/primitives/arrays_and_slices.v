(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module mem := std.mem.

Definition analyze_slice (slice : ref Slice) : M unit :=
  let* α0 := format_argument::["new_display"] (deref slice[0]) in
  let* α1 :=
    format_arguments::["new_v1"]
      (deref [ "first element of the slice: "; "
" ])
      (deref [ α0 ]) in
  let* _ := _crate.io._print α1 in
  let _ := tt in
  let* α2 := slice.["len"] in
  let* α3 := format_argument::["new_display"] (deref α2) in
  let* α4 :=
    format_arguments::["new_v1"]
      (deref [ "the slice has "; " elements
" ])
      (deref [ α3 ]) in
  let* _ := _crate.io._print α4 in
  let _ := tt in
  Pure tt.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let xs := [ 1; 2; 3; 4; 5 ] in
  let* ys := repeat 0 in
  let* α0 := format_argument::["new_display"] (deref xs[0]) in
  let* α1 :=
    format_arguments::["new_v1"]
      (deref [ "first element of the array: "; "
" ])
      (deref [ α0 ]) in
  let* _ := _crate.io._print α1 in
  let _ := tt in
  let* α2 := format_argument::["new_display"] (deref xs[1]) in
  let* α3 :=
    format_arguments::["new_v1"]
      (deref [ "second element of the array: "; "
" ])
      (deref [ α2 ]) in
  let* _ := _crate.io._print α3 in
  let _ := tt in
  let* α4 := xs.["len"] in
  let* α5 := format_argument::["new_display"] (deref α4) in
  let* α6 :=
    format_arguments::["new_v1"]
      (deref [ "number of elements in array: "; "
" ])
      (deref [ α5 ]) in
  let* _ := _crate.io._print α6 in
  let _ := tt in
  let* α7 := mem.size_of_val (deref xs) in
  let* α8 := format_argument::["new_display"] (deref α7) in
  let* α9 :=
    format_arguments::["new_v1"]
      (deref [ "array occupies "; " bytes
" ])
      (deref [ α8 ]) in
  let* _ := _crate.io._print α9 in
  let _ := tt in
  let* α10 :=
    format_arguments::["new_const"]
      (deref [ "borrow the whole array as a slice
" ]) in
  let* _ := _crate.io._print α10 in
  let _ := tt in
  let* _ := analyze_slice (deref xs) in
  let* α11 :=
    format_arguments::["new_const"]
      (deref [ "borrow a section of the array as a slice
" ]) in
  let* _ := _crate.io._print α11 in
  let _ := tt in
  let* _ :=
    analyze_slice (deref ys[Range {| Range.start := 1; Range.end := 4; |}]) in
  let empty_array := [ ] in
  let* _ :=
    match (deref (deref empty_array), deref (deref [ ])) with
    | (left_val, right_val) =>
      let* α0 := left_val.["deref"] in
      let* α1 := right_val.["deref"] in
      let* α2 := α0.["eq"] α1 in
      let* α3 := α2.["not"] in
      if (α3 : bool) then
        let kind := _crate.panicking.AssertKind.Eq in
        let* α0 := left_val.["deref"] in
        let* α1 := right_val.["deref"] in
        let* _ :=
          _crate.panicking.assert_failed
            kind
            (deref α0)
            (deref α1)
            _crate.option.Option.None in
        Pure tt
      else
        Pure tt
    end in
  let* _ :=
    match (deref (deref empty_array), deref (deref [ ][RangeFull {|  |}])) with
    | (left_val, right_val) =>
      let* α0 := left_val.["deref"] in
      let* α1 := right_val.["deref"] in
      let* α2 := α0.["eq"] α1 in
      let* α3 := α2.["not"] in
      if (α3 : bool) then
        let kind := _crate.panicking.AssertKind.Eq in
        let* α0 := left_val.["deref"] in
        let* α1 := right_val.["deref"] in
        let* _ :=
          _crate.panicking.assert_failed
            kind
            (deref α0)
            (deref α1)
            _crate.option.Option.None in
        Pure tt
      else
        Pure tt
    end in
  let* α12 :=
    LangItem Range {| Range.start := 0; Range.end := xs.["len"].["add"] 1; |} in
  match α12 with
  | iter =>
    loop
      let* α0 := LangItem (deref iter) in
      let* _ :=
        match α0 with
        | None => Pure Break
        | Some {| Some.0 := i; |} =>
          let* α0 := xs.["get"] i in
          match α0 with
          | Some xval =>
            let* α0 := format_argument::["new_display"] (deref i) in
            let* α1 := format_argument::["new_display"] (deref xval) in
            let* α2 :=
              format_arguments::["new_v1"]
                (deref [ ""; ": "; "
" ])
                (deref [ α0; α1 ]) in
            let* _ := _crate.io._print α2 in
            Pure tt
          | None =>
            let* α0 := format_argument::["new_display"] (deref i) in
            let* α1 :=
              format_arguments::["new_v1"]
                (deref [ "Slow down! "; " is too far!
" ])
                (deref [ α0 ]) in
            let* _ := _crate.io._print α1 in
            Pure tt
          end
        end in
      Pure tt
      from
      for
  end.
