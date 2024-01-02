(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    // Integer addition
    println!("1 + 2 = {}", 1u32 + 2);

    // Integer subtraction
    println!("1 - 2 = {}", 1i32 - 2);
    // TODO ^ Try changing `1i32` to `1u32` to see why the type is important

    // Short-circuiting boolean logic
    println!("true AND false is {}", true && false);
    println!("true OR false is {}", true || false);
    println!("NOT true is {}", !true);

    // Bitwise operations
    println!("0011 AND 0101 is {:04b}", 0b0011u32 & 0b0101);
    println!("0011 OR 0101 is {:04b}", 0b0011u32 | 0b0101);
    println!("0011 XOR 0101 is {:04b}", 0b0011u32 ^ 0b0101);
    println!("1 << 5 is {}", 1u32 << 5);
    println!("0x80 >> 2 is 0x{:x}", 0x80u32 >> 2);

    // Use underscores to improve readability!
    println!("One million is written as {}", 1_000_000u32);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "1 + 2 = ") in
      let* α1 : ref str.t := M.read (mk_str "\n") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
      let* α4 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α3) in
      let* α5 : u32.t := BinOp.Panic.add (Integer.of_Z 1) (Integer.of_Z 2) in
      let* α6 : M.Val u32.t := M.alloc α5 in
      let* α7 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α6)) in
      let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
      let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α8) in
      let* α10 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α9) in
      let* α11 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α4 α10) in
      let* α12 : unit := M.call (std.io.stdio._print α11) in
      M.alloc α12 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "1 - 2 = ") in
      let* α1 : ref str.t := M.read (mk_str "\n") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
      let* α4 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α3) in
      let* α5 : i32.t := BinOp.Panic.sub (Integer.of_Z 1) (Integer.of_Z 2) in
      let* α6 : M.Val i32.t := M.alloc α5 in
      let* α7 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α6)) in
      let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
      let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α8) in
      let* α10 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α9) in
      let* α11 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α4 α10) in
      let* α12 : unit := M.call (std.io.stdio._print α11) in
      M.alloc α12 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "true AND false is ") in
      let* α1 : ref str.t := M.read (mk_str "\n") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
      let* α4 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α3) in
      let* α5 : M.Val bool.t := M.alloc (BinOp.Pure.and true false) in
      let* α6 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α5)) in
      let* α7 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α6 ] in
      let* α8 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α7) in
      let* α9 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α8) in
      let* α10 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α4 α9) in
      let* α11 : unit := M.call (std.io.stdio._print α10) in
      M.alloc α11 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "true OR false is ") in
      let* α1 : ref str.t := M.read (mk_str "\n") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
      let* α4 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α3) in
      let* α5 : M.Val bool.t := M.alloc (BinOp.Pure.or true false) in
      let* α6 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α5)) in
      let* α7 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α6 ] in
      let* α8 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α7) in
      let* α9 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α8) in
      let* α10 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α4 α9) in
      let* α11 : unit := M.call (std.io.stdio._print α10) in
      M.alloc α11 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "NOT true is ") in
      let* α1 : ref str.t := M.read (mk_str "\n") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
      let* α4 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α3) in
      let* α5 : M.Val bool.t := M.alloc (UnOp.not true) in
      let* α6 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α5)) in
      let* α7 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α6 ] in
      let* α8 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α7) in
      let* α9 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α8) in
      let* α10 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α4 α9) in
      let* α11 : unit := M.call (std.io.stdio._print α10) in
      M.alloc α11 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "0011 AND 0101 is ") in
      let* α1 : ref str.t := M.read (mk_str "\n") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
      let* α4 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α3) in
      let* α5 : M.Val u32.t :=
        M.alloc (BinOp.Pure.bit_and (Integer.of_Z 3) (Integer.of_Z 5)) in
      let* α6 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_binary"] (borrow α5)) in
      let* α7 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α6 ] in
      let* α8 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α7) in
      let* α9 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α8) in
      let* α10 : core.fmt.rt.Placeholder.t :=
        M.call
          (core.fmt.rt.Placeholder.t::["new"]
            (Integer.of_Z 0)
            " "%char
            core.fmt.rt.Alignment.Unknown
            (Integer.of_Z 8)
            core.fmt.rt.Count.Implied
            (core.fmt.rt.Count.Is (Integer.of_Z 4))) in
      let* α11 : M.Val (array core.fmt.rt.Placeholder.t) := M.alloc [ α10 ] in
      let* α12 : M.Val (ref (array core.fmt.rt.Placeholder.t)) :=
        M.alloc (borrow α11) in
      let* α13 : ref (slice core.fmt.rt.Placeholder.t) :=
        M.read (pointer_coercion "Unsize" α12) in
      let* α14 : core.fmt.rt.UnsafeArg.t :=
        M.call core.fmt.rt.UnsafeArg.t::["new"] in
      let* α15 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1_formatted"] α4 α9 α13 α14) in
      let* α16 : unit := M.call (std.io.stdio._print α15) in
      M.alloc α16 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "0011 OR 0101 is ") in
      let* α1 : ref str.t := M.read (mk_str "\n") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
      let* α4 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α3) in
      let* α5 : M.Val u32.t :=
        M.alloc (BinOp.Pure.bit_or (Integer.of_Z 3) (Integer.of_Z 5)) in
      let* α6 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_binary"] (borrow α5)) in
      let* α7 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α6 ] in
      let* α8 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α7) in
      let* α9 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α8) in
      let* α10 : core.fmt.rt.Placeholder.t :=
        M.call
          (core.fmt.rt.Placeholder.t::["new"]
            (Integer.of_Z 0)
            " "%char
            core.fmt.rt.Alignment.Unknown
            (Integer.of_Z 8)
            core.fmt.rt.Count.Implied
            (core.fmt.rt.Count.Is (Integer.of_Z 4))) in
      let* α11 : M.Val (array core.fmt.rt.Placeholder.t) := M.alloc [ α10 ] in
      let* α12 : M.Val (ref (array core.fmt.rt.Placeholder.t)) :=
        M.alloc (borrow α11) in
      let* α13 : ref (slice core.fmt.rt.Placeholder.t) :=
        M.read (pointer_coercion "Unsize" α12) in
      let* α14 : core.fmt.rt.UnsafeArg.t :=
        M.call core.fmt.rt.UnsafeArg.t::["new"] in
      let* α15 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1_formatted"] α4 α9 α13 α14) in
      let* α16 : unit := M.call (std.io.stdio._print α15) in
      M.alloc α16 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "0011 XOR 0101 is ") in
      let* α1 : ref str.t := M.read (mk_str "\n") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
      let* α4 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α3) in
      let* α5 : M.Val u32.t :=
        M.alloc (BinOp.Pure.bit_xor (Integer.of_Z 3) (Integer.of_Z 5)) in
      let* α6 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_binary"] (borrow α5)) in
      let* α7 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α6 ] in
      let* α8 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α7) in
      let* α9 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α8) in
      let* α10 : core.fmt.rt.Placeholder.t :=
        M.call
          (core.fmt.rt.Placeholder.t::["new"]
            (Integer.of_Z 0)
            " "%char
            core.fmt.rt.Alignment.Unknown
            (Integer.of_Z 8)
            core.fmt.rt.Count.Implied
            (core.fmt.rt.Count.Is (Integer.of_Z 4))) in
      let* α11 : M.Val (array core.fmt.rt.Placeholder.t) := M.alloc [ α10 ] in
      let* α12 : M.Val (ref (array core.fmt.rt.Placeholder.t)) :=
        M.alloc (borrow α11) in
      let* α13 : ref (slice core.fmt.rt.Placeholder.t) :=
        M.read (pointer_coercion "Unsize" α12) in
      let* α14 : core.fmt.rt.UnsafeArg.t :=
        M.call core.fmt.rt.UnsafeArg.t::["new"] in
      let* α15 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1_formatted"] α4 α9 α13 α14) in
      let* α16 : unit := M.call (std.io.stdio._print α15) in
      M.alloc α16 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "1 << 5 is ") in
      let* α1 : ref str.t := M.read (mk_str "\n") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
      let* α4 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α3) in
      let* α5 : u32.t := BinOp.Panic.shl (Integer.of_Z 1) (Integer.of_Z 5) in
      let* α6 : M.Val u32.t := M.alloc α5 in
      let* α7 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α6)) in
      let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
      let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α8) in
      let* α10 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α9) in
      let* α11 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α4 α10) in
      let* α12 : unit := M.call (std.io.stdio._print α11) in
      M.alloc α12 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "0x80 >> 2 is 0x") in
      let* α1 : ref str.t := M.read (mk_str "\n") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
      let* α4 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α3) in
      let* α5 : u32.t := BinOp.Panic.shr (Integer.of_Z 128) (Integer.of_Z 2) in
      let* α6 : M.Val u32.t := M.alloc α5 in
      let* α7 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_lower_hex"] (borrow α6)) in
      let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
      let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α8) in
      let* α10 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α9) in
      let* α11 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α4 α10) in
      let* α12 : unit := M.call (std.io.stdio._print α11) in
      M.alloc α12 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t :=
        M.read (mk_str "One million is written as 1000000\n") in
      let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
      let* α2 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α1) in
      let* α3 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α2) in
      let* α4 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ ] in
      let* α5 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α4) in
      let* α6 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α5) in
      let* α7 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α3 α6) in
      let* α8 : unit := M.call (std.io.stdio._print α7) in
      M.alloc α8 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
