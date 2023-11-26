(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Ltac Result T :=
  exact
    (core.result.Result.t
      T
      (alloc.boxed.Box.t _ (* dyn *) alloc.boxed.Box.Default.A)).

Module  EmptyVec.
Section EmptyVec.
  Inductive t : Set := Build.
End EmptyVec.
End EmptyVec.

Module  Impl_core_fmt_Debug_for_boxing_errors_EmptyVec_t.
Section Impl_core_fmt_Debug_for_boxing_errors_EmptyVec_t.
  Ltac Self := exact boxing_errors.EmptyVec.t.
  
  (*
  Debug
  *)
  Definition fmt
      (self : M.Val (ref ltac:(Self)))
      (f : M.Val (mut_ref core.fmt.Formatter.t))
      : M ltac:(core.fmt.Result) :=
    M.function_body
      (let* α0 : M.Val core.fmt.Formatter.t := deref f in
      let* α1 : M.Val (mut_ref core.fmt.Formatter.t) := borrow_mut α0 in
      let* α2 : M.Val str.t := deref (mk_str "EmptyVec") in
      let* α3 : M.Val (ref str.t) := borrow α2 in
      let* α4 := core.fmt.Formatter.t::["write_str"] α1 α3 in
      M.alloc α4).
  
  Global Instance AssociatedFunction_fmt :
    Notations.DoubleColon ltac:(Self) "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait ltac:(Self) := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_boxing_errors_EmptyVec_t.
End Impl_core_fmt_Debug_for_boxing_errors_EmptyVec_t.

Module  Impl_core_clone_Clone_for_boxing_errors_EmptyVec_t.
Section Impl_core_clone_Clone_for_boxing_errors_EmptyVec_t.
  Ltac Self := exact boxing_errors.EmptyVec.t.
  
  (*
  Clone
  *)
  Definition clone
      (self : M.Val (ref ltac:(Self)))
      : M boxing_errors.EmptyVec.t :=
    M.function_body (M.alloc boxing_errors.EmptyVec.Build_t).
  
  Global Instance AssociatedFunction_clone :
    Notations.DoubleColon ltac:(Self) "clone" := {
    Notations.double_colon := clone;
  }.
  
  Global Instance ℐ : core.clone.Clone.Required.Trait ltac:(Self) := {
    core.clone.Clone.clone := clone;
    core.clone.Clone.clone_from := Datatypes.None;
  }.
End Impl_core_clone_Clone_for_boxing_errors_EmptyVec_t.
End Impl_core_clone_Clone_for_boxing_errors_EmptyVec_t.

Module  Impl_core_fmt_Display_for_boxing_errors_EmptyVec_t.
Section Impl_core_fmt_Display_for_boxing_errors_EmptyVec_t.
  Ltac Self := exact boxing_errors.EmptyVec.t.
  
  (*
      fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
          write!(f, "invalid first item to double")
      }
  *)
  Definition fmt
      (self : M.Val (ref ltac:(Self)))
      (f : M.Val (mut_ref core.fmt.Formatter.t))
      : M ltac:(core.fmt.Result) :=
    M.function_body
      (let* α0 : M.Val core.fmt.Formatter.t := deref f in
      let* α1 : M.Val (mut_ref core.fmt.Formatter.t) := borrow_mut α0 in
      let* α2 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "invalid first item to double" ] in
      let* α3 : M.Val (ref (array (ref str.t))) := borrow α2 in
      let* α4 : M.Val (ref (slice (ref str.t))) :=
        pointer_coercion "Unsize" α3 in
      let* α5 := core.fmt.Arguments.t::["new_const"] α4 in
      let* α6 : M.Val core.fmt.Arguments.t := M.alloc α5 in
      let* α7 := core.fmt.Formatter.t::["write_fmt"] α1 α6 in
      M.alloc α7).
  
  Global Instance AssociatedFunction_fmt :
    Notations.DoubleColon ltac:(Self) "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Display.Trait ltac:(Self) := {
    core.fmt.Display.fmt := fmt;
  }.
End Impl_core_fmt_Display_for_boxing_errors_EmptyVec_t.
End Impl_core_fmt_Display_for_boxing_errors_EmptyVec_t.

