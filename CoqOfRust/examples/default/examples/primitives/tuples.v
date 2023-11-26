(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn reverse(pair: (i32, bool)) -> (bool, i32) {
    // `let` can be used to bind the members of a tuple to variables
    let (int_param, bool_param) = pair;

    (bool_param, int_param)
}
*)
Definition reverse (pair : M.Val (i32.t * bool.t)) : M (bool.t * i32.t) :=
  M.function_body
    (let* '(int_param, bool_param) : ltac:(refine (M.Val (i32.t * bool.t))) :=
      M.copy pair in
    let* α0 := M.read bool_param in
    let* α1 := M.read int_param in
    M.alloc (α0, α1)).

Module  Matrix.
Section Matrix.
  Record t : Set := {
    x0 : f32.t;
    x1 : f32.t;
    x2 : f32.t;
    x3 : f32.t;
  }.
  
  Global Instance Get_0 : Notations.Dot "0" := {
    Notations.dot := Ref.map (fun x => x.(x0)) (fun v x => x <| x0 := v |>);
  }.
  Global Instance Get_1 : Notations.Dot "1" := {
    Notations.dot := Ref.map (fun x => x.(x1)) (fun v x => x <| x1 := v |>);
  }.
  Global Instance Get_2 : Notations.Dot "2" := {
    Notations.dot := Ref.map (fun x => x.(x2)) (fun v x => x <| x2 := v |>);
  }.
  Global Instance Get_3 : Notations.Dot "3" := {
    Notations.dot := Ref.map (fun x => x.(x3)) (fun v x => x <| x3 := v |>);
  }.
End Matrix.
End Matrix.

Module  Impl_core_fmt_Debug_for_tuples_Matrix_t.
Section Impl_core_fmt_Debug_for_tuples_Matrix_t.
  Ltac Self := exact tuples.Matrix.t.
  
  (*
  Debug
  *)
  Definition fmt
      (self : M.Val (ref ltac:(Self)))
      (f : M.Val (mut_ref core.fmt.Formatter.t))
      : M ltac:(core.fmt.Result) :=
    M.function_body
      (let* α0 : ltac:(refine (M.Val core.fmt.Formatter.t)) := deref f in
      let* α1 : ltac:(refine (M.Val (mut_ref core.fmt.Formatter.t))) :=
        borrow_mut α0 in
      let* α2 : ltac:(refine (M.Val str.t)) := deref (mk_str "Matrix") in
      let* α3 : ltac:(refine (M.Val (ref str.t))) := borrow α2 in
      let* α4 : ltac:(refine (M.Val tuples.Matrix.t)) := deref self in
      let* α5 : ltac:(refine (M.Val (ref f32.t))) := borrow α4.["0"] in
      let* α6 : ltac:(refine (M.Val (ref type not implemented))) :=
        pointer_coercion "Unsize" α5 in
      let* α7 : ltac:(refine (M.Val tuples.Matrix.t)) := deref self in
      let* α8 : ltac:(refine (M.Val (ref f32.t))) := borrow α7.["1"] in
      let* α9 : ltac:(refine (M.Val (ref type not implemented))) :=
        pointer_coercion "Unsize" α8 in
      let* α10 : ltac:(refine (M.Val tuples.Matrix.t)) := deref self in
      let* α11 : ltac:(refine (M.Val (ref f32.t))) := borrow α10.["2"] in
      let* α12 : ltac:(refine (M.Val (ref type not implemented))) :=
        pointer_coercion "Unsize" α11 in
      let* α13 : ltac:(refine (M.Val tuples.Matrix.t)) := deref self in
      let* α14 : ltac:(refine (M.Val (ref f32.t))) := borrow α13.["3"] in
      let* α15 : ltac:(refine (M.Val (ref (ref f32.t)))) := borrow α14 in
      let* α16 : ltac:(refine (M.Val (ref type not implemented))) :=
        pointer_coercion "Unsize" α15 in
      let* α17 :=
        core.fmt.Formatter.t::["debug_tuple_field4_finish"]
          α1
          α3
          α6
          α9
          α12
          α16 in
      M.alloc α17).
  
  Global Instance AssociatedFunction_fmt :
    Notations.DoubleColon ltac:(Self) "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait ltac:(Self) := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_tuples_Matrix_t.
