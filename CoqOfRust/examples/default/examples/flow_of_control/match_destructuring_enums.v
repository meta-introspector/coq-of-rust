(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Color.
  Inductive t : Set :=
  | Red
  | Blue
  | Green
  | RGB (_ : u32.t) (_ : u32.t) (_ : u32.t)
  | HSV (_ : u32.t) (_ : u32.t) (_ : u32.t)
  | HSL (_ : u32.t) (_ : u32.t) (_ : u32.t)
  | CMY (_ : u32.t) (_ : u32.t) (_ : u32.t)
  | CMYK (_ : u32.t) (_ : u32.t) (_ : u32.t) (_ : u32.t).
End Color.

(*
fn main() {
    let color = Color::RGB(122, 17, 40);
    // TODO ^ Try different variants for `color`

    println!("What color is it?");
    // An `enum` can be destructured using a `match`.
    match color {
        Color::Red => println!("The color is Red!"),
        Color::Blue => println!("The color is Blue!"),
        Color::Green => println!("The color is Green!"),
        Color::RGB(r, g, b) => println!("Red: {}, green: {}, and blue: {}!", r, g, b),
        Color::HSV(h, s, v) => println!("Hue: {}, saturation: {}, value: {}!", h, s, v),
        Color::HSL(h, s, l) => println!("Hue: {}, saturation: {}, lightness: {}!", h, s, l),
        Color::CMY(c, m, y) => println!("Cyan: {}, magenta: {}, yellow: {}!", c, m, y),
        Color::CMYK(c, m, y, k) => println!(
            "Cyan: {}, magenta: {}, yellow: {}, key (black): {}!",
            c, m, y, k
        ),
        // Don't need another arm because all variants have been examined
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* color : M.Val match_destructuring_enums.Color.t :=
    M.alloc
      (match_destructuring_enums.Color.RGB
        (Integer.of_Z 122)
        (Integer.of_Z 17)
        (Integer.of_Z 40)) in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "What color is it?
" ] in
      let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
      let* α2 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α1) in
      let* α3 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_const"] α2) in
      let* α4 : unit := M.call (std.io.stdio._print α3) in
      M.alloc α4 in
    M.alloc tt in
  let* α0 : match_destructuring_enums.Color.t := M.read color in
  let* α0 : M.Val unit :=
    match α0 with
    | match_destructuring_enums.Color.Red  =>
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "The color is Red!
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.Arguments.t :=
          M.call (core.fmt.Arguments.t::["new_const"] α2) in
        let* α4 : unit := M.call (std.io.stdio._print α3) in
        M.alloc α4 in
      M.alloc tt
    | match_destructuring_enums.Color.Blue  =>
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "The color is Blue!
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.Arguments.t :=
          M.call (core.fmt.Arguments.t::["new_const"] α2) in
        let* α4 : unit := M.call (std.io.stdio._print α3) in
        M.alloc α4 in
      M.alloc tt
    | match_destructuring_enums.Color.Green  =>
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "The color is Green!
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.Arguments.t :=
          M.call (core.fmt.Arguments.t::["new_const"] α2) in
        let* α4 : unit := M.call (std.io.stdio._print α3) in
        M.alloc α4 in
      M.alloc tt
    | match_destructuring_enums.Color.RGB r g b =>
      let* b := M.alloc b in
      let* g := M.alloc g in
      let* r := M.alloc r in
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc
            [
              mk_str "Red: ";
              mk_str ", green: ";
              mk_str ", and blue: ";
              mk_str "!
"
            ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_display"] (borrow r)) in
        let* α4 : M.Val core.fmt.rt.Argument.t := M.alloc α3 in
        let* α5 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_display"] (borrow g)) in
        let* α6 : M.Val core.fmt.rt.Argument.t := M.alloc α5 in
        let* α7 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_display"] (borrow b)) in
        let* α8 : M.Val core.fmt.rt.Argument.t := M.alloc α7 in
        let* α9 : M.Val (array core.fmt.rt.Argument.t) :=
          M.alloc [ α4; α6; α8 ] in
        let* α10 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
          M.alloc (borrow α9) in
        let* α11 : ref (slice core.fmt.rt.Argument.t) :=
          M.read (pointer_coercion "Unsize" α10) in
        let* α12 : core.fmt.Arguments.t :=
          M.call (core.fmt.Arguments.t::["new_v1"] α2 α11) in
        let* α13 : unit := M.call (std.io.stdio._print α12) in
        M.alloc α13 in
      M.alloc tt
    | match_destructuring_enums.Color.HSV h s v =>
      let* v := M.alloc v in
      let* s := M.alloc s in
      let* h := M.alloc h in
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc
            [
              mk_str "Hue: ";
              mk_str ", saturation: ";
              mk_str ", value: ";
              mk_str "!
"
            ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_display"] (borrow h)) in
        let* α4 : M.Val core.fmt.rt.Argument.t := M.alloc α3 in
        let* α5 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_display"] (borrow s)) in
        let* α6 : M.Val core.fmt.rt.Argument.t := M.alloc α5 in
        let* α7 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_display"] (borrow v)) in
        let* α8 : M.Val core.fmt.rt.Argument.t := M.alloc α7 in
        let* α9 : M.Val (array core.fmt.rt.Argument.t) :=
          M.alloc [ α4; α6; α8 ] in
        let* α10 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
          M.alloc (borrow α9) in
        let* α11 : ref (slice core.fmt.rt.Argument.t) :=
          M.read (pointer_coercion "Unsize" α10) in
        let* α12 : core.fmt.Arguments.t :=
          M.call (core.fmt.Arguments.t::["new_v1"] α2 α11) in
        let* α13 : unit := M.call (std.io.stdio._print α12) in
        M.alloc α13 in
      M.alloc tt
    | match_destructuring_enums.Color.HSL h s l =>
      let* l := M.alloc l in
      let* s := M.alloc s in
      let* h := M.alloc h in
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc
            [
              mk_str "Hue: ";
              mk_str ", saturation: ";
              mk_str ", lightness: ";
              mk_str "!
"
            ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_display"] (borrow h)) in
        let* α4 : M.Val core.fmt.rt.Argument.t := M.alloc α3 in
        let* α5 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_display"] (borrow s)) in
        let* α6 : M.Val core.fmt.rt.Argument.t := M.alloc α5 in
        let* α7 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_display"] (borrow l)) in
        let* α8 : M.Val core.fmt.rt.Argument.t := M.alloc α7 in
        let* α9 : M.Val (array core.fmt.rt.Argument.t) :=
          M.alloc [ α4; α6; α8 ] in
        let* α10 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
          M.alloc (borrow α9) in
        let* α11 : ref (slice core.fmt.rt.Argument.t) :=
          M.read (pointer_coercion "Unsize" α10) in
        let* α12 : core.fmt.Arguments.t :=
          M.call (core.fmt.Arguments.t::["new_v1"] α2 α11) in
        let* α13 : unit := M.call (std.io.stdio._print α12) in
        M.alloc α13 in
      M.alloc tt
    | match_destructuring_enums.Color.CMY c m y =>
      let* y := M.alloc y in
      let* m := M.alloc m in
      let* c := M.alloc c in
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc
            [
              mk_str "Cyan: ";
              mk_str ", magenta: ";
              mk_str ", yellow: ";
              mk_str "!
"
            ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_display"] (borrow c)) in
        let* α4 : M.Val core.fmt.rt.Argument.t := M.alloc α3 in
        let* α5 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_display"] (borrow m)) in
        let* α6 : M.Val core.fmt.rt.Argument.t := M.alloc α5 in
        let* α7 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_display"] (borrow y)) in
        let* α8 : M.Val core.fmt.rt.Argument.t := M.alloc α7 in
        let* α9 : M.Val (array core.fmt.rt.Argument.t) :=
          M.alloc [ α4; α6; α8 ] in
        let* α10 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
          M.alloc (borrow α9) in
        let* α11 : ref (slice core.fmt.rt.Argument.t) :=
          M.read (pointer_coercion "Unsize" α10) in
        let* α12 : core.fmt.Arguments.t :=
          M.call (core.fmt.Arguments.t::["new_v1"] α2 α11) in
        let* α13 : unit := M.call (std.io.stdio._print α12) in
        M.alloc α13 in
      M.alloc tt
    | match_destructuring_enums.Color.CMYK c m y k =>
      let* k := M.alloc k in
      let* y := M.alloc y in
      let* m := M.alloc m in
      let* c := M.alloc c in
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc
            [
              mk_str "Cyan: ";
              mk_str ", magenta: ";
              mk_str ", yellow: ";
              mk_str ", key (black): ";
              mk_str "!
"
            ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_display"] (borrow c)) in
        let* α4 : M.Val core.fmt.rt.Argument.t := M.alloc α3 in
        let* α5 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_display"] (borrow m)) in
        let* α6 : M.Val core.fmt.rt.Argument.t := M.alloc α5 in
        let* α7 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_display"] (borrow y)) in
        let* α8 : M.Val core.fmt.rt.Argument.t := M.alloc α7 in
        let* α9 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_display"] (borrow k)) in
        let* α10 : M.Val core.fmt.rt.Argument.t := M.alloc α9 in
        let* α11 : M.Val (array core.fmt.rt.Argument.t) :=
          M.alloc [ α4; α6; α8; α10 ] in
        let* α12 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
          M.alloc (borrow α11) in
        let* α13 : ref (slice core.fmt.rt.Argument.t) :=
          M.read (pointer_coercion "Unsize" α12) in
        let* α14 : core.fmt.Arguments.t :=
          M.call (core.fmt.Arguments.t::["new_v1"] α2 α13) in
        let* α15 : unit := M.call (std.io.stdio._print α14) in
        M.alloc α15 in
      M.alloc tt
    end in
  M.read α0.