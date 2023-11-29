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
      (self : ref ltac:(Self))
      (f : mut_ref core.fmt.Formatter.t)
      : M ltac:(core.fmt.Result) :=
    let* self : M.Val (ref ltac:(Self)) := M.alloc self in
    let* f : M.Val (mut_ref core.fmt.Formatter.t) := M.alloc f in
    let* α0 : mut_ref core.fmt.Formatter.t := M.read f in
    let* α1 : ref str.t := M.read (mk_str "EmptyVec") in
    core.fmt.Formatter.t::["write_str"] α0 α1.
  
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
  Definition clone (self : ref ltac:(Self)) : M boxing_errors.EmptyVec.t :=
    let* self : M.Val (ref ltac:(Self)) := M.alloc self in
    M.pure boxing_errors.EmptyVec.Build_t.
  
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
      (self : ref ltac:(Self))
      (f : mut_ref core.fmt.Formatter.t)
      : M ltac:(core.fmt.Result) :=
    let* self : M.Val (ref ltac:(Self)) := M.alloc self in
    let* f : M.Val (mut_ref core.fmt.Formatter.t) := M.alloc f in
    let* α0 : mut_ref core.fmt.Formatter.t := M.read f in
    let* α1 : M.Val (array (ref str.t)) :=
      M.alloc [ mk_str "invalid first item to double" ] in
    let* α2 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α1) in
    let* α3 : ref (slice (ref str.t)) :=
      M.read (pointer_coercion "Unsize" α2) in
    let* α4 : core.fmt.Arguments.t := core.fmt.Arguments.t::["new_const"] α3 in
    core.fmt.Formatter.t::["write_fmt"] α0 α4.
  
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
    (vec : alloc.vec.Vec.t (ref str.t) alloc.vec.Vec.Default.A)
    : M ltac:(boxing_errors.Result i32.t) :=
  let* vec : M.Val (alloc.vec.Vec.t (ref str.t) alloc.vec.Vec.Default.A) :=
    M.alloc vec in
  let* α0 : ref (slice (ref str.t)) :=
    (core.ops.deref.Deref.deref
        (Self := alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t)
        (Trait := ltac:(refine _)))
      (borrow vec) in
  let* α1 : core.option.Option.t (ref (ref str.t)) :=
    (slice (ref str.t))::["first"] α0 in
  let* α2 : type not implemented :=
    M.read
      (let* α0 : alloc.boxed.Box.t type not implemented alloc.alloc.Global.t :=
        (core.convert.Into.into
            (Self := boxing_errors.EmptyVec.t)
            (Trait := ltac:(refine _)))
          boxing_errors.EmptyVec.Build_t in
      M.alloc α0) in
  let* α3 :
      core.result.Result.t
        (ref (ref str.t))
        (alloc.boxed.Box.t type not implemented alloc.alloc.Global.t) :=
    (core.option.Option.t (ref (ref str.t)))::["ok_or_else"] α1 α2 in
  let* α4 : type not implemented :=
    M.read
      (let* α0 : ref (ref str.t) := M.read s in
      let* α1 : ref str.t := M.read (deref α0) in
      let* α2 : core.result.Result.t i32.t core.num.error.ParseIntError.t :=
        str.t::["parse"] α1 in
      let* α3 : type not implemented :=
        M.read
          (let* α0 : core.num.error.ParseIntError.t := M.read e in
          let* α1 :
              alloc.boxed.Box.t type not implemented alloc.alloc.Global.t :=
            (core.convert.Into.into
                (Self := core.num.error.ParseIntError.t)
                (Trait := ltac:(refine _)))
              α0 in
          M.alloc α1) in
      let* α4 :
          core.result.Result.t
            i32.t
            (alloc.boxed.Box.t type not implemented alloc.alloc.Global.t) :=
        (core.result.Result.t i32.t core.num.error.ParseIntError.t)::["map_err"]
          α2
          α3 in
      let* α5 : type not implemented :=
        M.read
          (let* α0 : i32.t := M.read i in
          let* α1 : i32.t := BinOp.Panic.mul (Integer.of_Z 2) α0 in
          M.alloc α1) in
      let* α6 :
          core.result.Result.t
            i32.t
            (alloc.boxed.Box.t type not implemented alloc.alloc.Global.t) :=
        (core.result.Result.t
              i32.t
              (alloc.boxed.Box.t
                type not implemented
                alloc.alloc.Global.t))::["map"]
          α4
          α5 in
      M.alloc α6) in
  (core.result.Result.t
        (ref (ref str.t))
        (alloc.boxed.Box.t
          type not implemented
          alloc.alloc.Global.t))::["and_then"]
    α3
    α4.

