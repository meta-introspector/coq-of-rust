(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Temperature.
  Inductive t `{ℋ : State.Trait} : Set :=
  | Celsius (_ : i32)
  | Fahrenheit (_ : i32).
End Temperature.
Definition Temperature `{ℋ : State.Trait} : Set := M.Val Temperature.t.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* temperature :=
      let* α0 := M.alloc 35 in
      M.alloc (match_guards.Temperature.Celsius α0) in
    match temperature with
    | match_guards.Temperature t =>
      let* _ :=
        let* α0 :=
          borrow
            [ mk_str ""; mk_str "C is above 30 Celsius
" ]
            (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow t i32 in
        let* α5 := deref α4 i32 in
        let* α6 := borrow α5 i32 in
        let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
        let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
        let* α9 := deref α8 (list core.fmt.rt.Argument) in
        let* α10 := borrow α9 (list core.fmt.rt.Argument) in
        let* α11 := pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
        std.io.stdio._print α12 in
      M.alloc tt
    | match_guards.Temperature t =>
      let* _ :=
        let* α0 :=
          borrow
            [ mk_str ""; mk_str "C is below 30 Celsius
" ]
            (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow t i32 in
        let* α5 := deref α4 i32 in
        let* α6 := borrow α5 i32 in
        let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
        let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
        let* α9 := deref α8 (list core.fmt.rt.Argument) in
        let* α10 := borrow α9 (list core.fmt.rt.Argument) in
        let* α11 := pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
        std.io.stdio._print α12 in
      M.alloc tt
    | match_guards.Temperature t =>
      let* _ :=
        let* α0 :=
          borrow
            [ mk_str ""; mk_str "F is above 86 Fahrenheit
" ]
            (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow t i32 in
        let* α5 := deref α4 i32 in
        let* α6 := borrow α5 i32 in
        let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
        let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
        let* α9 := deref α8 (list core.fmt.rt.Argument) in
        let* α10 := borrow α9 (list core.fmt.rt.Argument) in
        let* α11 := pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
        std.io.stdio._print α12 in
      M.alloc tt
    | match_guards.Temperature t =>
      let* _ :=
        let* α0 :=
          borrow
            [ mk_str ""; mk_str "F is below 86 Fahrenheit
" ]
            (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow t i32 in
        let* α5 := deref α4 i32 in
        let* α6 := borrow α5 i32 in
        let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
        let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
        let* α9 := deref α8 (list core.fmt.rt.Argument) in
        let* α10 := borrow α9 (list core.fmt.rt.Argument) in
        let* α11 := pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
        std.io.stdio._print α12 in
      M.alloc tt
    end).