Module  Impl_core_error_Error_for_boxing_errors_EmptyVec_t.
Section Impl_core_error_Error_for_boxing_errors_EmptyVec_t.
  Ltac Self := exact boxing_errors.EmptyVec.t.
  
  Global Instance ℐ : core.error.Error.Required.Trait ltac:(Self) := {
    core.error.Error.source := Datatypes.None;
    core.error.Error.type_id := Datatypes.None;
    core.error.Error.description := Datatypes.None;
    core.error.Error.cause := Datatypes.None;
    core.error.Error.provide := Datatypes.None;
  }.
End Impl_core_error_Error_for_boxing_errors_EmptyVec_t.
End Impl_core_error_Error_for_boxing_errors_EmptyVec_t.

(*
fn double_first(vec: Vec<&str>) -> Result<i32> {
    vec.first()
        .ok_or_else(|| EmptyVec.into()) // Converts to Box
        .and_then(|s| {
            s.parse::<i32>()
                .map_err(|e| e.into()) // Converts to Box
                .map(|i| 2 * i)
        })
}
*)
Definition double_first
    (vec : M.Val (alloc.vec.Vec.t (ref str.t) alloc.vec.Vec.Default.A))
    : M ltac:(boxing_errors.Result i32.t) :=
  M.function_body
    (let* α0 : M.Val (ref (alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t)) :=
      borrow vec in
    let* α1 :=
      (core.ops.deref.Deref.deref
          (Self := alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t)
          (Trait := ltac:(refine _)))
        α0 in
    let* α2 : M.Val (ref (slice (ref str.t))) := M.alloc α1 in
    let* α3 : M.Val (slice (ref str.t)) := deref α2 in
    let* α4 : M.Val (ref (slice (ref str.t))) := borrow α3 in
    let* α5 := (slice (ref str.t))::["first"] α4 in
    let* α6 : M.Val (core.option.Option.t (ref (ref str.t))) := M.alloc α5 in
    let* α7 :=
      (core.option.Option.t (ref (ref str.t)))::["ok_or_else"]
        α6
        (let* α0 : M.Val boxing_errors.EmptyVec.t :=
          M.alloc boxing_errors.EmptyVec.Build_t in
        let* α1 :=
          (core.convert.Into.into
              (Self := boxing_errors.EmptyVec.t)
              (Trait := ltac:(refine _)))
            α0 in
        M.alloc α1) in
    let* α8 :
        M.Val
          (core.result.Result.t
            (ref (ref str.t))
            (alloc.boxed.Box.t type not implemented alloc.alloc.Global.t)) :=
      M.alloc α7 in
    let* α9 :=
      (core.result.Result.t
            (ref (ref str.t))
            (alloc.boxed.Box.t
              type not implemented
              alloc.alloc.Global.t))::["and_then"]
        α8
        (let* α0 : M.Val (ref str.t) := deref s in
        let* α1 : M.Val str.t := deref α0 in
        let* α2 : M.Val (ref str.t) := borrow α1 in
        let* α3 := str.t::["parse"] α2 in
        let* α4 :
            M.Val (core.result.Result.t i32.t core.num.error.ParseIntError.t) :=
          M.alloc α3 in
        let* α5 :=
          (core.result.Result.t
                i32.t
                core.num.error.ParseIntError.t)::["map_err"]
            α4
            (let* α0 :=
              (core.convert.Into.into
                  (Self := core.num.error.ParseIntError.t)
                  (Trait := ltac:(refine _)))
                e in
            M.alloc α0) in
        let* α6 :
            M.Val
              (core.result.Result.t
                i32.t
                (alloc.boxed.Box.t
                  type not implemented
                  alloc.alloc.Global.t)) :=
          M.alloc α5 in
        let* α7 :=
          (core.result.Result.t
                i32.t
                (alloc.boxed.Box.t
                  type not implemented
                  alloc.alloc.Global.t))::["map"]
            α6
            (let* α0 : M.Val i32.t := M.alloc 2 in
            BinOp.mul α0 i) in
        M.alloc α7) in
    M.alloc α9).