End Impl_core_fmt_Debug_for_tuples_Matrix_t.

(*
fn main() {
    // A tuple with a bunch of different types
    let long_tuple = (1u8, 2u16, 3u32, 4u64,
                      -1i8, -2i16, -3i32, -4i64,
                      0.1f32, 0.2f64,
                      'a', true);

    // Values can be extracted from the tuple using tuple indexing
    println!("long tuple first value: {}", long_tuple.0);
    println!("long tuple second value: {}", long_tuple.1);

    // Tuples can be tuple members
    let tuple_of_tuples = ((1u8, 2u16, 2u32), (4u64, -1i8), -2i16);

    // Tuples are printable
    println!("tuple of tuples: {:?}", tuple_of_tuples);
    
    // But long Tuples (more than 12 elements) cannot be printed
    // let too_long_tuple = (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13);
    // println!("too long tuple: {:?}", too_long_tuple);
    // TODO ^ Uncomment the above 2 lines to see the compiler error

    let pair = (1, true);
    println!("pair is {:?}", pair);

    println!("the reversed pair is {:?}", reverse(pair));

    // To create one element tuples, the comma is required to tell them apart
    // from a literal surrounded by parentheses
    println!("one element tuple: {:?}", (5u32,));
    println!("just an integer: {:?}", (5u32));

    //tuples can be destructured to create bindings
    let tuple = (1, "hello", 4.5, true);

    let (a, b, c, d) = tuple;
    println!("{:?}, {:?}, {:?}, {:?}", a, b, c, d);

    let matrix = Matrix(1.1, 1.2, 2.1, 2.2);
    println!("{:?}", matrix);

}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* long_tuple :
        ltac:(refine
          (M.Val
            (((((((((((u8.t * u16.t) * u32.t) * u64.t) * i8.t) * i16.t) * i32.t)
            *
            i64.t)
            *
            f32.t)
            *
            f64.t)
            *
            char.t)
            *
            bool.t))) :=
      let* α0 : ltac:(refine (M.Val u8.t)) := M.alloc 1 in
      let* α1 := M.read α0 in
      let* α2 : ltac:(refine (M.Val u16.t)) := M.alloc 2 in
      let* α3 := M.read α2 in
      let* α4 : ltac:(refine (M.Val u32.t)) := M.alloc 3 in
      let* α5 := M.read α4 in
      let* α6 : ltac:(refine (M.Val u64.t)) := M.alloc 4 in
      let* α7 := M.read α6 in
      let* α8 : ltac:(refine (M.Val i8.t)) := M.alloc (- 1) in
      let* α9 := M.read α8 in
      let* α10 : ltac:(refine (M.Val i16.t)) := M.alloc (- 2) in
      let* α11 := M.read α10 in
      let* α12 : ltac:(refine (M.Val i32.t)) := M.alloc (- 3) in
      let* α13 := M.read α12 in
      let* α14 : ltac:(refine (M.Val i64.t)) := M.alloc (- 4) in
      let* α15 := M.read α14 in
      let* α16 : ltac:(refine (M.Val f32.t)) := M.alloc 0 (* 0.1 *) in
      let* α17 := M.read α16 in
      let* α18 : ltac:(refine (M.Val f64.t)) := M.alloc 0 (* 0.2 *) in
      let* α19 := M.read α18 in
      let* α20 : ltac:(refine (M.Val char.t)) := M.alloc "a"%char in
      let* α21 := M.read α20 in
      let* α22 : ltac:(refine (M.Val bool.t)) := M.alloc true in
      let* α23 := M.read α22 in
      M.alloc (α1, α3, α5, α7, α9, α11, α13, α15, α17, α19, α21, α23) in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "long tuple first value: "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref u8.t))) := borrow "Unknown Field" in
        let* α4 := core.fmt.rt.Argument.t::["new_display"] α3 in
        let* α5 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α4 in
        let* α6 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α5 ] in
        let* α7 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α6 in
        let* α8 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α7 in
        let* α9 := core.fmt.Arguments.t::["new_v1"] α2 α8 in
        let* α10 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α9 in
        let* α11 := std.io.stdio._print α10 in
        M.alloc α11 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "long tuple second value: "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref u16.t))) := borrow "Unknown Field" in
        let* α4 := core.fmt.rt.Argument.t::["new_display"] α3 in
        let* α5 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α4 in
        let* α6 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α5 ] in
        let* α7 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α6 in
        let* α8 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α7 in
        let* α9 := core.fmt.Arguments.t::["new_v1"] α2 α8 in
        let* α10 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α9 in
        let* α11 := std.io.stdio._print α10 in
        M.alloc α11 in
      M.alloc tt in
    let* tuple_of_tuples :
        ltac:(refine
          (M.Val ((((u8.t * u16.t) * u32.t) * (u64.t * i8.t)) * i16.t))) :=
      let* α0 : ltac:(refine (M.Val u8.t)) := M.alloc 1 in
      let* α1 := M.read α0 in
      let* α2 : ltac:(refine (M.Val u16.t)) := M.alloc 2 in
      let* α3 := M.read α2 in
      let* α4 : ltac:(refine (M.Val u32.t)) := M.alloc 2 in
      let* α5 := M.read α4 in
      let* α6 : ltac:(refine (M.Val u64.t)) := M.alloc 4 in
      let* α7 := M.read α6 in
      let* α8 : ltac:(refine (M.Val i8.t)) := M.alloc (- 1) in
      let* α9 := M.read α8 in
      let* α10 : ltac:(refine (M.Val i16.t)) := M.alloc (- 2) in
      let* α11 := M.read α10 in
      M.alloc ((α1, α3, α5), (α7, α9), α11) in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "tuple of tuples: "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 :
            ltac:(refine
              (M.Val
                (ref ((((u8.t * u16.t) * u32.t) * (u64.t * i8.t)) * i16.t)))) :=
          borrow tuple_of_tuples in
        let* α4 := core.fmt.rt.Argument.t::["new_debug"] α3 in
        let* α5 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α4 in
        let* α6 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α5 ] in
        let* α7 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α6 in
        let* α8 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α7 in
        let* α9 := core.fmt.Arguments.t::["new_v1"] α2 α8 in
        let* α10 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α9 in
        let* α11 := std.io.stdio._print α10 in
        M.alloc α11 in
      M.alloc tt in
    let* pair : ltac:(refine (M.Val (i32.t * bool.t))) :=
      let* α0 : ltac:(refine (M.Val i32.t)) := M.alloc 1 in
      let* α1 := M.read α0 in
      let* α2 : ltac:(refine (M.Val bool.t)) := M.alloc true in
      let* α3 := M.read α2 in
      M.alloc (α1, α3) in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "pair is "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref (i32.t * bool.t)))) := borrow pair in
        let* α4 := core.fmt.rt.Argument.t::["new_debug"] α3 in
        let* α5 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α4 in
        let* α6 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α5 ] in
        let* α7 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α6 in
        let* α8 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α7 in
        let* α9 := core.fmt.Arguments.t::["new_v1"] α2 α8 in
        let* α10 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α9 in
        let* α11 := std.io.stdio._print α10 in
        M.alloc α11 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "the reversed pair is "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := tuples.reverse pair in
        let* α4 : ltac:(refine (M.Val (bool.t * i32.t))) := M.alloc α3 in
        let* α5 : ltac:(refine (M.Val (ref (bool.t * i32.t)))) := borrow α4 in
        let* α6 := core.fmt.rt.Argument.t::["new_debug"] α5 in
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
          M.alloc [ mk_str "one element tuple: "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val u32.t)) := M.alloc 5 in
        let* α4 := M.read α3 in
        let* α5 : ltac:(refine (M.Val u32.t)) := M.alloc (α4) in
        let* α6 : ltac:(refine (M.Val (ref u32.t))) := borrow α5 in
        let* α7 := core.fmt.rt.Argument.t::["new_debug"] α6 in
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
          M.alloc [ mk_str "just an integer: "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val u32.t)) := M.alloc 5 in
        let* α4 : ltac:(refine (M.Val (ref u32.t))) := borrow α3 in
        let* α5 := core.fmt.rt.Argument.t::["new_debug"] α4 in
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
    let* tuple :
        ltac:(refine (M.Val (((i32.t * (ref str.t)) * f64.t) * bool.t))) :=
      let* α0 : ltac:(refine (M.Val i32.t)) := M.alloc 1 in
      let* α1 := M.read α0 in
      let* α2 := M.read (mk_str "hello") in
      let* α3 : ltac:(refine (M.Val f64.t)) := M.alloc 5 (* 4.5 *) in
      let* α4 := M.read α3 in
      let* α5 : ltac:(refine (M.Val bool.t)) := M.alloc true in
      let* α6 := M.read α5 in
      M.alloc (α1, α2, α4, α6) in
    let* '(a, b, c, d) :
        ltac:(refine (M.Val (((i32.t * (ref str.t)) * f64.t) * bool.t))) :=
      M.copy tuple in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc
            [ mk_str ""; mk_str ", "; mk_str ", "; mk_str ", "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref i32.t))) := borrow a in
        let* α4 := core.fmt.rt.Argument.t::["new_debug"] α3 in
        let* α5 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α4 in
        let* α6 : ltac:(refine (M.Val (ref (ref str.t)))) := borrow b in
        let* α7 := core.fmt.rt.Argument.t::["new_debug"] α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α7 in
        let* α9 : ltac:(refine (M.Val (ref f64.t))) := borrow c in
        let* α10 := core.fmt.rt.Argument.t::["new_debug"] α9 in
        let* α11 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          M.alloc α10 in
        let* α12 : ltac:(refine (M.Val (ref bool.t))) := borrow d in
        let* α13 := core.fmt.rt.Argument.t::["new_debug"] α12 in
        let* α14 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          M.alloc α13 in
        let* α15 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α5; α8; α11; α14 ] in
        let* α16 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α15 in
        let* α17 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α16 in
        let* α18 := core.fmt.Arguments.t::["new_v1"] α2 α17 in
        let* α19 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α18 in
        let* α20 := std.io.stdio._print α19 in
        M.alloc α20 in
      M.alloc tt in
    let* matrix : ltac:(refine (M.Val tuples.Matrix.t)) :=
      let* α0 : ltac:(refine (M.Val f32.t)) := M.alloc 1 (* 1.1 *) in
      let* α1 := M.read α0 in
      let* α2 : ltac:(refine (M.Val f32.t)) := M.alloc 1 (* 1.2 *) in
      let* α3 := M.read α2 in
      let* α4 : ltac:(refine (M.Val f32.t)) := M.alloc 2 (* 2.1 *) in
      let* α5 := M.read α4 in
      let* α6 : ltac:(refine (M.Val f32.t)) := M.alloc 2 (* 2.2 *) in
      let* α7 := M.read α6 in
      M.alloc (tuples.Matrix.Build_t α1 α3 α5 α7) in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str ""; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref tuples.Matrix.t))) :=
          borrow matrix in
        let* α4 := core.fmt.rt.Argument.t::["new_debug"] α3 in
        let* α5 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α4 in
        let* α6 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α5 ] in
        let* α7 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α6 in
        let* α8 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α7 in
        let* α9 := core.fmt.Arguments.t::["new_v1"] α2 α8 in
        let* α10 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α9 in
        let* α11 := std.io.stdio._print α10 in
        M.alloc α11 in
      M.alloc tt in
    M.alloc tt).
