(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Foo.
Section Foo.
  Record t : Set := {
    x : u32.t * u32.t;
    y : u32.t;
  }.
  
  Global Instance Get_x : Notations.Dot "x" := {
    Notations.dot := Ref.map (fun x' => x'.(x)) (fun v x' => x' <| x := v |>);
  }.
  Global Instance Get_AF_x : Notations.DoubleColon t "x" := {
    Notations.double_colon (x' : M.Val t) := x'.["x"];
  }.
  Global Instance Get_y : Notations.Dot "y" := {
    Notations.dot := Ref.map (fun x => x.(y)) (fun v x => x <| y := v |>);
  }.
  Global Instance Get_AF_y : Notations.DoubleColon t "y" := {
    Notations.double_colon (x : M.Val t) := x.["y"];
  }.
End Foo.
End Foo.

(*
fn main() {
    // Try changing the values in the struct to see what happens
    let foo = Foo { x: (1, 2), y: 3 };

    match foo {
        Foo { x: (1, b), y } => println!("First of x is 1, b = {},  y = {} ", b, y),

        // you can destructure structs and rename the variables,
        // the order is not important
        Foo { y: 2, x: i } => println!("y is 2, i = {:?}", i),

        // and you can also ignore some variables:
        Foo { y, .. } => println!("y = {}, we don't care about x", y),
        // this will give an error: pattern does not mention field `x`
        //Foo { y } => println!("y = {}", y),
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* foo : M.Val match_destructuring_structs.Foo.t :=
    M.alloc
      {|
        match_destructuring_structs.Foo.x := (Integer.of_Z 1, Integer.of_Z 2);
        match_destructuring_structs.Foo.y := Integer.of_Z 3;
      |} in
  let* α0 : match_destructuring_structs.Foo.t := M.read foo in
  let* α0 : M.Val unit :=
    match α0 with
    |
        {|
          match_destructuring_structs.Foo.x := (_, b);
          match_destructuring_structs.Foo.y := y;
        |}
        =>
      let* y := M.alloc y in
      let* b := M.alloc b in
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc
            [ mk_str "First of x is 1, b = "; mk_str ",  y = "; mk_str " 
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_display"] (borrow b)) in
        let* α4 : M.Val core.fmt.rt.Argument.t := M.alloc α3 in
        let* α5 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_display"] (borrow y)) in
        let* α6 : M.Val core.fmt.rt.Argument.t := M.alloc α5 in
        let* α7 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4; α6 ] in
        let* α8 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
          M.alloc (borrow α7) in
        let* α9 : ref (slice core.fmt.rt.Argument.t) :=
          M.read (pointer_coercion "Unsize" α8) in
        let* α10 : core.fmt.Arguments.t :=
          M.call (core.fmt.Arguments.t::["new_v1"] α2 α9) in
        let* α11 : unit := M.call (std.io.stdio._print α10) in
        M.alloc α11 in
      M.alloc tt
    |
        {|
          match_destructuring_structs.Foo.y := _;
          match_destructuring_structs.Foo.x := i;
        |}
        =>
      let* i := M.alloc i in
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "y is 2, i = "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow i)) in
        let* α4 : M.Val core.fmt.rt.Argument.t := M.alloc α3 in
        let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
        let* α6 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
          M.alloc (borrow α5) in
        let* α7 : ref (slice core.fmt.rt.Argument.t) :=
          M.read (pointer_coercion "Unsize" α6) in
        let* α8 : core.fmt.Arguments.t :=
          M.call (core.fmt.Arguments.t::["new_v1"] α2 α7) in
        let* α9 : unit := M.call (std.io.stdio._print α8) in
        M.alloc α9 in
      M.alloc tt
    | {| match_destructuring_structs.Foo.y := y; |} =>
      let* y := M.alloc y in
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "y = "; mk_str ", we don't care about x
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_display"] (borrow y)) in
        let* α4 : M.Val core.fmt.rt.Argument.t := M.alloc α3 in
        let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
        let* α6 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
          M.alloc (borrow α5) in
        let* α7 : ref (slice core.fmt.rt.Argument.t) :=
          M.read (pointer_coercion "Unsize" α6) in
        let* α8 : core.fmt.Arguments.t :=
          M.call (core.fmt.Arguments.t::["new_v1"] α2 α7) in
        let* α9 : unit := M.call (std.io.stdio._print α8) in
        M.alloc α9 in
      M.alloc tt
    end in
  M.read α0.