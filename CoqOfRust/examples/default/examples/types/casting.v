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
  let* decimal : M.Val f32.t := M.copy (UnsupportedLiteral : M.Val f32.t) in
  let* integer : M.Val u8.t :=
    let* α0 : f32.t := M.read decimal in
    M.alloc (rust_cast α0) in
  let* character : M.Val char.t :=
    let* α0 : u8.t := M.read integer in
    M.alloc (rust_cast α0) in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "Casting: ") in
      let* α1 : ref str.t := M.read (mk_str " -> ") in
      let* α2 : ref str.t := M.read (mk_str " -> ") in
      let* α3 : ref str.t := M.read (mk_str "
") in
      let* α4 : M.Val (array (ref str.t)) := M.alloc [ α0; α1; α2; α3 ] in
      let* α5 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow decimal)) in
      let* α6 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow integer)) in
      let* α7 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow character)) in
      let* α8 : M.Val (array core.fmt.rt.Argument.t) :=
        M.alloc [ α5; α6; α7 ] in
      let* α9 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α4))
            (pointer_coercion "Unsize" (borrow α8))) in
      let* α10 : unit := M.call (std.io.stdio._print α9) in
      M.alloc α10 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "1000 as a u16 is: ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val u16.t := M.alloc ((Integer.of_Z 1000) : u16.t) in
      let* α4 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow (use α3))) in
      let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
      let* α6 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α5))) in
      let* α7 : unit := M.call (std.io.stdio._print α6) in
      M.alloc α7 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "1000 as a u8 is : ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val u8.t := M.alloc ((Integer.of_Z 1000) : u8.t) in
      let* α4 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow (use α3))) in
      let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
      let* α6 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α5))) in
      let* α7 : unit := M.call (std.io.stdio._print α6) in
      M.alloc α7 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "  -1 as a u8 is : ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val u8.t :=
        M.alloc (rust_cast ((Integer.of_Z (-1)) : i8.t)) in
      let* α4 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α3)) in
      let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
      let* α6 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α5))) in
      let* α7 : unit := M.call (std.io.stdio._print α6) in
      M.alloc α7 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "1000 mod 256 is : ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : i32.t :=
        BinOp.Panic.rem
          ((Integer.of_Z 1000) : i32.t)
          ((Integer.of_Z 256) : i32.t) in
      let* α4 : M.Val i32.t := M.alloc α3 in
      let* α5 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α4)) in
      let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
      let* α7 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α6))) in
      let* α8 : unit := M.call (std.io.stdio._print α7) in
      M.alloc α8 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str " 128 as a i16 is: ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val i16.t := M.alloc ((Integer.of_Z 128) : i16.t) in
      let* α4 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow (use α3))) in
      let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
      let* α6 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α5))) in
      let* α7 : unit := M.call (std.io.stdio._print α6) in
      M.alloc α7 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str " 128 as a i8 is : ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val i8.t := M.alloc ((Integer.of_Z 128) : i8.t) in
      let* α4 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow (use α3))) in
      let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
      let* α6 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α5))) in
      let* α7 : unit := M.call (std.io.stdio._print α6) in
      M.alloc α7 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "1000 as a u8 is : ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val u8.t := M.alloc ((Integer.of_Z 1000) : u8.t) in
      let* α4 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow (use α3))) in
      let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
      let* α6 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α5))) in
      let* α7 : unit := M.call (std.io.stdio._print α6) in
      M.alloc α7 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str " 232 as a i8 is : ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val i8.t := M.alloc ((Integer.of_Z 232) : i8.t) in
      let* α4 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow (use α3))) in
      let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
      let* α6 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α5))) in
      let* α7 : unit := M.call (std.io.stdio._print α6) in
      M.alloc α7 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str " 300.0 as u8 is : ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : f32.t := M.read (UnsupportedLiteral : M.Val f32.t) in
      let* α4 : M.Val u8.t := M.alloc (rust_cast α3) in
      let* α5 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α4)) in
      let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
      let* α7 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α6))) in
      let* α8 : unit := M.call (std.io.stdio._print α7) in
      M.alloc α8 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "-100.0 as u8 is : ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : f32.t := M.read (UnsupportedLiteral : M.Val f32.t) in
      let* α4 : M.Val u8.t := M.alloc (rust_cast α3) in
      let* α5 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α4)) in
      let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
      let* α7 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α6))) in
      let* α8 : unit := M.call (std.io.stdio._print α7) in
      M.alloc α8 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "   nan as u8 is : ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : f32.t := M.read core.f32.NAN in
      let* α4 : M.Val u8.t := M.alloc (rust_cast α3) in
      let* α5 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α4)) in
      let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
      let* α7 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α6))) in
      let* α8 : unit := M.call (std.io.stdio._print α7) in
      M.alloc α8 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str " 300.0 as u8 is : ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : f32.t := M.read (UnsupportedLiteral : M.Val f32.t) in
      let* α4 : u8.t := M.call (f32.t::["to_int_unchecked"] α3) in
      let* α5 : M.Val u8.t := M.alloc α4 in
      let* α6 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α5)) in
      let* α7 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α6 ] in
      let* α8 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α7))) in
      let* α9 : unit := M.call (std.io.stdio._print α8) in
      M.alloc α9 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "-100.0 as u8 is : ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : f32.t := M.read (UnsupportedLiteral : M.Val f32.t) in
      let* α4 : u8.t := M.call (f32.t::["to_int_unchecked"] α3) in
      let* α5 : M.Val u8.t := M.alloc α4 in
      let* α6 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α5)) in
      let* α7 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α6 ] in
      let* α8 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α7))) in
      let* α9 : unit := M.call (std.io.stdio._print α8) in
      M.alloc α9 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "   nan as u8 is : ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : f32.t := M.read core.f32.NAN in
      let* α4 : u8.t := M.call (f32.t::["to_int_unchecked"] α3) in
      let* α5 : M.Val u8.t := M.alloc α4 in
      let* α6 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α5)) in
      let* α7 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α6 ] in
      let* α8 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α7))) in
      let* α9 : unit := M.call (std.io.stdio._print α8) in
      M.alloc α9 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
