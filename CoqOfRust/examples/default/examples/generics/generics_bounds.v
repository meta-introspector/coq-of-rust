(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  HasArea.
Section HasArea.
  Class Trait (Self : Set) : Type := {
    area : (ref ltac:(Self)) -> M f64.t;
  }.
  
End HasArea.
End HasArea.

Module  Impl_generics_bounds_HasArea_for_generics_bounds_Rectangle_t.
Section Impl_generics_bounds_HasArea_for_generics_bounds_Rectangle_t.
  Ltac Self := exact generics_bounds.Rectangle.t.
  
  (*
      fn area(&self) -> f64 {
          self.length * self.height
      }
  *)
  Definition area (self : ref ltac:(Self)) : M f64.t :=
    let* self : M.Val (ref ltac:(Self)) := M.alloc self in
    M.function_body
      (let* α0 := M.read self in
      let* α1 : M.Val generics_bounds.Rectangle.t := deref α0 in
      let* α2 := M.read self in
      let* α3 : M.Val generics_bounds.Rectangle.t := deref α2 in
      BinOp.mul α1.["length"] α3.["height"]).
  
  Global Instance AssociatedFunction_area :
    Notations.DoubleColon ltac:(Self) "area" := {
    Notations.double_colon := area;
  }.
  
  Global Instance ℐ : generics_bounds.HasArea.Trait ltac:(Self) := {
    generics_bounds.HasArea.area := area;
  }.
End Impl_generics_bounds_HasArea_for_generics_bounds_Rectangle_t.
End Impl_generics_bounds_HasArea_for_generics_bounds_Rectangle_t.

Module  Rectangle.
Section Rectangle.
  Record t : Set := {
    length : f64.t;
    height : f64.t;
  }.
  
  Global Instance Get_length : Notations.Dot "length" := {
    Notations.dot :=
      Ref.map (fun x => x.(length)) (fun v x => x <| length := v |>);
  }.
  Global Instance Get_AF_length : Notations.DoubleColon t "length" := {
    Notations.double_colon (x : M.Val t) := x.["length"];
  }.
  Global Instance Get_height : Notations.Dot "height" := {
    Notations.dot :=
      Ref.map (fun x => x.(height)) (fun v x => x <| height := v |>);
  }.
  Global Instance Get_AF_height : Notations.DoubleColon t "height" := {
    Notations.double_colon (x : M.Val t) := x.["height"];
  }.
End Rectangle.
End Rectangle.

Module  Impl_core_fmt_Debug_for_generics_bounds_Rectangle_t.
Section Impl_core_fmt_Debug_for_generics_bounds_Rectangle_t.
  Ltac Self := exact generics_bounds.Rectangle.t.
  
  (*
  Debug
  *)
  Definition fmt
      (self : ref ltac:(Self))
      (f : mut_ref core.fmt.Formatter.t)
      : M ltac:(core.fmt.Result) :=
    let* self : M.Val (ref ltac:(Self)) := M.alloc self in
    let* f : M.Val (mut_ref core.fmt.Formatter.t) := M.alloc f in
    M.function_body
      (let* α0 := M.read f in
      let* α1 : M.Val core.fmt.Formatter.t := deref α0 in
      let* α2 : mut_ref core.fmt.Formatter.t := borrow_mut α1 in
      let* α3 := M.read (mk_str "Rectangle") in
      let* α4 : M.Val str.t := deref α3 in
      let* α5 : ref str.t := borrow α4 in
      let* α6 := M.read (mk_str "length") in
      let* α7 : M.Val str.t := deref α6 in
      let* α8 : ref str.t := borrow α7 in
      let* α9 := M.read self in
      let* α10 : M.Val generics_bounds.Rectangle.t := deref α9 in
      let* α11 : ref f64.t := borrow α10.["length"] in
      let* α12 : M.Val f64.t := deref α11 in
      let* α13 : ref f64.t := borrow α12 in
      let* α14 : M.Val (ref f64.t) := M.alloc α13 in
      let* α15 : M.Val (ref type not implemented) :=
        pointer_coercion "Unsize" α14 in
      let* α16 := M.read α15 in
      let* α17 := M.read (mk_str "height") in
      let* α18 : M.Val str.t := deref α17 in
      let* α19 : ref str.t := borrow α18 in
      let* α20 := M.read self in
      let* α21 : M.Val generics_bounds.Rectangle.t := deref α20 in
      let* α22 : ref f64.t := borrow α21.["height"] in
      let* α23 : M.Val (ref f64.t) := M.alloc α22 in
      let* α24 : ref (ref f64.t) := borrow α23 in
      let* α25 : M.Val (ref f64.t) := deref α24 in
      let* α26 : ref (ref f64.t) := borrow α25 in
      let* α27 : M.Val (ref (ref f64.t)) := M.alloc α26 in
      let* α28 : M.Val (ref type not implemented) :=
        pointer_coercion "Unsize" α27 in
      let* α29 := M.read α28 in
      let* α30 : core.result.Result.t unit core.fmt.Error.t :=
        core.fmt.Formatter.t::["debug_struct_field2_finish"]
          α2
          α5
          α8
          α16
          α19
          α29 in
      M.alloc α30).
  
  Global Instance AssociatedFunction_fmt :
    Notations.DoubleColon ltac:(Self) "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait ltac:(Self) := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_generics_bounds_Rectangle_t.
End Impl_core_fmt_Debug_for_generics_bounds_Rectangle_t.

(* #[allow(dead_code)] - struct was ignored by the compiler *)
Module  Triangle.
Section Triangle.
  Record t : Set := {
    length : f64.t;
    height : f64.t;
  }.
  
  Global Instance Get_length : Notations.Dot "length" := {
    Notations.dot :=
      Ref.map (fun x => x.(length)) (fun v x => x <| length := v |>);
  }.
  Global Instance Get_AF_length : Notations.DoubleColon t "length" := {
    Notations.double_colon (x : M.Val t) := x.["length"];
  }.
  Global Instance Get_height : Notations.Dot "height" := {
    Notations.dot :=
      Ref.map (fun x => x.(height)) (fun v x => x <| height := v |>);
  }.
  Global Instance Get_AF_height : Notations.DoubleColon t "height" := {
    Notations.double_colon (x : M.Val t) := x.["height"];
  }.
End Triangle.
End Triangle.

(*
fn print_debug<T: Debug>(t: &T) {
    println!("{:?}", t);
}
*)
Definition print_debug
    {T : Set}
    {ℋ_0 : core.fmt.Debug.Trait T}
    (t : ref T)
    : M unit :=
  let* t : M.Val (ref T) := M.alloc t in
  M.function_body
    (let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str ""; mk_str "
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (array (ref str.t)) := deref α1 in
        let* α3 : ref (array (ref str.t)) := borrow α2 in
        let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
        let* α5 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α4 in
        let* α6 := M.read α5 in
        let* α7 : ref (ref T) := borrow t in
        let* α8 : M.Val (ref T) := deref α7 in
        let* α9 : ref (ref T) := borrow α8 in
        let* α10 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_debug"] α9 in
        let* α11 : M.Val core.fmt.rt.Argument.t := M.alloc α10 in
        let* α12 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α11 ] in
        let* α13 : ref (array core.fmt.rt.Argument.t) := borrow α12 in
        let* α14 : M.Val (array core.fmt.rt.Argument.t) := deref α13 in
        let* α15 : ref (array core.fmt.rt.Argument.t) := borrow α14 in
        let* α16 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α15 in
        let* α17 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α16 in
        let* α18 := M.read α17 in
        let* α19 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α6 α18 in
        let* α20 : unit := std.io.stdio._print α19 in
        M.alloc α20 in
      M.alloc tt in
    M.alloc tt).

(*
fn area<T: HasArea>(t: &T) -> f64 {
    t.area()
}
*)
Definition area
    {T : Set}
    {ℋ_0 : generics_bounds.HasArea.Trait T}
    (t : ref T)
    : M f64.t :=
  let* t : M.Val (ref T) := M.alloc t in
  M.function_body
    (let* α0 := M.read t in
    let* α1 : M.Val T := deref α0 in
    let* α2 : ref T := borrow α1 in
    let* α3 : f64.t :=
      (generics_bounds.HasArea.area (Self := T) (Trait := ltac:(refine _)))
        α2 in
    M.alloc α3).

(*
fn main() {
    let rectangle = Rectangle {
        length: 3.0,
        height: 4.0,
    };
    let _triangle = Triangle {
        length: 3.0,
        height: 4.0,
    };

    print_debug(&rectangle);
    println!("Area: {}", rectangle.area());

    //print_debug(&_triangle);
    //println!("Area: {}", _triangle.area());
    // ^ TODO: Try uncommenting these.
    // | Error: Does not implement either `Debug` or `HasArea`.
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* rectangle : M.Val generics_bounds.Rectangle.t :=
      let* α0 : M.Val f64.t := M.alloc 3 (* 3.0 *) in
      let* α1 := M.read α0 in
      let* α2 : M.Val f64.t := M.alloc 4 (* 4.0 *) in
      let* α3 := M.read α2 in
      M.alloc
        {|
          generics_bounds.Rectangle.length := α1;
          generics_bounds.Rectangle.height := α3;
        |} in
    let* _triangle : M.Val generics_bounds.Triangle.t :=
      let* α0 : M.Val f64.t := M.alloc 3 (* 3.0 *) in
      let* α1 := M.read α0 in
      let* α2 : M.Val f64.t := M.alloc 4 (* 4.0 *) in
      let* α3 := M.read α2 in
      M.alloc
        {|
          generics_bounds.Triangle.length := α1;
          generics_bounds.Triangle.height := α3;
        |} in
    let* _ : M.Val unit :=
      let* α0 : ref generics_bounds.Rectangle.t := borrow rectangle in
      let* α1 : M.Val generics_bounds.Rectangle.t := deref α0 in
      let* α2 : ref generics_bounds.Rectangle.t := borrow α1 in
      let* α3 : unit := generics_bounds.print_debug α2 in
      M.alloc α3 in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Area: "; mk_str "
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (array (ref str.t)) := deref α1 in
        let* α3 : ref (array (ref str.t)) := borrow α2 in
        let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
        let* α5 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α4 in
        let* α6 := M.read α5 in
        let* α7 : ref generics_bounds.Rectangle.t := borrow rectangle in
        let* α8 : f64.t :=
          (generics_bounds.HasArea.area
              (Self := generics_bounds.Rectangle.t)
              (Trait := ltac:(refine _)))
            α7 in
        let* α9 : M.Val f64.t := M.alloc α8 in
        let* α10 : ref f64.t := borrow α9 in
        let* α11 : M.Val f64.t := deref α10 in
        let* α12 : ref f64.t := borrow α11 in
        let* α13 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_display"] α12 in
        let* α14 : M.Val core.fmt.rt.Argument.t := M.alloc α13 in
        let* α15 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α14 ] in
        let* α16 : ref (array core.fmt.rt.Argument.t) := borrow α15 in
        let* α17 : M.Val (array core.fmt.rt.Argument.t) := deref α16 in
        let* α18 : ref (array core.fmt.rt.Argument.t) := borrow α17 in
        let* α19 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α18 in
        let* α20 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α19 in
        let* α21 := M.read α20 in
        let* α22 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α6 α21 in
        let* α23 : unit := std.io.stdio._print α22 in
        M.alloc α23 in
      M.alloc tt in
    M.alloc tt).
