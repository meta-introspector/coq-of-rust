(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module my_mod.
  (*
      fn private_function() {
          println!("called `my_mod::private_function()`");
      }
  *)
  Definition private_function : M (M.Val unit) :=
    M.function_body
      (let* _ : ltac:(refine (M.Val unit)) :=
        let* _ : ltac:(refine (M.Val unit)) :=
          let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
            M.alloc [ mk_str "called `my_mod::private_function()`
" ] in
          let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) :=
            borrow α0 in
          let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
            core.fmt.Arguments.t::["new_const"] α2 in
          std.io.stdio._print α3 in
        M.alloc tt in
      M.alloc tt).
  
  (*
      pub fn function() {
          println!("called `my_mod::function()`");
      }
  *)
  Definition function : M (M.Val unit) :=
    M.function_body
      (let* _ : ltac:(refine (M.Val unit)) :=
        let* _ : ltac:(refine (M.Val unit)) :=
          let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
            M.alloc [ mk_str "called `my_mod::function()`
" ] in
          let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) :=
            borrow α0 in
          let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
            core.fmt.Arguments.t::["new_const"] α2 in
          std.io.stdio._print α3 in
        M.alloc tt in
      M.alloc tt).
  
  (*
      pub fn indirect_access() {
          print!("called `my_mod::indirect_access()`, that\n> ");
          private_function();
      }
  *)
  Definition indirect_access : M (M.Val unit) :=
    M.function_body
      (let* _ : ltac:(refine (M.Val unit)) :=
        let* _ : ltac:(refine (M.Val unit)) :=
          let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
            M.alloc [ mk_str "called `my_mod::indirect_access()`, that
> " ] in
          let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) :=
            borrow α0 in
          let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
            core.fmt.Arguments.t::["new_const"] α2 in
          std.io.stdio._print α3 in
        M.alloc tt in
      let* _ : ltac:(refine (M.Val unit)) :=
        visibility.my_mod.private_function in
      M.alloc tt).
  
  Module nested.
    (*
            pub fn function() {
                println!("called `my_mod::nested::function()`");
            }
    *)
    Definition function : M (M.Val unit) :=
      M.function_body
        (let* _ : ltac:(refine (M.Val unit)) :=
          let* _ : ltac:(refine (M.Val unit)) :=
            let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
              M.alloc [ mk_str "called `my_mod::nested::function()`
" ] in
            let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) :=
              borrow α0 in
            let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
              pointer_coercion "Unsize" α1 in
            let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
              core.fmt.Arguments.t::["new_const"] α2 in
            std.io.stdio._print α3 in
          M.alloc tt in
        M.alloc tt).
    
    (*
            fn private_function() {
                println!("called `my_mod::nested::private_function()`");
            }
    *)
    (* #[allow(dead_code)] - function was ignored by the compiler *)
    Definition private_function : M (M.Val unit) :=
      M.function_body
        (let* _ : ltac:(refine (M.Val unit)) :=
          let* _ : ltac:(refine (M.Val unit)) :=
            let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
              M.alloc
                [ mk_str "called `my_mod::nested::private_function()`
" ] in
            let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) :=
              borrow α0 in
            let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
              pointer_coercion "Unsize" α1 in
            let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
              core.fmt.Arguments.t::["new_const"] α2 in
            std.io.stdio._print α3 in
          M.alloc tt in
        M.alloc tt).
    
    (*
            pub(in crate::my_mod) fn public_function_in_my_mod() {
                print!("called `my_mod::nested::public_function_in_my_mod()`, that\n> ");
                public_function_in_nested();
            }
    *)
    Definition public_function_in_my_mod : M (M.Val unit) :=
      M.function_body
        (let* _ : ltac:(refine (M.Val unit)) :=
          let* _ : ltac:(refine (M.Val unit)) :=
            let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
              M.alloc
                [
                  mk_str
                    "called `my_mod::nested::public_function_in_my_mod()`, that
> "
                ] in
            let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) :=
              borrow α0 in
            let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
              pointer_coercion "Unsize" α1 in
            let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
              core.fmt.Arguments.t::["new_const"] α2 in
            std.io.stdio._print α3 in
          M.alloc tt in
        let* _ : ltac:(refine (M.Val unit)) :=
          visibility.my_mod.nested.public_function_in_nested in
        M.alloc tt).
    
    (*
            pub(self) fn public_function_in_nested() {
                println!("called `my_mod::nested::public_function_in_nested()`");
            }
    *)
    Definition public_function_in_nested : M (M.Val unit) :=
      M.function_body
        (let* _ : ltac:(refine (M.Val unit)) :=
          let* _ : ltac:(refine (M.Val unit)) :=
            let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
              M.alloc
                [ mk_str "called `my_mod::nested::public_function_in_nested()`
"
                ] in
            let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) :=
              borrow α0 in
            let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
              pointer_coercion "Unsize" α1 in
            let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
              core.fmt.Arguments.t::["new_const"] α2 in
            std.io.stdio._print α3 in
          M.alloc tt in
        M.alloc tt).
    
    (*
            pub(super) fn public_function_in_super_mod() {
                println!("called `my_mod::nested::public_function_in_super_mod()`");
            }
    *)
    Definition public_function_in_super_mod : M (M.Val unit) :=
      M.function_body
        (let* _ : ltac:(refine (M.Val unit)) :=
          let* _ : ltac:(refine (M.Val unit)) :=
            let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
              M.alloc
                [
                  mk_str
                    "called `my_mod::nested::public_function_in_super_mod()`
"
                ] in
            let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) :=
              borrow α0 in
            let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
              pointer_coercion "Unsize" α1 in
            let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
              core.fmt.Arguments.t::["new_const"] α2 in
            std.io.stdio._print α3 in
          M.alloc tt in
        M.alloc tt).
  End nested.
  
  (*
      pub fn call_public_function_in_my_mod() {
          print!("called `my_mod::call_public_function_in_my_mod()`, that\n> ");
          nested::public_function_in_my_mod();
          print!("> ");
          nested::public_function_in_super_mod();
      }
  *)
  Definition call_public_function_in_my_mod : M (M.Val unit) :=
    M.function_body
      (let* _ : ltac:(refine (M.Val unit)) :=
        let* _ : ltac:(refine (M.Val unit)) :=
          let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
            M.alloc
              [
                mk_str
                  "called `my_mod::call_public_function_in_my_mod()`, that
> "
              ] in
          let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) :=
            borrow α0 in
          let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
            core.fmt.Arguments.t::["new_const"] α2 in
          std.io.stdio._print α3 in
        M.alloc tt in
      let* _ : ltac:(refine (M.Val unit)) :=
        visibility.my_mod.nested.public_function_in_my_mod in
      let* _ : ltac:(refine (M.Val unit)) :=
        let* _ : ltac:(refine (M.Val unit)) :=
          let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
            M.alloc [ mk_str "> " ] in
          let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) :=
            borrow α0 in
          let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
            core.fmt.Arguments.t::["new_const"] α2 in
          std.io.stdio._print α3 in
        M.alloc tt in
      let* _ : ltac:(refine (M.Val unit)) :=
        visibility.my_mod.nested.public_function_in_super_mod in
      M.alloc tt).
  
  (*
      pub(crate) fn public_function_in_crate() {
          println!("called `my_mod::public_function_in_crate()`");
      }
  *)
  Definition public_function_in_crate : M (M.Val unit) :=
    M.function_body
      (let* _ : ltac:(refine (M.Val unit)) :=
        let* _ : ltac:(refine (M.Val unit)) :=
          let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
            M.alloc [ mk_str "called `my_mod::public_function_in_crate()`
" ] in
          let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) :=
            borrow α0 in
          let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
            core.fmt.Arguments.t::["new_const"] α2 in
          std.io.stdio._print α3 in
        M.alloc tt in
      M.alloc tt).
  
  Module private_nested.
    (*
            pub fn function() {
                println!("called `my_mod::private_nested::function()`");
            }
    *)
    (* #[allow(dead_code)] - function was ignored by the compiler *)
    Definition function : M (M.Val unit) :=
      M.function_body
        (let* _ : ltac:(refine (M.Val unit)) :=
          let* _ : ltac:(refine (M.Val unit)) :=
            let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
              M.alloc
                [ mk_str "called `my_mod::private_nested::function()`
" ] in
            let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) :=
              borrow α0 in
            let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
              pointer_coercion "Unsize" α1 in
            let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
              core.fmt.Arguments.t::["new_const"] α2 in
            std.io.stdio._print α3 in
          M.alloc tt in
        M.alloc tt).
    
    (*
            pub(crate) fn restricted_function() {
                println!("called `my_mod::private_nested::restricted_function()`");
            }
    *)
    (* #[allow(dead_code)] - function was ignored by the compiler *)
    Definition restricted_function : M (M.Val unit) :=
      M.function_body
        (let* _ : ltac:(refine (M.Val unit)) :=
          let* _ : ltac:(refine (M.Val unit)) :=
            let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
              M.alloc
                [
                  mk_str
                    "called `my_mod::private_nested::restricted_function()`
"
                ] in
            let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) :=
              borrow α0 in
            let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
              pointer_coercion "Unsize" α1 in
            let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
              core.fmt.Arguments.t::["new_const"] α2 in
            std.io.stdio._print α3 in
          M.alloc tt in
        M.alloc tt).
  End private_nested.
End my_mod.

(*
    fn private_function() {
        println!("called `my_mod::private_function()`");
    }
*)
Definition private_function : M (M.Val unit) :=
  M.function_body
    (let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
          M.alloc [ mk_str "called `my_mod::private_function()`
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_const"] α2 in
        std.io.stdio._print α3 in
      M.alloc tt in
    M.alloc tt).

(*
    pub fn function() {
        println!("called `my_mod::function()`");
    }
*)
Definition function : M (M.Val unit) :=
  M.function_body
    (let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
          M.alloc [ mk_str "called `my_mod::function()`
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_const"] α2 in
        std.io.stdio._print α3 in
      M.alloc tt in
    M.alloc tt).

(*
    pub fn indirect_access() {
        print!("called `my_mod::indirect_access()`, that\n> ");
        private_function();
    }
*)
Definition indirect_access : M (M.Val unit) :=
  M.function_body
    (let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
          M.alloc [ mk_str "called `my_mod::indirect_access()`, that
> " ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_const"] α2 in
        std.io.stdio._print α3 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) := visibility.my_mod.private_function in
    M.alloc tt).

Module nested.
  (*
          pub fn function() {
              println!("called `my_mod::nested::function()`");
          }
  *)
  Definition function : M (M.Val unit) :=
    M.function_body
      (let* _ : ltac:(refine (M.Val unit)) :=
        let* _ : ltac:(refine (M.Val unit)) :=
          let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
            M.alloc [ mk_str "called `my_mod::nested::function()`
" ] in
          let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) :=
            borrow α0 in
          let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
            core.fmt.Arguments.t::["new_const"] α2 in
          std.io.stdio._print α3 in
        M.alloc tt in
      M.alloc tt).
  
  (*
          fn private_function() {
              println!("called `my_mod::nested::private_function()`");
          }
  *)
  (* #[allow(dead_code)] - function was ignored by the compiler *)
  Definition private_function : M (M.Val unit) :=
    M.function_body
      (let* _ : ltac:(refine (M.Val unit)) :=
        let* _ : ltac:(refine (M.Val unit)) :=
          let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
            M.alloc [ mk_str "called `my_mod::nested::private_function()`
" ] in
          let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) :=
            borrow α0 in
          let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
            core.fmt.Arguments.t::["new_const"] α2 in
          std.io.stdio._print α3 in
        M.alloc tt in
      M.alloc tt).
  
  (*
          pub(in crate::my_mod) fn public_function_in_my_mod() {
              print!("called `my_mod::nested::public_function_in_my_mod()`, that\n> ");
              public_function_in_nested();
          }
  *)
  Definition public_function_in_my_mod : M (M.Val unit) :=
    M.function_body
      (let* _ : ltac:(refine (M.Val unit)) :=
        let* _ : ltac:(refine (M.Val unit)) :=
          let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
            M.alloc
              [
                mk_str
                  "called `my_mod::nested::public_function_in_my_mod()`, that
> "
              ] in
          let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) :=
            borrow α0 in
          let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
            core.fmt.Arguments.t::["new_const"] α2 in
          std.io.stdio._print α3 in
        M.alloc tt in
      let* _ : ltac:(refine (M.Val unit)) :=
        visibility.my_mod.nested.public_function_in_nested in
      M.alloc tt).
  
  (*
          pub(self) fn public_function_in_nested() {
              println!("called `my_mod::nested::public_function_in_nested()`");
          }
  *)
  Definition public_function_in_nested : M (M.Val unit) :=
    M.function_body
      (let* _ : ltac:(refine (M.Val unit)) :=
        let* _ : ltac:(refine (M.Val unit)) :=
          let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
            M.alloc
              [ mk_str "called `my_mod::nested::public_function_in_nested()`
"
              ] in
          let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) :=
            borrow α0 in
          let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
            core.fmt.Arguments.t::["new_const"] α2 in
          std.io.stdio._print α3 in
        M.alloc tt in
      M.alloc tt).
  
  (*
          pub(super) fn public_function_in_super_mod() {
              println!("called `my_mod::nested::public_function_in_super_mod()`");
          }
  *)
  Definition public_function_in_super_mod : M (M.Val unit) :=
    M.function_body
      (let* _ : ltac:(refine (M.Val unit)) :=
        let* _ : ltac:(refine (M.Val unit)) :=
          let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
            M.alloc
              [
                mk_str
                  "called `my_mod::nested::public_function_in_super_mod()`
"
              ] in
          let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) :=
            borrow α0 in
          let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
            core.fmt.Arguments.t::["new_const"] α2 in
          std.io.stdio._print α3 in
        M.alloc tt in
      M.alloc tt).