(*
fn print(result: Result<i32>) {
    match result {
        Ok(n) => println!("The first doubled is {}", n),
        Err(e) => println!("Error: {}", e),
    }
}
*)
Definition print (result : ltac:(boxing_errors.Result i32.t)) : M unit :=
  let* result : M.Val ltac:(boxing_errors.Result i32.t) := M.alloc result in
  let* α0 :
      core.result.Result.t
        i32.t
        (alloc.boxed.Box.t type not implemented alloc.alloc.Global.t) :=
    M.read result in
  let* α1 : M.Val unit :=
    match α0 with
    | core.result.Result.Ok n =>
      let* n := M.alloc n in
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "The first doubled is "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_display"] (borrow n) in
        let* α4 : M.Val core.fmt.rt.Argument.t := M.alloc α3 in
        let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
        let* α6 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
          M.alloc (borrow α5) in
        let* α7 : ref (slice core.fmt.rt.Argument.t) :=
          M.read (pointer_coercion "Unsize" α6) in
        let* α8 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α2 α7 in
        let* α9 : unit := std.io.stdio._print α8 in
        M.alloc α9 in
      M.alloc tt
    | core.result.Result.Err e =>
      let* e := M.alloc e in
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Error: "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_display"] (borrow e) in
        let* α4 : M.Val core.fmt.rt.Argument.t := M.alloc α3 in
        let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
        let* α6 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
          M.alloc (borrow α5) in
        let* α7 : ref (slice core.fmt.rt.Argument.t) :=
          M.read (pointer_coercion "Unsize" α6) in
        let* α8 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α2 α7 in
        let* α9 : unit := std.io.stdio._print α8 in
        M.alloc α9 in
      M.alloc tt
    end in
  M.read α1.

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
  let* numbers : M.Val (alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t) :=
    let* α0 : ref str.t := M.read (mk_str "93") in
    let* α1 : M.Val (ref str.t) := M.alloc α0 in
    let* α2 : ref str.t := M.read (mk_str "18") in
    let* α3 : M.Val (ref str.t) := M.alloc α2 in
    let* α4 : M.Val (array (ref str.t)) := M.alloc [ mk_str "42"; α1; α3 ] in
    let* α5 :
        M.Val (alloc.boxed.Box.t (array (ref str.t)) alloc.alloc.Global.t) :=
      (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α4 in
    let* α6 : alloc.boxed.Box.t (slice (ref str.t)) alloc.alloc.Global.t :=
      M.read (pointer_coercion "Unsize" α5) in
    let* α7 : alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t :=
      (slice (ref str.t))::["into_vec"] α6 in
    M.alloc α7 in
  let* empty : M.Val (alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t) :=
    let* α0 : alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t :=
      (alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t)::["new"] in
    M.alloc α0 in
  let* strings : M.Val (alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t) :=
    let* α0 : ref str.t := M.read (mk_str "93") in
    let* α1 : M.Val (ref str.t) := M.alloc α0 in
    let* α2 : ref str.t := M.read (mk_str "18") in
    let* α3 : M.Val (ref str.t) := M.alloc α2 in
    let* α4 : M.Val (array (ref str.t)) := M.alloc [ mk_str "tofu"; α1; α3 ] in
    let* α5 :
        M.Val (alloc.boxed.Box.t (array (ref str.t)) alloc.alloc.Global.t) :=
      (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α4 in
    let* α6 : alloc.boxed.Box.t (slice (ref str.t)) alloc.alloc.Global.t :=
      M.read (pointer_coercion "Unsize" α5) in
    let* α7 : alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t :=
      (slice (ref str.t))::["into_vec"] α6 in
    M.alloc α7 in
  let* _ : M.Val unit :=
    let* α0 : alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t :=
      M.read numbers in
    let* α1 :
        core.result.Result.t
          i32.t
          (alloc.boxed.Box.t type not implemented alloc.alloc.Global.t) :=
      boxing_errors.double_first α0 in
    let* α2 : unit := boxing_errors.print α1 in
    M.alloc α2 in
  let* _ : M.Val unit :=
    let* α0 : alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t :=
      M.read empty in
    let* α1 :
        core.result.Result.t
          i32.t
          (alloc.boxed.Box.t type not implemented alloc.alloc.Global.t) :=
      boxing_errors.double_first α0 in
    let* α2 : unit := boxing_errors.print α1 in
    M.alloc α2 in
  let* _ : M.Val unit :=
    let* α0 : alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t :=
      M.read strings in
    let* α1 :
        core.result.Result.t
          i32.t
          (alloc.boxed.Box.t type not implemented alloc.alloc.Global.t) :=
      boxing_errors.double_first α0 in
    let* α2 : unit := boxing_errors.print α1 in
    M.alloc α2 in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
