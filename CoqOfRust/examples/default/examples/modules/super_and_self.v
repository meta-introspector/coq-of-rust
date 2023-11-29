(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn function() {
    println!("called `function()`");
}
*)
Definition function : M unit :=
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "called `function()`
" ] in
      let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
      let* α2 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α1) in
      let* α3 : core.fmt.Arguments.t :=
        core.fmt.Arguments.t::["new_const"] α2 in
      let* α4 : unit := std.io.stdio._print α3 in
      M.alloc α4 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.

Module cool.
  (*
      pub fn function() {
          println!("called `cool::function()`");
      }
  *)
  Definition function : M unit :=
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "called `cool::function()`
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_const"] α2 in
        let* α4 : unit := std.io.stdio._print α3 in
        M.alloc α4 in
      M.alloc tt in
    let* α0 : M.Val unit := M.alloc tt in
    M.read α0.
End cool.

(*
    pub fn function() {
        println!("called `cool::function()`");
    }
*)
Definition function : M unit :=
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "called `cool::function()`
" ] in
      let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
      let* α2 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α1) in
      let* α3 : core.fmt.Arguments.t :=
        core.fmt.Arguments.t::["new_const"] α2 in
      let* α4 : unit := std.io.stdio._print α3 in
      M.alloc α4 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.

Module my.
  (*
      fn function() {
          println!("called `my::function()`");
      }
  *)
  Definition function : M unit :=
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "called `my::function()`
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_const"] α2 in
        let* α4 : unit := std.io.stdio._print α3 in
        M.alloc α4 in
      M.alloc tt in
    let* α0 : M.Val unit := M.alloc tt in
    M.read α0.
  
  Module cool.
    (*
            pub fn function() {
                println!("called `my::cool::function()`");
            }
    *)
    Definition function : M unit :=
      let* _ : M.Val unit :=
        let* _ : M.Val unit :=
          let* α0 : M.Val (array (ref str.t)) :=
            M.alloc [ mk_str "called `my::cool::function()`
" ] in
          let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
          let* α2 : ref (slice (ref str.t)) :=
            M.read (pointer_coercion "Unsize" α1) in
          let* α3 : core.fmt.Arguments.t :=
            core.fmt.Arguments.t::["new_const"] α2 in
          let* α4 : unit := std.io.stdio._print α3 in
          M.alloc α4 in
        M.alloc tt in
      let* α0 : M.Val unit := M.alloc tt in
      M.read α0.
  End cool.
  
  (*
      pub fn indirect_call() {
          // Let's access all the functions named `function` from this scope!
          print!("called `my::indirect_call()`, that\n> ");
  
          // The `self` keyword refers to the current module scope - in this case `my`.
          // Calling `self::function()` and calling `function()` directly both give
          // the same result, because they refer to the same function.
          self::function();
          function();
  
          // We can also use `self` to access another module inside `my`:
          self::cool::function();
  
          // The `super` keyword refers to the parent scope (outside the `my` module).
          super::function();
  
          // This will bind to the `cool::function` in the *crate* scope.
          // In this case the crate scope is the outermost scope.
          {
              use crate::cool::function as root_function;
              root_function();
          }
      }
  *)
  Definition indirect_call : M unit :=
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "called `my::indirect_call()`, that
> " ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_const"] α2 in
        let* α4 : unit := std.io.stdio._print α3 in
        M.alloc α4 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* α0 : unit := super_and_self.my.function in
      M.alloc α0 in
    let* _ : M.Val unit :=
      let* α0 : unit := super_and_self.my.function in
      M.alloc α0 in
    let* _ : M.Val unit :=
      let* α0 : unit := super_and_self.my.cool.function in
      M.alloc α0 in
    let* _ : M.Val unit :=
      let* α0 : unit := super_and_self.function in
      M.alloc α0 in
    let* _ : M.Val unit :=
      let* α0 : unit := super_and_self.cool.function in
      M.alloc α0 in
    let* α0 : M.Val unit := M.alloc tt in
    M.read α0.
End my.

(*
    fn function() {
        println!("called `my::function()`");
    }
*)
Definition function : M unit :=
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "called `my::function()`
" ] in
      let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
      let* α2 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α1) in
      let* α3 : core.fmt.Arguments.t :=
        core.fmt.Arguments.t::["new_const"] α2 in
      let* α4 : unit := std.io.stdio._print α3 in
      M.alloc α4 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.

Module Wrap_cool_1.
Module cool.
  (*
          pub fn function() {
              println!("called `my::cool::function()`");
          }
  *)
  Definition function : M unit :=
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "called `my::cool::function()`
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_const"] α2 in
        let* α4 : unit := std.io.stdio._print α3 in
        M.alloc α4 in
      M.alloc tt in
    let* α0 : M.Val unit := M.alloc tt in
    M.read α0.
End cool.
End Wrap_cool_1.
Import Wrap_cool_1.

(*
        pub fn function() {
            println!("called `my::cool::function()`");
        }
*)
Definition function : M unit :=
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "called `my::cool::function()`
" ] in
      let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
      let* α2 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α1) in
      let* α3 : core.fmt.Arguments.t :=
        core.fmt.Arguments.t::["new_const"] α2 in
      let* α4 : unit := std.io.stdio._print α3 in
      M.alloc α4 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.

(*
    pub fn indirect_call() {
        // Let's access all the functions named `function` from this scope!
        print!("called `my::indirect_call()`, that\n> ");

        // The `self` keyword refers to the current module scope - in this case `my`.
        // Calling `self::function()` and calling `function()` directly both give
        // the same result, because they refer to the same function.
        self::function();
        function();

        // We can also use `self` to access another module inside `my`:
        self::cool::function();

        // The `super` keyword refers to the parent scope (outside the `my` module).
        super::function();

        // This will bind to the `cool::function` in the *crate* scope.
        // In this case the crate scope is the outermost scope.
        {
            use crate::cool::function as root_function;
            root_function();
        }
    }
*)
Definition indirect_call : M unit :=
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "called `my::indirect_call()`, that
> " ] in
      let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
      let* α2 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α1) in
      let* α3 : core.fmt.Arguments.t :=
        core.fmt.Arguments.t::["new_const"] α2 in
      let* α4 : unit := std.io.stdio._print α3 in
      M.alloc α4 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* α0 : unit := super_and_self.my.function in
    M.alloc α0 in
  let* _ : M.Val unit :=
    let* α0 : unit := super_and_self.my.function in
    M.alloc α0 in
  let* _ : M.Val unit :=
    let* α0 : unit := super_and_self.my.cool.function in
    M.alloc α0 in
  let* _ : M.Val unit :=
    let* α0 : unit := super_and_self.function in
    M.alloc α0 in
  let* _ : M.Val unit :=
    let* α0 : unit := super_and_self.cool.function in
    M.alloc α0 in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.

(*
fn main() {
    my::indirect_call();
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* _ : M.Val unit :=
    let* α0 : unit := super_and_self.my.indirect_call in
    M.alloc α0 in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
