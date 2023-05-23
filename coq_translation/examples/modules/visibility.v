(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module my_mod.
  Definition private_function (_ : unit) : unit :=
    _crate.io._print
      (format_arguments::["new_const"]
        [ "called `my_mod::private_function()`
" ]) ;;
    tt ;;
    tt.
  
  Definition function (_ : unit) : unit :=
    _crate.io._print
      (format_arguments::["new_const"] [ "called `my_mod::function()`
" ]) ;;
    tt ;;
    tt.
  
  Definition indirect_access (_ : unit) : unit :=
    _crate.io._print
      (format_arguments::["new_const"]
        [ "called `my_mod::indirect_access()`, that
> " ]) ;;
    tt ;;
    private_function tt ;;
    tt.
  
  Module nested.
    Definition function (_ : unit) : unit :=
      _crate.io._print
        (format_arguments::["new_const"]
          [ "called `my_mod::nested::function()`
" ]) ;;
      tt ;;
      tt.
    
    (* #[allow(dead_code)] - function was ignored by the compiler *)
    Definition private_function (_ : unit) : unit :=
      _crate.io._print
        (format_arguments::["new_const"]
          [ "called `my_mod::nested::private_function()`
" ]) ;;
      tt ;;
      tt.
    
    Definition public_function_in_my_mod (_ : unit) : unit :=
      _crate.io._print
        (format_arguments::["new_const"]
          [ "called `my_mod::nested::public_function_in_my_mod()`, that
> "
          ]) ;;
      tt ;;
      public_function_in_nested tt ;;
      tt.
    
    Definition public_function_in_nested (_ : unit) : unit :=
      _crate.io._print
        (format_arguments::["new_const"]
          [ "called `my_mod::nested::public_function_in_nested()`
" ]) ;;
      tt ;;
      tt.
    
    Definition public_function_in_super_mod (_ : unit) : unit :=
      _crate.io._print
        (format_arguments::["new_const"]
          [ "called `my_mod::nested::public_function_in_super_mod()`
" ]) ;;
      tt ;;
      tt.
  End nested.
  
  Definition call_public_function_in_my_mod (_ : unit) : unit :=
    _crate.io._print
      (format_arguments::["new_const"]
        [ "called `my_mod::call_public_function_in_my_mod()`, that
> " ]) ;;
    tt ;;
    nested.public_function_in_my_mod tt ;;
    _crate.io._print (format_arguments::["new_const"] [ "> " ]) ;;
    tt ;;
    nested.public_function_in_super_mod tt ;;
    tt.
  
  Definition public_function_in_crate (_ : unit) : unit :=
    _crate.io._print
      (format_arguments::["new_const"]
        [ "called `my_mod::public_function_in_crate()`
" ]) ;;
    tt ;;
    tt.
  
  Module private_nested.
    (* #[allow(dead_code)] - function was ignored by the compiler *)
    Definition function (_ : unit) : unit :=
      _crate.io._print
        (format_arguments::["new_const"]
          [ "called `my_mod::private_nested::function()`
" ]) ;;
      tt ;;
      tt.
    
    (* #[allow(dead_code)] - function was ignored by the compiler *)
    Definition restricted_function (_ : unit) : unit :=
      _crate.io._print
        (format_arguments::["new_const"]
          [ "called `my_mod::private_nested::restricted_function()`
" ]) ;;
      tt ;;
      tt.
  End private_nested.
End my_mod.

Definition private_function (_ : unit) : unit :=
  _crate.io._print
    (format_arguments::["new_const"]
      [ "called `my_mod::private_function()`
" ]) ;;
  tt ;;
  tt.

Definition function (_ : unit) : unit :=
  _crate.io._print
    (format_arguments::["new_const"] [ "called `my_mod::function()`
" ]) ;;
  tt ;;
  tt.

Definition indirect_access (_ : unit) : unit :=
  _crate.io._print
    (format_arguments::["new_const"]
      [ "called `my_mod::indirect_access()`, that
> " ]) ;;
  tt ;;
  private_function tt ;;
  tt.

Module nested.
  Definition function (_ : unit) : unit :=
    _crate.io._print
      (format_arguments::["new_const"]
        [ "called `my_mod::nested::function()`
" ]) ;;
    tt ;;
    tt.
  
  (* #[allow(dead_code)] - function was ignored by the compiler *)
  Definition private_function (_ : unit) : unit :=
    _crate.io._print
      (format_arguments::["new_const"]
        [ "called `my_mod::nested::private_function()`
" ]) ;;
    tt ;;
    tt.
  
  Definition public_function_in_my_mod (_ : unit) : unit :=
    _crate.io._print
      (format_arguments::["new_const"]
        [ "called `my_mod::nested::public_function_in_my_mod()`, that
> " ]) ;;
    tt ;;
    public_function_in_nested tt ;;
    tt.
  
  Definition public_function_in_nested (_ : unit) : unit :=
    _crate.io._print
      (format_arguments::["new_const"]
        [ "called `my_mod::nested::public_function_in_nested()`
" ]) ;;
    tt ;;
    tt.
  
  Definition public_function_in_super_mod (_ : unit) : unit :=
    _crate.io._print
      (format_arguments::["new_const"]
        [ "called `my_mod::nested::public_function_in_super_mod()`
" ]) ;;
    tt ;;
    tt.
End nested.

Definition function (_ : unit) : unit :=
  _crate.io._print
    (format_arguments::["new_const"]
      [ "called `my_mod::nested::function()`
" ]) ;;
  tt ;;
  tt.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition private_function (_ : unit) : unit :=
  _crate.io._print
    (format_arguments::["new_const"]
      [ "called `my_mod::nested::private_function()`
" ]) ;;
  tt ;;
  tt.

Definition public_function_in_my_mod (_ : unit) : unit :=
  _crate.io._print
    (format_arguments::["new_const"]
      [ "called `my_mod::nested::public_function_in_my_mod()`, that
> " ]) ;;
  tt ;;
  public_function_in_nested tt ;;
  tt.

Definition public_function_in_nested (_ : unit) : unit :=
  _crate.io._print
    (format_arguments::["new_const"]
      [ "called `my_mod::nested::public_function_in_nested()`
" ]) ;;
  tt ;;
  tt.

Definition public_function_in_super_mod (_ : unit) : unit :=
  _crate.io._print
    (format_arguments::["new_const"]
      [ "called `my_mod::nested::public_function_in_super_mod()`
" ]) ;;
  tt ;;
  tt.

Definition call_public_function_in_my_mod (_ : unit) : unit :=
  _crate.io._print
    (format_arguments::["new_const"]
      [ "called `my_mod::call_public_function_in_my_mod()`, that
> " ]) ;;
  tt ;;
  nested.public_function_in_my_mod tt ;;
  _crate.io._print (format_arguments::["new_const"] [ "> " ]) ;;
  tt ;;
  nested.public_function_in_super_mod tt ;;
  tt.

Definition public_function_in_crate (_ : unit) : unit :=
  _crate.io._print
    (format_arguments::["new_const"]
      [ "called `my_mod::public_function_in_crate()`
" ]) ;;
  tt ;;
  tt.

Module private_nested.
  (* #[allow(dead_code)] - function was ignored by the compiler *)
  Definition function (_ : unit) : unit :=
    _crate.io._print
      (format_arguments::["new_const"]
        [ "called `my_mod::private_nested::function()`
" ]) ;;
    tt ;;
    tt.
  
  (* #[allow(dead_code)] - function was ignored by the compiler *)
  Definition restricted_function (_ : unit) : unit :=
    _crate.io._print
      (format_arguments::["new_const"]
        [ "called `my_mod::private_nested::restricted_function()`
" ]) ;;
    tt ;;
    tt.
End private_nested.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition function (_ : unit) : unit :=
  _crate.io._print
    (format_arguments::["new_const"]
      [ "called `my_mod::private_nested::function()`
" ]) ;;
  tt ;;
  tt.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition restricted_function (_ : unit) : unit :=
  _crate.io._print
    (format_arguments::["new_const"]
      [ "called `my_mod::private_nested::restricted_function()`
" ]) ;;
  tt ;;
  tt.

Definition function (_ : unit) : unit :=
  _crate.io._print
    (format_arguments::["new_const"] [ "called `function()`
" ]) ;;
  tt ;;
  tt.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : unit :=
  function tt ;;
  my_mod.function tt ;;
  my_mod.indirect_access tt ;;
  my_mod.nested.function tt ;;
  my_mod.call_public_function_in_my_mod tt ;;
  my_mod.public_function_in_crate tt ;;
  tt.