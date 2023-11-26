(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  DoubleError.
Section DoubleError.
  Inductive t : Set := Build.
End DoubleError.
End DoubleError.

Module  Impl_core_fmt_Debug_for_defining_an_error_type_DoubleError_t.
Section Impl_core_fmt_Debug_for_defining_an_error_type_DoubleError_t.
  Ltac Self := exact defining_an_error_type.DoubleError.t.
  
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
      let* α3 := M.read (mk_str "DoubleError") in
      let* α4 : M.Val str.t := deref α3 in
      let* α5 : ref str.t := borrow α4 in
      let* α6 : core.result.Result.t unit core.fmt.Error.t :=
        core.fmt.Formatter.t::["write_str"] α2 α5 in
      M.alloc α6).
  
  Global Instance AssociatedFunction_fmt :
    Notations.DoubleColon ltac:(Self) "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait ltac:(Self) := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_defining_an_error_type_DoubleError_t.
End Impl_core_fmt_Debug_for_defining_an_error_type_DoubleError_t.

Module  Impl_core_clone_Clone_for_defining_an_error_type_DoubleError_t.
Section Impl_core_clone_Clone_for_defining_an_error_type_DoubleError_t.
  Ltac Self := exact defining_an_error_type.DoubleError.t.
  
  (*
  Clone
  *)
  Definition clone
      (self : ref ltac:(Self))
      : M defining_an_error_type.DoubleError.t :=
    let* self : M.Val (ref ltac:(Self)) := M.alloc self in
    M.function_body (M.alloc defining_an_error_type.DoubleError.Build_t).
  
  Global Instance AssociatedFunction_clone :
    Notations.DoubleColon ltac:(Self) "clone" := {
    Notations.double_colon := clone;
  }.
  
  Global Instance ℐ : core.clone.Clone.Required.Trait ltac:(Self) := {
    core.clone.Clone.clone := clone;
    core.clone.Clone.clone_from := Datatypes.None;
  }.
End Impl_core_clone_Clone_for_defining_an_error_type_DoubleError_t.
End Impl_core_clone_Clone_for_defining_an_error_type_DoubleError_t.

Ltac Result T :=
  exact (core.result.Result.t T defining_an_error_type.DoubleError.t).

Module  Impl_core_fmt_Display_for_defining_an_error_type_DoubleError_t.
Section Impl_core_fmt_Display_for_defining_an_error_type_DoubleError_t.
  Ltac Self := exact defining_an_error_type.DoubleError.t.
  
  (*
      fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
          write!(f, "invalid first item to double")
      }
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
      let* α3 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "invalid first item to double" ] in
      let* α4 : ref (array (ref str.t)) := borrow α3 in
      let* α5 : M.Val (array (ref str.t)) := deref α4 in
      let* α6 : ref (array (ref str.t)) := borrow α5 in
      let* α7 : M.Val (ref (array (ref str.t))) := M.alloc α6 in
      let* α8 : M.Val (ref (slice (ref str.t))) :=
        pointer_coercion "Unsize" α7 in
      let* α9 := M.read α8 in
      let* α10 : core.fmt.Arguments.t :=
        core.fmt.Arguments.t::["new_const"] α9 in
      let* α11 : core.result.Result.t unit core.fmt.Error.t :=
        core.fmt.Formatter.t::["write_fmt"] α2 α10 in
      M.alloc α11).
  
  Global Instance AssociatedFunction_fmt :
    Notations.DoubleColon ltac:(Self) "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Display.Trait ltac:(Self) := {
    core.fmt.Display.fmt := fmt;
  }.
End Impl_core_fmt_Display_for_defining_an_error_type_DoubleError_t.
End Impl_core_fmt_Display_for_defining_an_error_type_DoubleError_t.

