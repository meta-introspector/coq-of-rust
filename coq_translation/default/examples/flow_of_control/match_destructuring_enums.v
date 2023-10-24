(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Color.
  Inductive t `{ℋ : State.Trait} : Set :=
  | Red
  | Blue
  | Green
  | RGB (_ : u32) (_ : u32) (_ : u32)
  | HSV (_ : u32) (_ : u32) (_ : u32)
  | HSL (_ : u32) (_ : u32) (_ : u32)
  | CMY (_ : u32) (_ : u32) (_ : u32)
  | CMYK (_ : u32) (_ : u32) (_ : u32) (_ : u32).
End Color.
Definition Color `{ℋ : State.Trait} : Set := Color.t.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  let* color :=
    let* α0 := M.alloc 122 in
    let* α1 := M.alloc 17 in
    let* α2 := M.alloc 40 in
    Pure (match_destructuring_enums.Color.RGB α0 α1 α2) in
  let* _ :=
    let* _ :=
      let* α0 := borrow [ mk_str "What color is it?
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := core.fmt.Arguments::["new_const"] α3 in
      std.io.stdio._print α4 in
    M.alloc tt in
  match color with
  | match_destructuring_enums.Color  =>
    let* _ :=
      let* α0 := borrow [ mk_str "The color is Red!
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := core.fmt.Arguments::["new_const"] α3 in
      std.io.stdio._print α4 in
    M.alloc tt
  | match_destructuring_enums.Color  =>
    let* _ :=
      let* α0 := borrow [ mk_str "The color is Blue!
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := core.fmt.Arguments::["new_const"] α3 in
      std.io.stdio._print α4 in
    M.alloc tt
  | match_destructuring_enums.Color  =>
    let* _ :=
      let* α0 := borrow [ mk_str "The color is Green!
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := core.fmt.Arguments::["new_const"] α3 in
      std.io.stdio._print α4 in
    M.alloc tt
  | match_destructuring_enums.Color r g b =>
    let* _ :=
      let* α0 :=
        borrow
          [
            mk_str "Red: ";
            mk_str ", green: ";
            mk_str ", and blue: ";
            mk_str "!
"
          ]
          (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := borrow r u32 in
      let* α5 := deref α4 u32 in
      let* α6 := borrow α5 u32 in
      let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
      let* α8 := borrow g u32 in
      let* α9 := deref α8 u32 in
      let* α10 := borrow α9 u32 in
      let* α11 := core.fmt.rt.Argument::["new_display"] α10 in
      let* α12 := borrow b u32 in
      let* α13 := deref α12 u32 in
      let* α14 := borrow α13 u32 in
      let* α15 := core.fmt.rt.Argument::["new_display"] α14 in
      let* α16 := borrow [ α7; α11; α15 ] (list core.fmt.rt.Argument) in
      let* α17 := deref α16 (list core.fmt.rt.Argument) in
      let* α18 := borrow α17 (list core.fmt.rt.Argument) in
      let* α19 := pointer_coercion "Unsize" α18 in
      let* α20 := core.fmt.Arguments::["new_v1"] α3 α19 in
      std.io.stdio._print α20 in
    M.alloc tt
  | match_destructuring_enums.Color h s v =>
    let* _ :=
      let* α0 :=
        borrow
          [
            mk_str "Hue: ";
            mk_str ", saturation: ";
            mk_str ", value: ";
            mk_str "!
"
          ]
          (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := borrow h u32 in
      let* α5 := deref α4 u32 in
      let* α6 := borrow α5 u32 in
      let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
      let* α8 := borrow s u32 in
      let* α9 := deref α8 u32 in
      let* α10 := borrow α9 u32 in
      let* α11 := core.fmt.rt.Argument::["new_display"] α10 in
      let* α12 := borrow v u32 in
      let* α13 := deref α12 u32 in
      let* α14 := borrow α13 u32 in
      let* α15 := core.fmt.rt.Argument::["new_display"] α14 in
      let* α16 := borrow [ α7; α11; α15 ] (list core.fmt.rt.Argument) in
      let* α17 := deref α16 (list core.fmt.rt.Argument) in
      let* α18 := borrow α17 (list core.fmt.rt.Argument) in
      let* α19 := pointer_coercion "Unsize" α18 in
      let* α20 := core.fmt.Arguments::["new_v1"] α3 α19 in
      std.io.stdio._print α20 in
    M.alloc tt
  | match_destructuring_enums.Color h s l =>
    let* _ :=
      let* α0 :=
        borrow
          [
            mk_str "Hue: ";
            mk_str ", saturation: ";
            mk_str ", lightness: ";
            mk_str "!
"
          ]
          (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := borrow h u32 in
      let* α5 := deref α4 u32 in
      let* α6 := borrow α5 u32 in
      let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
      let* α8 := borrow s u32 in
      let* α9 := deref α8 u32 in
      let* α10 := borrow α9 u32 in
      let* α11 := core.fmt.rt.Argument::["new_display"] α10 in
      let* α12 := borrow l u32 in
      let* α13 := deref α12 u32 in
      let* α14 := borrow α13 u32 in
      let* α15 := core.fmt.rt.Argument::["new_display"] α14 in
      let* α16 := borrow [ α7; α11; α15 ] (list core.fmt.rt.Argument) in
      let* α17 := deref α16 (list core.fmt.rt.Argument) in
      let* α18 := borrow α17 (list core.fmt.rt.Argument) in
      let* α19 := pointer_coercion "Unsize" α18 in
      let* α20 := core.fmt.Arguments::["new_v1"] α3 α19 in
      std.io.stdio._print α20 in
    M.alloc tt
  | match_destructuring_enums.Color c m y =>
    let* _ :=
      let* α0 :=
        borrow
          [
            mk_str "Cyan: ";
            mk_str ", magenta: ";
            mk_str ", yellow: ";
            mk_str "!
"
          ]
          (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := borrow c u32 in
      let* α5 := deref α4 u32 in
      let* α6 := borrow α5 u32 in
      let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
      let* α8 := borrow m u32 in
      let* α9 := deref α8 u32 in
      let* α10 := borrow α9 u32 in
      let* α11 := core.fmt.rt.Argument::["new_display"] α10 in
      let* α12 := borrow y u32 in
      let* α13 := deref α12 u32 in
      let* α14 := borrow α13 u32 in
      let* α15 := core.fmt.rt.Argument::["new_display"] α14 in
      let* α16 := borrow [ α7; α11; α15 ] (list core.fmt.rt.Argument) in
      let* α17 := deref α16 (list core.fmt.rt.Argument) in
      let* α18 := borrow α17 (list core.fmt.rt.Argument) in
      let* α19 := pointer_coercion "Unsize" α18 in
      let* α20 := core.fmt.Arguments::["new_v1"] α3 α19 in
      std.io.stdio._print α20 in
    M.alloc tt
  | match_destructuring_enums.Color c m y k =>
    let* _ :=
      let* α0 :=
        borrow
          [
            mk_str "Cyan: ";
            mk_str ", magenta: ";
            mk_str ", yellow: ";
            mk_str ", key (black): ";
            mk_str "!
"
          ]
          (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := borrow c u32 in
      let* α5 := deref α4 u32 in
      let* α6 := borrow α5 u32 in
      let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
      let* α8 := borrow m u32 in
      let* α9 := deref α8 u32 in
      let* α10 := borrow α9 u32 in
      let* α11 := core.fmt.rt.Argument::["new_display"] α10 in
      let* α12 := borrow y u32 in
      let* α13 := deref α12 u32 in
      let* α14 := borrow α13 u32 in
      let* α15 := core.fmt.rt.Argument::["new_display"] α14 in
      let* α16 := borrow k u32 in
      let* α17 := deref α16 u32 in
      let* α18 := borrow α17 u32 in
      let* α19 := core.fmt.rt.Argument::["new_display"] α18 in
      let* α20 := borrow [ α7; α11; α15; α19 ] (list core.fmt.rt.Argument) in
      let* α21 := deref α20 (list core.fmt.rt.Argument) in
      let* α22 := borrow α21 (list core.fmt.rt.Argument) in
      let* α23 := pointer_coercion "Unsize" α22 in
      let* α24 := core.fmt.Arguments::["new_v1"] α3 α23 in
      std.io.stdio._print α24 in
    M.alloc tt
  end.
