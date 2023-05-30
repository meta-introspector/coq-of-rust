(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module fmt := std.fmt.

Definition Result : Set := std.result.Result T DoubleError.

Module DoubleError.
  Inductive t : Set := Build.
End DoubleError.
Definition DoubleError := DoubleError.t.

Module Impl__crate_fmt_Debug_for_DoubleError.
  Definition Self := DoubleError.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref _crate.fmt.Formatter)
      : M _crate.fmt.Result :=
    _crate.fmt.Formatter::["write_str"] f "DoubleError".
  
  Global Instance Method_fmt : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : _crate.fmt.Debug.Trait Self := {
    _crate.fmt.Debug.fmt := fmt;
  }.
End Impl__crate_fmt_Debug_for_DoubleError.

Module Impl__crate_clone_Clone_for_DoubleError.
  Definition Self := DoubleError.
  
  Definition clone (self : ref Self) : M DoubleError := Pure DoubleError.Build.
  
  Global Instance Method_clone : Notation.Dot "clone" := {
    Notation.dot := clone;
  }.
  
  Global Instance I : _crate.clone.Clone.Trait Self := {
    _crate.clone.Clone.clone := clone;
  }.
End Impl__crate_clone_Clone_for_DoubleError.

Module Impl_fmt_Display_for_DoubleError.
  Definition Self := DoubleError.
  
  Definition fmt (self : ref Self) (f : mut_ref fmt.Formatter) : M fmt.Result :=
    let* α0 :=
      format_arguments::["new_const"]
        (addr_of [ "invalid first item to double" ]) in
    f.["write_fmt"] α0.
  
  Global Instance Method_fmt : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : fmt.Display.Trait Self := {
    fmt.Display.fmt := fmt;
  }.
End Impl_fmt_Display_for_DoubleError.

Definition double_first (vec : Vec (ref str)) : M (Result i32) :=
  let* α0 := vec.["first"] in
  let* α1 := α0.["ok_or"] DoubleError.Build in
  α1.["and_then"]
    (fun s =>
      let* α0 := s.["parse"] in
      let* α1 := α0.["map_err"] (fun _ => Pure DoubleError.Build) in
      α1.["map"] (fun i => 2.["mul"] i)).

Definition print (result : Result i32) : M unit :=
  match result with
  | Ok n =>
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of n) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "The first doubled is "; "
" ])
          (addr_of [ α0 ]) in
      _crate.io._print α1 in
    Pure tt
  | Err e =>
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of e) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "Error: "; "
" ])
          (addr_of [ α0 ]) in
      _crate.io._print α1 in
    Pure tt
  end.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let* numbers :=
    let* α0 := _crate.boxed.Box::["new"] [ "42"; "93"; "18" ] in
    Slice::["into_vec"] α0 in
  let* empty := _crate.vec.Vec::["new"] tt in
  let* strings :=
    let* α0 := _crate.boxed.Box::["new"] [ "tofu"; "93"; "18" ] in
    Slice::["into_vec"] α0 in
  let* _ :=
    let* α0 := double_first numbers in
    print α0 in
  let* _ :=
    let* α0 := double_first empty in
    print α0 in
  let* _ :=
    let* α0 := double_first strings in
    print α0 in
  Pure tt.
