(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition multiply
    `{ℋ : State.Trait}
    (first_number_str : ref str)
    (second_number_str : ref str)
    : M (core.result.Result i32 core.num.error.ParseIntError) :=
  M.function_body
    (let* α0 : ltac:(refine str) := deref first_number_str in
    let* α1 : ltac:(refine (ref str)) := borrow α0 in
    let* α2 :
        ltac:(refine (core.result.Result i32 core.num.error.ParseIntError)) :=
      str::["parse"] α1 in
    let* α3 := M.read α2 in
    match α3 with
    | core.result.Result.Ok first_number =>
      let* α0 : ltac:(refine str) := deref second_number_str in
      let* α1 : ltac:(refine (ref str)) := borrow α0 in
      let* α2 :
          ltac:(refine (core.result.Result i32 core.num.error.ParseIntError)) :=
        str::["parse"] α1 in
      let* α3 := M.read α2 in
      match α3 with
      | core.result.Result.Ok second_number =>
        let* α0 : ltac:(refine i32) := BinOp.mul first_number second_number in
        M.alloc (core.result.Result.Ok α0)
      | core.result.Result.Err e => M.alloc (core.result.Result.Err e)
      end
    | core.result.Result.Err e => M.alloc (core.result.Result.Err e)
    end).

Definition print
    `{ℋ : State.Trait}
    (result : core.result.Result i32 core.num.error.ParseIntError)
    : M unit :=
  M.function_body
    (let* α0 := M.read result in
    match α0 with
    | core.result.Result.Ok n =>
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "n is "; mk_str "
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine (ref i32)) := borrow n in
        let* α6 : ltac:(refine i32) := deref α5 in
        let* α7 : ltac:(refine (ref i32)) := borrow α6 in
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
      M.alloc tt
    | core.result.Result.Err e =>
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "Error: "; mk_str "
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine (ref core.num.error.ParseIntError)) :=
          borrow e in
        let* α6 : ltac:(refine core.num.error.ParseIntError) := deref α5 in
        let* α7 : ltac:(refine (ref core.num.error.ParseIntError)) :=
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
      M.alloc tt
    end).

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* twenty :
        ltac:(refine (core.result.Result i32 core.num.error.ParseIntError)) :=
      let* α0 : ltac:(refine str) := deref (mk_str "10") in
      let* α1 : ltac:(refine (ref str)) := borrow α0 in
      let* α2 : ltac:(refine str) := deref (mk_str "2") in
      let* α3 : ltac:(refine (ref str)) := borrow α2 in
      map_in_result_via_match.multiply α1 α3 in
    let* _ : ltac:(refine unit) := map_in_result_via_match.print twenty in
    let* tt :
        ltac:(refine (core.result.Result i32 core.num.error.ParseIntError)) :=
      let* α0 : ltac:(refine str) := deref (mk_str "t") in
      let* α1 : ltac:(refine (ref str)) := borrow α0 in
      let* α2 : ltac:(refine str) := deref (mk_str "2") in
      let* α3 : ltac:(refine (ref str)) := borrow α2 in
      map_in_result_via_match.multiply α1 α3 in
    let* _ : ltac:(refine unit) := map_in_result_via_match.print tt in
    M.alloc tt).