(*
fn double_first(vec: Vec<&str>) -> Result<i32> {
    vec.first()
        // Change the error to our new type.
        .ok_or(DoubleError)
        .and_then(|s| {
            s.parse::<i32>()
                // Update to the new error type here also.
                .map_err(|_| DoubleError)
                .map(|i| 2 * i)
        })
}
*)
Definition double_first
    (vec : alloc.vec.Vec.t (ref str.t) alloc.vec.Vec.Default.A)
    : M ltac:(defining_an_error_type.Result i32.t) :=
  let* vec : M.Val (alloc.vec.Vec.t (ref str.t) alloc.vec.Vec.Default.A) :=
    M.alloc vec in
  M.function_body
    (let* α0 : ref (alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t) :=
      borrow vec in
    let* α1 : ref (slice (ref str.t)) :=
      (core.ops.deref.Deref.deref
          (Self := alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t)
          (Trait := ltac:(refine _)))
        α0 in
    let* α2 : M.Val (slice (ref str.t)) := deref α1 in
    let* α3 : ref (slice (ref str.t)) := borrow α2 in
    let* α4 : core.option.Option.t (ref (ref str.t)) :=
      (slice (ref str.t))::["first"] α3 in
    let* α5 :
        core.result.Result.t
          (ref (ref str.t))
          defining_an_error_type.DoubleError.t :=
      (core.option.Option.t (ref (ref str.t)))::["ok_or"]
        α4
        defining_an_error_type.DoubleError.Build_t in
    let* α6 :=
      M.read
        (let* α0 := M.read s in
        let* α1 : M.Val (ref str.t) := deref α0 in
        let* α2 := M.read α1 in
        let* α3 : M.Val str.t := deref α2 in
        let* α4 : ref str.t := borrow α3 in
        let* α5 : core.result.Result.t i32.t core.num.error.ParseIntError.t :=
          str.t::["parse"] α4 in
        let* α6 :=
          M.read (M.alloc defining_an_error_type.DoubleError.Build_t) in
        let* α7 :
            core.result.Result.t i32.t defining_an_error_type.DoubleError.t :=
          (core.result.Result.t
                i32.t
                core.num.error.ParseIntError.t)::["map_err"]
            α5
            α6 in
        let* α8 :=
          M.read
            (let* α0 : M.Val i32.t := M.alloc 2 in
            BinOp.mul α0 i) in
        let* α9 :
            core.result.Result.t i32.t defining_an_error_type.DoubleError.t :=
          (core.result.Result.t
                i32.t
                defining_an_error_type.DoubleError.t)::["map"]
            α7
            α8 in
        M.alloc α9) in
    let* α7 : core.result.Result.t i32.t defining_an_error_type.DoubleError.t :=
      (core.result.Result.t
            (ref (ref str.t))
            defining_an_error_type.DoubleError.t)::["and_then"]
        α5
        α6 in
    M.alloc α7).

(*
fn print(result: Result<i32>) {
    match result {
        Ok(n) => println!("The first doubled is {}", n),
        Err(e) => println!("Error: {}", e),
    }
}
*)
Definition print
    (result : ltac:(defining_an_error_type.Result i32.t))
    : M unit :=
  let* result : M.Val ltac:(defining_an_error_type.Result i32.t) :=
    M.alloc result in
  M.function_body
    (let* α0 := M.read result in
    match α0 with
    | core.result.Result.Ok n =>
      let* n := M.alloc n in
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "The first doubled is "; mk_str "
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (array (ref str.t)) := deref α1 in
        let* α3 : ref (array (ref str.t)) := borrow α2 in
        let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
        let* α5 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α4 in
        let* α6 := M.read α5 in
        let* α7 : ref i32.t := borrow n in
        let* α8 : M.Val i32.t := deref α7 in
        let* α9 : ref i32.t := borrow α8 in
        let* α10 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_display"] α9 in
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
      M.alloc tt
    | core.result.Result.Err e =>
      let* e := M.alloc e in
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Error: "; mk_str "
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (array (ref str.t)) := deref α1 in
        let* α3 : ref (array (ref str.t)) := borrow α2 in
        let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
        let* α5 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α4 in
        let* α6 := M.read α5 in
        let* α7 : ref defining_an_error_type.DoubleError.t := borrow e in
        let* α8 : M.Val defining_an_error_type.DoubleError.t := deref α7 in
        let* α9 : ref defining_an_error_type.DoubleError.t := borrow α8 in
        let* α10 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_display"] α9 in
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
      M.alloc tt
    end).