(*
fn print(result: Result<i32>) {
    match result {
        Ok(n) => println!("The first doubled is {}", n),
        Err(e) => println!("Error: {}", e),
    }
}
*)
Definition print (result : M.Val ltac:(boxing_errors.Result i32.t)) : M unit :=
  M.function_body
    (let* α0 := M.read result in
    match α0 with
    | core.result.Result.Ok n =>
      let* n := M.alloc n in
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "The first doubled is "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : M.Val (ref i32.t) := borrow n in
        let* α4 := core.fmt.rt.Argument.t::["new_display"] α3 in
        let* α5 : M.Val core.fmt.rt.Argument.t := M.alloc α4 in
        let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
        let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α6 in
        let* α8 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α7 in
        let* α9 := core.fmt.Arguments.t::["new_v1"] α2 α8 in
        let* α10 : M.Val core.fmt.Arguments.t := M.alloc α9 in
        let* α11 := std.io.stdio._print α10 in
        M.alloc α11 in
      M.alloc tt
    | core.result.Result.Err e =>
      let* e := M.alloc e in
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Error: "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 :
            M.Val
              (ref
                (alloc.boxed.Box.t
                  type not implemented
                  alloc.alloc.Global.t)) :=
          borrow e in
        let* α4 := core.fmt.rt.Argument.t::["new_display"] α3 in
        let* α5 : M.Val core.fmt.rt.Argument.t := M.alloc α4 in
        let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
        let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α6 in
        let* α8 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α7 in
        let* α9 := core.fmt.Arguments.t::["new_v1"] α2 α8 in
        let* α10 : M.Val core.fmt.Arguments.t := M.alloc α9 in
        let* α11 := std.io.stdio._print α10 in
        M.alloc α11 in
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
      let* α0 : M.Val str.t := deref (mk_str "93") in
      let* α1 : M.Val (ref str.t) := borrow α0 in
      let* α2 : M.Val str.t := deref (mk_str "18") in
      let* α3 : M.Val (ref str.t) := borrow α2 in
      let* α4 : M.Val (array (ref str.t)) := M.alloc [ mk_str "42"; α1; α3 ] in
      let* α5 :
          M.Val (alloc.boxed.Box.t (array (ref str.t)) alloc.alloc.Global.t) :=
        (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α4 in
      let* α6 :
          M.Val (alloc.boxed.Box.t (slice (ref str.t)) alloc.alloc.Global.t) :=
        pointer_coercion "Unsize" α5 in
      let* α7 := (slice (ref str.t))::["into_vec"] α6 in
      M.alloc α7 in
    let* empty : M.Val (alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t) :=
      let* α0 := (alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t)::["new"] in
      M.alloc α0 in
    let* strings : M.Val (alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t) :=
      let* α0 : M.Val str.t := deref (mk_str "93") in
      let* α1 : M.Val (ref str.t) := borrow α0 in
      let* α2 : M.Val str.t := deref (mk_str "18") in
      let* α3 : M.Val (ref str.t) := borrow α2 in
      let* α4 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "tofu"; α1; α3 ] in
      let* α5 :
          M.Val (alloc.boxed.Box.t (array (ref str.t)) alloc.alloc.Global.t) :=
        (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α4 in
      let* α6 :
          M.Val (alloc.boxed.Box.t (slice (ref str.t)) alloc.alloc.Global.t) :=
        pointer_coercion "Unsize" α5 in
      let* α7 := (slice (ref str.t))::["into_vec"] α6 in
      M.alloc α7 in
    let* _ : M.Val unit :=
      let* α0 := boxing_errors.double_first numbers in
      let* α1 :
          M.Val
            (core.result.Result.t
              i32.t
              (alloc.boxed.Box.t type not implemented alloc.alloc.Global.t)) :=
        M.alloc α0 in
      let* α2 := boxing_errors.print α1 in
      M.alloc α2 in
    let* _ : M.Val unit :=
      let* α0 := boxing_errors.double_first empty in
      let* α1 :
          M.Val
            (core.result.Result.t
              i32.t
              (alloc.boxed.Box.t type not implemented alloc.alloc.Global.t)) :=
        M.alloc α0 in
      let* α2 := boxing_errors.print α1 in
      M.alloc α2 in
    let* _ : M.Val unit :=
      let* α0 := boxing_errors.double_first strings in
      let* α1 :
          M.Val
            (core.result.Result.t
              i32.t
              (alloc.boxed.Box.t type not implemented alloc.alloc.Global.t)) :=
        M.alloc α0 in
      let* α2 := boxing_errors.print α1 in
      M.alloc α2 in
    M.alloc tt).