End nested.

(*
        pub fn function() {
            println!("called `my_mod::nested::function()`");
        }
*)
Definition function : M (M.Val unit) :=
  M.function_body
    (let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
          M.alloc [ mk_str "called `my_mod::nested::function()`
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_const"] α2 in
        std.io.stdio._print α3 in
      M.alloc tt in
    M.alloc tt).

(*
        fn private_function() {
            println!("called `my_mod::nested::private_function()`");
        }
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition private_function : M (M.Val unit) :=
  M.function_body
    (let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
          M.alloc [ mk_str "called `my_mod::nested::private_function()`
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_const"] α2 in
        std.io.stdio._print α3 in
      M.alloc tt in
    M.alloc tt).

(*
        pub(in crate::my_mod) fn public_function_in_my_mod() {
            print!("called `my_mod::nested::public_function_in_my_mod()`, that\n> ");
            public_function_in_nested();
        }
*)
Definition public_function_in_my_mod : M (M.Val unit) :=
  M.function_body
    (let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
          M.alloc
            [
              mk_str
                "called `my_mod::nested::public_function_in_my_mod()`, that
> "
            ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_const"] α2 in
        std.io.stdio._print α3 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      visibility.my_mod.nested.public_function_in_nested in
    M.alloc tt).

(*
        pub(self) fn public_function_in_nested() {
            println!("called `my_mod::nested::public_function_in_nested()`");
        }
*)
Definition public_function_in_nested : M (M.Val unit) :=
  M.function_body
    (let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
          M.alloc
            [ mk_str "called `my_mod::nested::public_function_in_nested()`
"
            ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_const"] α2 in
        std.io.stdio._print α3 in
      M.alloc tt in
    M.alloc tt).

(*
        pub(super) fn public_function_in_super_mod() {
            println!("called `my_mod::nested::public_function_in_super_mod()`");
        }
*)
Definition public_function_in_super_mod : M (M.Val unit) :=
  M.function_body
    (let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
          M.alloc
            [ mk_str "called `my_mod::nested::public_function_in_super_mod()`
"
            ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_const"] α2 in
        std.io.stdio._print α3 in
      M.alloc tt in
    M.alloc tt).

(*
    pub fn call_public_function_in_my_mod() {
        print!("called `my_mod::call_public_function_in_my_mod()`, that\n> ");
        nested::public_function_in_my_mod();
        print!("> ");
        nested::public_function_in_super_mod();
    }
*)
Definition call_public_function_in_my_mod : M (M.Val unit) :=
  M.function_body
    (let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
          M.alloc
            [
              mk_str
                "called `my_mod::call_public_function_in_my_mod()`, that
> "
            ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_const"] α2 in
        std.io.stdio._print α3 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      visibility.my_mod.nested.public_function_in_my_mod in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
          M.alloc [ mk_str "> " ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_const"] α2 in
        std.io.stdio._print α3 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      visibility.my_mod.nested.public_function_in_super_mod in
    M.alloc tt).

(*
    pub(crate) fn public_function_in_crate() {
        println!("called `my_mod::public_function_in_crate()`");
    }
*)
Definition public_function_in_crate : M (M.Val unit) :=
  M.function_body
    (let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
          M.alloc [ mk_str "called `my_mod::public_function_in_crate()`
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_const"] α2 in
        std.io.stdio._print α3 in
      M.alloc tt in
    M.alloc tt).

Module private_nested.
  (*
          pub fn function() {
              println!("called `my_mod::private_nested::function()`");
          }
  *)
  (* #[allow(dead_code)] - function was ignored by the compiler *)
  Definition function : M (M.Val unit) :=
    M.function_body
      (let* _ : ltac:(refine (M.Val unit)) :=
        let* _ : ltac:(refine (M.Val unit)) :=
          let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
            M.alloc [ mk_str "called `my_mod::private_nested::function()`
" ] in
          let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) :=
            borrow α0 in
          let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
            core.fmt.Arguments.t::["new_const"] α2 in
          std.io.stdio._print α3 in
        M.alloc tt in
      M.alloc tt).
  
  (*
          pub(crate) fn restricted_function() {
              println!("called `my_mod::private_nested::restricted_function()`");
          }
  *)
  (* #[allow(dead_code)] - function was ignored by the compiler *)
  Definition restricted_function : M (M.Val unit) :=
    M.function_body
      (let* _ : ltac:(refine (M.Val unit)) :=
        let* _ : ltac:(refine (M.Val unit)) :=
          let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
            M.alloc
              [ mk_str "called `my_mod::private_nested::restricted_function()`
"
              ] in
          let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) :=
            borrow α0 in
          let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
            core.fmt.Arguments.t::["new_const"] α2 in
          std.io.stdio._print α3 in
        M.alloc tt in
      M.alloc tt).
End private_nested.

(*
        pub fn function() {
            println!("called `my_mod::private_nested::function()`");
        }
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition function : M (M.Val unit) :=
  M.function_body
    (let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
          M.alloc [ mk_str "called `my_mod::private_nested::function()`
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_const"] α2 in
        std.io.stdio._print α3 in
      M.alloc tt in
    M.alloc tt).

(*
        pub(crate) fn restricted_function() {
            println!("called `my_mod::private_nested::restricted_function()`");
        }
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition restricted_function : M (M.Val unit) :=
  M.function_body
    (let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
          M.alloc
            [ mk_str "called `my_mod::private_nested::restricted_function()`
"
            ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_const"] α2 in
        std.io.stdio._print α3 in
      M.alloc tt in
    M.alloc tt).

(*
fn function() {
    println!("called `function()`");
}
*)
Definition function : M (M.Val unit) :=
  M.function_body
    (let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
          M.alloc [ mk_str "called `function()`
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_const"] α2 in
        std.io.stdio._print α3 in
      M.alloc tt in
    M.alloc tt).

(*
fn main() {
    // Modules allow disambiguation between items that have the same name.
    function();
    my_mod::function();

    // Public items, including those inside nested modules, can be
    // accessed from outside the parent module.
    my_mod::indirect_access();
    my_mod::nested::function();
    my_mod::call_public_function_in_my_mod();

    // pub(crate) items can be called from anywhere in the same crate
    my_mod::public_function_in_crate();

    // pub(in path) items can only be called from within the module specified
    // Error! function `public_function_in_my_mod` is private
    //my_mod::nested::public_function_in_my_mod();
    // TODO ^ Try uncommenting this line

    // Private items of a module cannot be directly accessed, even if
    // nested in a public module:

    // Error! `private_function` is private
    //my_mod::private_function();
    // TODO ^ Try uncommenting this line

    // Error! `private_function` is private
    //my_mod::nested::private_function();
    // TODO ^ Try uncommenting this line

    // Error! `private_nested` is a private module
    //my_mod::private_nested::function();
    // TODO ^ Try uncommenting this line

    // Error! `private_nested` is a private module
    //my_mod::private_nested::restricted_function();
    // TODO ^ Try uncommenting this line
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M (M.Val unit) :=
  M.function_body
    (let* _ : ltac:(refine (M.Val unit)) := visibility.function in
    let* _ : ltac:(refine (M.Val unit)) := visibility.my_mod.function in
    let* _ : ltac:(refine (M.Val unit)) := visibility.my_mod.indirect_access in
    let* _ : ltac:(refine (M.Val unit)) := visibility.my_mod.nested.function in
    let* _ : ltac:(refine (M.Val unit)) :=
      visibility.my_mod.call_public_function_in_my_mod in
    let* _ : ltac:(refine (M.Val unit)) :=
      visibility.my_mod.public_function_in_crate in
    M.alloc tt).
