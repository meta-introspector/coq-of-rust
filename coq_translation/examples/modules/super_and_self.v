(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition function (_ : unit) : M unit :=
  let* _ :=
    let* _ :=
      let* α0 :=
        format_arguments::["new_const"] (addr_of [ "called `function()`
" ]) in
      _crate.io._print α0 in
    Pure tt in
  Pure tt.

Module cool.
  Definition function (_ : unit) : M unit :=
    let* _ :=
      let* _ :=
        let* α0 :=
          format_arguments::["new_const"]
            (addr_of [ "called `cool::function()`
" ]) in
        _crate.io._print α0 in
      Pure tt in
    Pure tt.
End cool.

Definition function (_ : unit) : M unit :=
  let* _ :=
    let* _ :=
      let* α0 :=
        format_arguments::["new_const"]
          (addr_of [ "called `cool::function()`
" ]) in
      _crate.io._print α0 in
    Pure tt in
  Pure tt.

Module my.
  Definition function (_ : unit) : M unit :=
    let* _ :=
      let* _ :=
        let* α0 :=
          format_arguments::["new_const"]
            (addr_of [ "called `my::function()`
" ]) in
        _crate.io._print α0 in
      Pure tt in
    Pure tt.
  
  Module cool.
    Definition function (_ : unit) : M unit :=
      let* _ :=
        let* _ :=
          let* α0 :=
            format_arguments::["new_const"]
              (addr_of [ "called `my::cool::function()`
" ]) in
          _crate.io._print α0 in
        Pure tt in
      Pure tt.
  End cool.
  
  Definition indirect_call (_ : unit) : M unit :=
    let* _ :=
      let* _ :=
        let* α0 :=
          format_arguments::["new_const"]
            (addr_of [ "called `my::indirect_call()`, that
> " ]) in
        _crate.io._print α0 in
      Pure tt in
    let* _ := self.function tt in
    let* _ := function tt in
    let* _ := self.cool.function tt in
    let* _ := super.function tt in
    let* _ := root_function tt in
    Pure tt.
End my.

Definition function (_ : unit) : M unit :=
  let* _ :=
    let* _ :=
      let* α0 :=
        format_arguments::["new_const"]
          (addr_of [ "called `my::function()`
" ]) in
      _crate.io._print α0 in
    Pure tt in
  Pure tt.

Module cool.
  Definition function (_ : unit) : M unit :=
    let* _ :=
      let* _ :=
        let* α0 :=
          format_arguments::["new_const"]
            (addr_of [ "called `my::cool::function()`
" ]) in
        _crate.io._print α0 in
      Pure tt in
    Pure tt.
End cool.

Definition function (_ : unit) : M unit :=
  let* _ :=
    let* _ :=
      let* α0 :=
        format_arguments::["new_const"]
          (addr_of [ "called `my::cool::function()`
" ]) in
      _crate.io._print α0 in
    Pure tt in
  Pure tt.

Definition indirect_call (_ : unit) : M unit :=
  let* _ :=
    let* _ :=
      let* α0 :=
        format_arguments::["new_const"]
          (addr_of [ "called `my::indirect_call()`, that
> " ]) in
      _crate.io._print α0 in
    Pure tt in
  let* _ := self.function tt in
  let* _ := function tt in
  let* _ := self.cool.function tt in
  let* _ := super.function tt in
  let* _ := root_function tt in
  Pure tt.

Module root_function := crate.cool.function.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let* _ := my.indirect_call tt in
  Pure tt.
