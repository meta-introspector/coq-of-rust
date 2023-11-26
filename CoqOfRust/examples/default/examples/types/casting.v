(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    let decimal = 65.4321_f32;

    // Error! No implicit conversion
    // let integer: u8 = decimal;
    // FIXME ^ Comment out this line

    // Explicit conversion
    let integer = decimal as u8;
    let character = integer as char;

    // Error! There are limitations in conversion rules.
    // A float cannot be directly converted to a char.
    // let character = decimal as char;
    // FIXME ^ Comment out this line

    println!("Casting: {} -> {} -> {}", decimal, integer, character);

    // when casting any value to an unsigned type, T,
    // T::MAX + 1 is added or subtracted until the value
    // fits into the new type

    // 1000 already fits in a u16
    println!("1000 as a u16 is: {}", 1000 as u16);

    // 1000 - 256 - 256 - 256 = 232
    // Under the hood, the first 8 least significant bits (LSB) are kept,
    // while the rest towards the most significant bit (MSB) get truncated.
    println!("1000 as a u8 is : {}", 1000 as u8);
    // -1 + 256 = 255
    println!("  -1 as a u8 is : {}", (-1i8) as u8);

    // For positive numbers, this is the same as the modulus
    println!("1000 mod 256 is : {}", 1000 % 256);

    // When casting to a signed type, the (bitwise) result is the same as
    // first casting to the corresponding unsigned type. If the most significant
    // bit of that value is 1, then the value is negative.

    // Unless it already fits, of course.
    println!(" 128 as a i16 is: {}", 128 as i16);

    // 128 as u8 -> 128, whose value in 8-bit two's complement representation is:
    println!(" 128 as a i8 is : {}", 128 as i8);

    // repeating the example above
    // 1000 as u8 -> 232
    println!("1000 as a u8 is : {}", 1000 as u8);
    // and the value of 232 in 8-bit two's complement representation is -24
    println!(" 232 as a i8 is : {}", 232 as i8);

    // Since Rust 1.45, the `as` keyword performs a *saturating cast*
    // when casting from float to int. If the floating point value exceeds
    // the upper bound or is less than the lower bound, the returned value
    // will be equal to the bound crossed.

    // 300.0 as u8 is 255
    println!(" 300.0 as u8 is : {}", 300.0_f32 as u8);
    // -100.0 as u8 is 0
    println!("-100.0 as u8 is : {}", -100.0_f32 as u8);
    // nan as u8 is 0
    println!("   nan as u8 is : {}", f32::NAN as u8);

    // This behavior incurs a small runtime cost and can be avoided
    // with unsafe methods, however the results might overflow and
    // return **unsound values**. Use these methods wisely:
    unsafe {
        // 300.0 as u8 is 44
        println!(" 300.0 as u8 is : {}", 300.0_f32.to_int_unchecked::<u8>());
        // -100.0 as u8 is 156
        println!(
            "-100.0 as u8 is : {}",
            (-100.0_f32).to_int_unchecked::<u8>()
        );
        // nan as u8 is 0
        println!("   nan as u8 is : {}", f32::NAN.to_int_unchecked::<u8>());
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* decimal : ltac:(refine (M.Val f32.t)) :=
      let* α0 : ltac:(refine (M.Val f32.t)) := M.alloc 65 (* 65.4321 *) in
      M.copy α0 in
    let* integer : ltac:(refine (M.Val u8.t)) :=
      let* α0 : ltac:(refine (M.Val u8.t)) := cast decimal in
      M.copy α0 in
    let* character : ltac:(refine (M.Val char.t)) :=
      let* α0 : ltac:(refine (M.Val char.t)) := cast integer in
      M.copy α0 in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc
            [ mk_str "Casting: "; mk_str " -> "; mk_str " -> "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref f32.t))) := borrow decimal in
        let* α4 := core.fmt.rt.Argument.t::["new_display"] α3 in
        let* α5 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α4 in
        let* α6 : ltac:(refine (M.Val (ref u8.t))) := borrow integer in
        let* α7 := core.fmt.rt.Argument.t::["new_display"] α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α7 in
        let* α9 : ltac:(refine (M.Val (ref char.t))) := borrow character in
        let* α10 := core.fmt.rt.Argument.t::["new_display"] α9 in
        let* α11 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          M.alloc α10 in
        let* α12 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α5; α8; α11 ] in
        let* α13 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α12 in
        let* α14 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α13 in
        let* α15 := core.fmt.Arguments.t::["new_v1"] α2 α14 in
        let* α16 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α15 in
        let* α17 := std.io.stdio._print α16 in
        M.alloc α17 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "1000 as a u16 is: "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val u16.t)) := M.alloc 1000 in
        let* α4 : ltac:(refine (M.Val u16.t)) := use α3 in
        let* α5 : ltac:(refine (M.Val (ref u16.t))) := borrow α4 in
        let* α6 := core.fmt.rt.Argument.t::["new_display"] α5 in
        let* α7 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α6 in
        let* α8 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α7 ] in
        let* α9 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α8 in
        let* α10 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α9 in
        let* α11 := core.fmt.Arguments.t::["new_v1"] α2 α10 in
        let* α12 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α11 in
        let* α13 := std.io.stdio._print α12 in
        M.alloc α13 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "1000 as a u8 is : "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val u8.t)) := M.alloc 1000 in
        let* α4 : ltac:(refine (M.Val u8.t)) := use α3 in
        let* α5 : ltac:(refine (M.Val (ref u8.t))) := borrow α4 in
        let* α6 := core.fmt.rt.Argument.t::["new_display"] α5 in
        let* α7 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α6 in
        let* α8 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α7 ] in
        let* α9 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α8 in
        let* α10 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α9 in
        let* α11 := core.fmt.Arguments.t::["new_v1"] α2 α10 in
        let* α12 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α11 in
        let* α13 := std.io.stdio._print α12 in
        M.alloc α13 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "  -1 as a u8 is : "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val i8.t)) := M.alloc (- 1) in
        let* α4 : ltac:(refine (M.Val u8.t)) := cast α3 in
        let* α5 : ltac:(refine (M.Val (ref u8.t))) := borrow α4 in
        let* α6 := core.fmt.rt.Argument.t::["new_display"] α5 in
        let* α7 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α6 in
        let* α8 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α7 ] in
        let* α9 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α8 in
        let* α10 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α9 in
        let* α11 := core.fmt.Arguments.t::["new_v1"] α2 α10 in
        let* α12 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α11 in
        let* α13 := std.io.stdio._print α12 in
        M.alloc α13 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "1000 mod 256 is : "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val i32.t)) := M.alloc 1000 in
        let* α4 : ltac:(refine (M.Val i32.t)) := M.alloc 256 in
        let* α5 : ltac:(refine (M.Val i32.t)) := BinOp.rem α3 α4 in
        let* α6 : ltac:(refine (M.Val (ref i32.t))) := borrow α5 in
        let* α7 := core.fmt.rt.Argument.t::["new_display"] α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α7 in
        let* α9 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α8 ] in
        let* α10 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α9 in
        let* α11 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments.t::["new_v1"] α2 α11 in
        let* α13 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α12 in
        let* α14 := std.io.stdio._print α13 in
        M.alloc α14 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str " 128 as a i16 is: "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val i16.t)) := M.alloc 128 in
        let* α4 : ltac:(refine (M.Val i16.t)) := use α3 in
        let* α5 : ltac:(refine (M.Val (ref i16.t))) := borrow α4 in
        let* α6 := core.fmt.rt.Argument.t::["new_display"] α5 in
        let* α7 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α6 in
        let* α8 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α7 ] in
        let* α9 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α8 in
        let* α10 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α9 in
        let* α11 := core.fmt.Arguments.t::["new_v1"] α2 α10 in
        let* α12 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α11 in
        let* α13 := std.io.stdio._print α12 in
        M.alloc α13 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str " 128 as a i8 is : "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val i8.t)) := M.alloc 128 in
        let* α4 : ltac:(refine (M.Val i8.t)) := use α3 in
        let* α5 : ltac:(refine (M.Val (ref i8.t))) := borrow α4 in
        let* α6 := core.fmt.rt.Argument.t::["new_display"] α5 in
        let* α7 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α6 in
        let* α8 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α7 ] in
        let* α9 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α8 in
        let* α10 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α9 in
        let* α11 := core.fmt.Arguments.t::["new_v1"] α2 α10 in
        let* α12 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α11 in
        let* α13 := std.io.stdio._print α12 in
        M.alloc α13 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "1000 as a u8 is : "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val u8.t)) := M.alloc 1000 in
        let* α4 : ltac:(refine (M.Val u8.t)) := use α3 in
        let* α5 : ltac:(refine (M.Val (ref u8.t))) := borrow α4 in
        let* α6 := core.fmt.rt.Argument.t::["new_display"] α5 in
        let* α7 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α6 in
        let* α8 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α7 ] in
        let* α9 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α8 in
        let* α10 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α9 in
        let* α11 := core.fmt.Arguments.t::["new_v1"] α2 α10 in
        let* α12 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α11 in
        let* α13 := std.io.stdio._print α12 in
        M.alloc α13 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str " 232 as a i8 is : "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val i8.t)) := M.alloc 232 in
        let* α4 : ltac:(refine (M.Val i8.t)) := use α3 in
        let* α5 : ltac:(refine (M.Val (ref i8.t))) := borrow α4 in
        let* α6 := core.fmt.rt.Argument.t::["new_display"] α5 in
        let* α7 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α6 in
        let* α8 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α7 ] in
        let* α9 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α8 in
        let* α10 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α9 in
        let* α11 := core.fmt.Arguments.t::["new_v1"] α2 α10 in
        let* α12 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α11 in
        let* α13 := std.io.stdio._print α12 in
        M.alloc α13 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str " 300.0 as u8 is : "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val f32.t)) := M.alloc 300 (* 300.0 *) in
        let* α4 : ltac:(refine (M.Val u8.t)) := cast α3 in
        let* α5 : ltac:(refine (M.Val (ref u8.t))) := borrow α4 in
        let* α6 := core.fmt.rt.Argument.t::["new_display"] α5 in
        let* α7 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α6 in
        let* α8 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α7 ] in
        let* α9 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α8 in
        let* α10 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α9 in
        let* α11 := core.fmt.Arguments.t::["new_v1"] α2 α10 in
        let* α12 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α11 in
        let* α13 := std.io.stdio._print α12 in
        M.alloc α13 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "-100.0 as u8 is : "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val f32.t)) := M.alloc (- 100 (* 100.0 *)) in
        let* α4 : ltac:(refine (M.Val u8.t)) := cast α3 in
        let* α5 : ltac:(refine (M.Val (ref u8.t))) := borrow α4 in
        let* α6 := core.fmt.rt.Argument.t::["new_display"] α5 in
        let* α7 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α6 in
        let* α8 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α7 ] in
        let* α9 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α8 in
        let* α10 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α9 in
        let* α11 := core.fmt.Arguments.t::["new_v1"] α2 α10 in
        let* α12 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α11 in
        let* α13 := std.io.stdio._print α12 in
        M.alloc α13 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "   nan as u8 is : "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val u8.t)) := cast core.f32.NAN in
        let* α4 : ltac:(refine (M.Val (ref u8.t))) := borrow α3 in
        let* α5 := core.fmt.rt.Argument.t::["new_display"] α4 in
        let* α6 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α5 in
        let* α7 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α6 ] in
        let* α8 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α7 in
        let* α9 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α8 in
        let* α10 := core.fmt.Arguments.t::["new_v1"] α2 α9 in
        let* α11 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α10 in
        let* α12 := std.io.stdio._print α11 in
        M.alloc α12 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str " 300.0 as u8 is : "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val f32.t)) := M.alloc 300 (* 300.0 *) in
        let* α4 := f32.t::["to_int_unchecked"] α3 in
        let* α5 : ltac:(refine (M.Val u8.t)) := M.alloc α4 in
        let* α6 : ltac:(refine (M.Val (ref u8.t))) := borrow α5 in
        let* α7 := core.fmt.rt.Argument.t::["new_display"] α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α7 in
        let* α9 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α8 ] in
        let* α10 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α9 in
        let* α11 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments.t::["new_v1"] α2 α11 in
        let* α13 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α12 in
        let* α14 := std.io.stdio._print α13 in
        M.alloc α14 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "-100.0 as u8 is : "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val f32.t)) := M.alloc (- 100 (* 100.0 *)) in
        let* α4 := f32.t::["to_int_unchecked"] α3 in
        let* α5 : ltac:(refine (M.Val u8.t)) := M.alloc α4 in
        let* α6 : ltac:(refine (M.Val (ref u8.t))) := borrow α5 in
        let* α7 := core.fmt.rt.Argument.t::["new_display"] α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α7 in
        let* α9 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α8 ] in
        let* α10 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α9 in
        let* α11 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments.t::["new_v1"] α2 α11 in
        let* α13 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α12 in
        let* α14 := std.io.stdio._print α13 in
        M.alloc α14 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "   nan as u8 is : "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := f32.t::["to_int_unchecked"] core.f32.NAN in
        let* α4 : ltac:(refine (M.Val u8.t)) := M.alloc α3 in
        let* α5 : ltac:(refine (M.Val (ref u8.t))) := borrow α4 in
        let* α6 := core.fmt.rt.Argument.t::["new_display"] α5 in
        let* α7 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α6 in
        let* α8 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α7 ] in
        let* α9 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α8 in
        let* α10 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α9 in
        let* α11 := core.fmt.Arguments.t::["new_v1"] α2 α10 in
        let* α12 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α11 in
        let* α13 := std.io.stdio._print α12 in
        M.alloc α13 in
      M.alloc tt in
    M.alloc tt).
