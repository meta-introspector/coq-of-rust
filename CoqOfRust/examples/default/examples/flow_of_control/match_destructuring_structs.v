(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Foo.
Section Foo.
  Record t : Set := {
    x : u32.t * u32.t;
    y : u32.t;
  }.
  
  Global Instance Get_x : Notations.Dot "x" := {
    Notations.dot :=
      Ref.map (fun α => Some α.(x)) (fun β α => Some (α <| x := β |>));
  }.
  Global Instance Get_AF_x : Notations.DoubleColon t "x" := {
    Notations.double_colon (α : M.Val t) := α.["x"];
  }.
  Global Instance Get_y : Notations.Dot "y" := {
    Notations.dot :=
      Ref.map (fun α => Some α.(y)) (fun β α => Some (α <| y := β |>));
  }.
  Global Instance Get_AF_y : Notations.DoubleColon t "y" := {
    Notations.double_colon (α : M.Val t) := α.["y"];
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
  let* α0 : M.Val unit :=
    match_operator
      foo
      [
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          |
              {|
                match_destructuring_structs.Foo.x := _;
                match_destructuring_structs.Foo.y := _;
              |}
              =>
            let γ0 := γ.["Foo.x"] in
            let γ1 := γ.["Foo.y"] in
            let* α0 := M.read γ0 in
            match α0 with
            | (_, _) =>
              let γ0 := Tuple.Access.left γ0 in
              let γ1 := Tuple.Access.right γ0 in
              let* b := M.copy γ1 in
              let* y := M.copy γ1 in
              let* _ : M.Val unit :=
                let* α0 : ref str.t :=
                  M.read (mk_str "First of x is 1, b = ") in
                let* α1 : ref str.t := M.read (mk_str ",  y = ") in
                let* α2 : ref str.t := M.read (mk_str " \n") in
                let* α3 : M.Val (array (ref str.t)) := M.alloc [ α0; α1; α2 ] in
                let* α4 : M.Val (ref (array (ref str.t))) :=
                  M.alloc (borrow α3) in
                let* α5 : ref (slice (ref str.t)) :=
                  M.read (pointer_coercion "Unsize" α4) in
                let* α6 : core.fmt.rt.Argument.t :=
                  M.call (core.fmt.rt.Argument.t::["new_display"] (borrow b)) in
                let* α7 : core.fmt.rt.Argument.t :=
                  M.call (core.fmt.rt.Argument.t::["new_display"] (borrow y)) in
                let* α8 : M.Val (array core.fmt.rt.Argument.t) :=
                  M.alloc [ α6; α7 ] in
                let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
                  M.alloc (borrow α8) in
                let* α10 : ref (slice core.fmt.rt.Argument.t) :=
                  M.read (pointer_coercion "Unsize" α9) in
                let* α11 : core.fmt.Arguments.t :=
                  M.call (core.fmt.Arguments.t::["new_v1"] α5 α10) in
                let* α12 : unit := M.call (std.io.stdio._print α11) in
                M.alloc α12 in
              M.alloc tt
            end
          end) :
          M (M.Val unit);
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          |
              {|
                match_destructuring_structs.Foo.y := _;
                match_destructuring_structs.Foo.x := _;
              |}
              =>
            let γ0 := γ.["Foo.y"] in
            let γ1 := γ.["Foo.x"] in
            let* i := M.copy γ1 in
            let* _ : M.Val unit :=
              let* α0 : ref str.t := M.read (mk_str "y is 2, i = ") in
              let* α1 : ref str.t := M.read (mk_str "\n") in
              let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
              let* α3 : M.Val (ref (array (ref str.t))) :=
                M.alloc (borrow α2) in
              let* α4 : ref (slice (ref str.t)) :=
                M.read (pointer_coercion "Unsize" α3) in
              let* α5 : core.fmt.rt.Argument.t :=
                M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow i)) in
              let* α6 : M.Val (array core.fmt.rt.Argument.t) :=
                M.alloc [ α5 ] in
              let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
                M.alloc (borrow α6) in
              let* α8 : ref (slice core.fmt.rt.Argument.t) :=
                M.read (pointer_coercion "Unsize" α7) in
              let* α9 : core.fmt.Arguments.t :=
                M.call (core.fmt.Arguments.t::["new_v1"] α4 α8) in
              let* α10 : unit := M.call (std.io.stdio._print α9) in
              M.alloc α10 in
            M.alloc tt
          end) :
          M (M.Val unit);
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | {| match_destructuring_structs.Foo.y := _; |} =>
            let γ0 := γ.["Foo.y"] in
            let* y := M.copy γ0 in
            let* _ : M.Val unit :=
              let* α0 : ref str.t := M.read (mk_str "y = ") in
              let* α1 : ref str.t :=
                M.read (mk_str ", we don\'t care about x\n") in
              let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
              let* α3 : M.Val (ref (array (ref str.t))) :=
                M.alloc (borrow α2) in
              let* α4 : ref (slice (ref str.t)) :=
                M.read (pointer_coercion "Unsize" α3) in
              let* α5 : core.fmt.rt.Argument.t :=
                M.call (core.fmt.rt.Argument.t::["new_display"] (borrow y)) in
              let* α6 : M.Val (array core.fmt.rt.Argument.t) :=
                M.alloc [ α5 ] in
              let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
                M.alloc (borrow α6) in
              let* α8 : ref (slice core.fmt.rt.Argument.t) :=
                M.read (pointer_coercion "Unsize" α7) in
              let* α9 : core.fmt.Arguments.t :=
                M.call (core.fmt.Arguments.t::["new_v1"] α4 α8) in
              let* α10 : unit := M.call (std.io.stdio._print α9) in
              M.alloc α10 in
            M.alloc tt
          end) :
          M (M.Val unit)
      ] in
  M.read α0.
