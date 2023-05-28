(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module error := std.error.

Module fmt := std.fmt.

Definition Result : Set := std.result.Result T (Box TraitObject).

Module EmptyVec.
  Inductive t : Set := Build.
End EmptyVec.
Definition EmptyVec := EmptyVec.t.

Module Impl__crate_fmt_Debug_for_EmptyVec.
  Definition Self := EmptyVec.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref _crate.fmt.Formatter)
      : _crate.fmt.Result :=
    _crate.fmt.Formatter::["write_str"] f "EmptyVec".
  
  Global Instance Method_fmt : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : _crate.fmt.Debug.Trait Self := {
    _crate.fmt.Debug.fmt := fmt;
  }.
End Impl__crate_fmt_Debug_for_EmptyVec.

Module Impl__crate_clone_Clone_for_EmptyVec.
  Definition Self := EmptyVec.
  
  Definition clone (self : ref Self) : EmptyVec := EmptyVec.Build.
  
  Global Instance Method_clone : Notation.Dot "clone" := {
    Notation.dot := clone;
  }.
  
  Global Instance I : _crate.clone.Clone.Trait Self := {
    _crate.clone.Clone.clone := clone;
  }.
End Impl__crate_clone_Clone_for_EmptyVec.

Module Impl_fmt_Display_for_EmptyVec.
  Definition Self := EmptyVec.
  
  Definition fmt (self : ref Self) (f : mut_ref fmt.Formatter) : fmt.Result :=
    f.["write_fmt"]
      (format_arguments::["new_const"] [ "invalid first item to double" ]).
  
  Global Instance Method_fmt : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : fmt.Display.Trait Self := {
    fmt.Display.fmt := fmt;
  }.
End Impl_fmt_Display_for_EmptyVec.

Module Impl_error_Error_for_EmptyVec.
  Definition Self := EmptyVec.
  
  Global Instance I : error.Error.Trait Self := error.Error.Build_Class _.
End Impl_error_Error_for_EmptyVec.

Definition double_first (vec : Vec (ref str)) : Result i32 :=
  (vec.["first"].["ok_or_else"] (fun  => EmptyVec.Build.["into"])).["and_then"]
    (fun s =>
      (s.["parse"].["map_err"] (fun e => e.["into"])).["map"]
        (fun i => 2.["mul"] i)).

Definition print (result : Result i32) : unit :=
  match result with
  | Ok n =>
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "The first doubled is "; "
" ]
          [ format_argument::["new_display"] n ]) in
    tt
  | Err e =>
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "Error: "; "
" ]
          [ format_argument::["new_display"] e ]) in
    tt
  end.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : unit :=
  let numbers :=
    Slice::["into_vec"] (_crate.boxed.Box::["new"] [ "42"; "93"; "18" ]) in
  let empty := _crate.vec.Vec::["new"] tt in
  let strings :=
    Slice::["into_vec"] (_crate.boxed.Box::["new"] [ "tofu"; "93"; "18" ]) in
  let _ := print (double_first numbers) in
  let _ := print (double_first empty) in
  let _ := print (double_first strings) in
  tt.