(*
fn main() {
    let numbers = vec!["42", "93", "18"];
    let empty = vec![];
    let strings = vec!["tofu", "93", "18"];

    print(double_first(numbers));
    print(double_first(empty));
    print(double_first(strings));
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* numbers : M.Val (alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t) :=
      let* α0 := M.read (mk_str "93") in
      let* α1 : M.Val str.t := deref α0 in
      let* α2 : ref str.t := borrow α1 in
      let* α3 : M.Val (ref str.t) := M.alloc α2 in
      let* α4 := M.read (mk_str "18") in
      let* α5 : M.Val str.t := deref α4 in
      let* α6 : ref str.t := borrow α5 in
      let* α7 : M.Val (ref str.t) := M.alloc α6 in
      let* α8 : M.Val (array (ref str.t)) := M.alloc [ mk_str "42"; α3; α7 ] in
      let* α9 :
          M.Val (alloc.boxed.Box.t (array (ref str.t)) alloc.alloc.Global.t) :=
        (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α8 in
      let* α10 :
          M.Val (alloc.boxed.Box.t (slice (ref str.t)) alloc.alloc.Global.t) :=
        pointer_coercion "Unsize" α9 in
      let* α11 := M.read α10 in
      let* α12 : alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t :=
        (slice (ref str.t))::["into_vec"] α11 in
      M.alloc α12 in
    let* empty : M.Val (alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t) :=
      let* α0 : alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t :=
        (alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t)::["new"] in
      M.alloc α0 in
    let* strings : M.Val (alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t) :=
      let* α0 := M.read (mk_str "93") in
      let* α1 : M.Val str.t := deref α0 in
      let* α2 : ref str.t := borrow α1 in
      let* α3 : M.Val (ref str.t) := M.alloc α2 in
      let* α4 := M.read (mk_str "18") in
      let* α5 : M.Val str.t := deref α4 in
      let* α6 : ref str.t := borrow α5 in
      let* α7 : M.Val (ref str.t) := M.alloc α6 in
      let* α8 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "tofu"; α3; α7 ] in
      let* α9 :
          M.Val (alloc.boxed.Box.t (array (ref str.t)) alloc.alloc.Global.t) :=
        (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α8 in
      let* α10 :
          M.Val (alloc.boxed.Box.t (slice (ref str.t)) alloc.alloc.Global.t) :=
        pointer_coercion "Unsize" α9 in
      let* α11 := M.read α10 in
      let* α12 : alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t :=
        (slice (ref str.t))::["into_vec"] α11 in
      M.alloc α12 in
    let* _ : M.Val unit :=
      let* α0 := M.read numbers in
      let* α1 :
          core.result.Result.t i32.t defining_an_error_type.DoubleError.t :=
        defining_an_error_type.double_first α0 in
      let* α2 : unit := defining_an_error_type.print α1 in
      M.alloc α2 in
    let* _ : M.Val unit :=
      let* α0 := M.read empty in
      let* α1 :
          core.result.Result.t i32.t defining_an_error_type.DoubleError.t :=
        defining_an_error_type.double_first α0 in
      let* α2 : unit := defining_an_error_type.print α1 in
      M.alloc α2 in
    let* _ : M.Val unit :=
      let* α0 := M.read strings in
      let* α1 :
          core.result.Result.t i32.t defining_an_error_type.DoubleError.t :=
        defining_an_error_type.double_first α0 in
      let* α2 : unit := defining_an_error_type.print α1 in
      M.alloc α2 in
    M.alloc tt).
