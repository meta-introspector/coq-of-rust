(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module my_mod.
  (*
      fn private_function() {
          println!("called `my_mod::private_function()`");
      }
  *)
  Definition private_function : M unit :=
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : ref str.t :=
          M.read (mk_str "called `my_mod::private_function()`
") in
        let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
        let* α2 : core.fmt.Arguments.t :=
          M.call
            (core.fmt.Arguments.t::["new_const"]
              (pointer_coercion "Unsize" (borrow α1))) in
        let* α3 : unit := M.call (std.io.stdio._print α2) in
        M.alloc α3 in
      M.alloc tt in
    let* α0 : M.Val unit := M.alloc tt in
    M.read α0.
  
  (*
      pub fn function() {
          println!("called `my_mod::function()`");
      }
  *)
  Definition function : M unit :=
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : ref str.t := M.read (mk_str "called `my_mod::function()`
") in
        let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
        let* α2 : core.fmt.Arguments.t :=
          M.call
            (core.fmt.Arguments.t::["new_const"]
              (pointer_coercion "Unsize" (borrow α1))) in
        let* α3 : unit := M.call (std.io.stdio._print α2) in
        M.alloc α3 in
      M.alloc tt in
    let* α0 : M.Val unit := M.alloc tt in
    M.read α0.
  
  (*
      pub fn indirect_access() {
          print!("called `my_mod::indirect_access()`, that\n> ");
          private_function();
      }
  *)
  Definition indirect_access : M unit :=
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : ref str.t :=
          M.read (mk_str "called `my_mod::indirect_access()`, that
> ") in
        let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
        let* α2 : core.fmt.Arguments.t :=
          M.call
            (core.fmt.Arguments.t::["new_const"]
              (pointer_coercion "Unsize" (borrow α1))) in
        let* α3 : unit := M.call (std.io.stdio._print α2) in
        M.alloc α3 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* α0 : unit := M.call visibility.my_mod.private_function in
      M.alloc α0 in
    let* α0 : M.Val unit := M.alloc tt in
    M.read α0.
  
  Module nested.
    (*
            pub fn function() {
                println!("called `my_mod::nested::function()`");
            }
    *)
    Definition function : M unit :=
      let* _ : M.Val unit :=
        let* _ : M.Val unit :=
          let* α0 : ref str.t :=
            M.read (mk_str "called `my_mod::nested::function()`
") in
          let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
          let* α2 : core.fmt.Arguments.t :=
            M.call
              (core.fmt.Arguments.t::["new_const"]
                (pointer_coercion "Unsize" (borrow α1))) in
          let* α3 : unit := M.call (std.io.stdio._print α2) in
          M.alloc α3 in
        M.alloc tt in
      let* α0 : M.Val unit := M.alloc tt in
      M.read α0.
    
    (*
            fn private_function() {
                println!("called `my_mod::nested::private_function()`");
            }
    *)
    (* #[allow(dead_code)] - function was ignored by the compiler *)
    Definition private_function : M unit :=
      let* _ : M.Val unit :=
        let* _ : M.Val unit :=
          let* α0 : ref str.t :=
            M.read (mk_str "called `my_mod::nested::private_function()`
") in
          let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
          let* α2 : core.fmt.Arguments.t :=
            M.call
              (core.fmt.Arguments.t::["new_const"]
                (pointer_coercion "Unsize" (borrow α1))) in
          let* α3 : unit := M.call (std.io.stdio._print α2) in
          M.alloc α3 in
        M.alloc tt in
      let* α0 : M.Val unit := M.alloc tt in
      M.read α0.
    
    (*
            pub(in crate::my_mod) fn public_function_in_my_mod() {
                print!("called `my_mod::nested::public_function_in_my_mod()`, that\n> ");
                public_function_in_nested();
            }
    *)
    Definition public_function_in_my_mod : M unit :=
      let* _ : M.Val unit :=
        let* _ : M.Val unit :=
          let* α0 : ref str.t :=
            M.read
              (mk_str
                "called `my_mod::nested::public_function_in_my_mod()`, that
> ") in
          let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
          let* α2 : core.fmt.Arguments.t :=
            M.call
              (core.fmt.Arguments.t::["new_const"]
                (pointer_coercion "Unsize" (borrow α1))) in
          let* α3 : unit := M.call (std.io.stdio._print α2) in
          M.alloc α3 in
        M.alloc tt in
      let* _ : M.Val unit :=
        let* α0 : unit :=
          M.call visibility.my_mod.nested.public_function_in_nested in
        M.alloc α0 in
      let* α0 : M.Val unit := M.alloc tt in
      M.read α0.
    
    (*
            pub(self) fn public_function_in_nested() {
                println!("called `my_mod::nested::public_function_in_nested()`");
            }
    *)
    Definition public_function_in_nested : M unit :=
      let* _ : M.Val unit :=
        let* _ : M.Val unit :=
          let* α0 : ref str.t :=
            M.read
              (mk_str
                "called `my_mod::nested::public_function_in_nested()`
") in
          let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
          let* α2 : core.fmt.Arguments.t :=
            M.call
              (core.fmt.Arguments.t::["new_const"]
                (pointer_coercion "Unsize" (borrow α1))) in
          let* α3 : unit := M.call (std.io.stdio._print α2) in
          M.alloc α3 in
        M.alloc tt in
      let* α0 : M.Val unit := M.alloc tt in
      M.read α0.
    
    (*
            pub(super) fn public_function_in_super_mod() {
                println!("called `my_mod::nested::public_function_in_super_mod()`");
            }
    *)
    Definition public_function_in_super_mod : M unit :=
      let* _ : M.Val unit :=
        let* _ : M.Val unit :=
          let* α0 : ref str.t :=
            M.read
              (mk_str
                "called `my_mod::nested::public_function_in_super_mod()`
") in
          let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
          let* α2 : core.fmt.Arguments.t :=
            M.call
              (core.fmt.Arguments.t::["new_const"]
                (pointer_coercion "Unsize" (borrow α1))) in
          let* α3 : unit := M.call (std.io.stdio._print α2) in
          M.alloc α3 in
        M.alloc tt in
      let* α0 : M.Val unit := M.alloc tt in
      M.read α0.
  End nested.
  
  (*
      pub fn call_public_function_in_my_mod() {
          print!("called `my_mod::call_public_function_in_my_mod()`, that\n> ");
          nested::public_function_in_my_mod();
          print!("> ");
          nested::public_function_in_super_mod();
      }
  *)
  Definition call_public_function_in_my_mod : M unit :=
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : ref str.t :=
          M.read
            (mk_str
              "called `my_mod::call_public_function_in_my_mod()`, that
> ") in
        let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
        let* α2 : core.fmt.Arguments.t :=
          M.call
            (core.fmt.Arguments.t::["new_const"]
              (pointer_coercion "Unsize" (borrow α1))) in
        let* α3 : unit := M.call (std.io.stdio._print α2) in
        M.alloc α3 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* α0 : unit :=
        M.call visibility.my_mod.nested.public_function_in_my_mod in
      M.alloc α0 in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : ref str.t := M.read (mk_str "> ") in
        let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
        let* α2 : core.fmt.Arguments.t :=
          M.call
            (core.fmt.Arguments.t::["new_const"]
              (pointer_coercion "Unsize" (borrow α1))) in
        let* α3 : unit := M.call (std.io.stdio._print α2) in
        M.alloc α3 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* α0 : unit :=
        M.call visibility.my_mod.nested.public_function_in_super_mod in
      M.alloc α0 in
    let* α0 : M.Val unit := M.alloc tt in
    M.read α0.
  
  (*
      pub(crate) fn public_function_in_crate() {
          println!("called `my_mod::public_function_in_crate()`");
      }
  *)
  Definition public_function_in_crate : M unit :=
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : ref str.t :=
          M.read (mk_str "called `my_mod::public_function_in_crate()`
") in
        let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
        let* α2 : core.fmt.Arguments.t :=
          M.call
            (core.fmt.Arguments.t::["new_const"]
              (pointer_coercion "Unsize" (borrow α1))) in
        let* α3 : unit := M.call (std.io.stdio._print α2) in
        M.alloc α3 in
      M.alloc tt in
    let* α0 : M.Val unit := M.alloc tt in
    M.read α0.
  
  Module private_nested.
    (*
            pub fn function() {
                println!("called `my_mod::private_nested::function()`");
            }
    *)
    (* #[allow(dead_code)] - function was ignored by the compiler *)
    Definition function : M unit :=
      let* _ : M.Val unit :=
        let* _ : M.Val unit :=
          let* α0 : ref str.t :=
            M.read (mk_str "called `my_mod::private_nested::function()`
") in
          let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
          let* α2 : core.fmt.Arguments.t :=
            M.call
              (core.fmt.Arguments.t::["new_const"]
                (pointer_coercion "Unsize" (borrow α1))) in
          let* α3 : unit := M.call (std.io.stdio._print α2) in
          M.alloc α3 in
        M.alloc tt in
      let* α0 : M.Val unit := M.alloc tt in
      M.read α0.
    
    (*
            pub(crate) fn restricted_function() {
                println!("called `my_mod::private_nested::restricted_function()`");
            }
    *)
    (* #[allow(dead_code)] - function was ignored by the compiler *)
    Definition restricted_function : M unit :=
      let* _ : M.Val unit :=
        let* _ : M.Val unit :=
          let* α0 : ref str.t :=
            M.read
              (mk_str
                "called `my_mod::private_nested::restricted_function()`
") in
          let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
          let* α2 : core.fmt.Arguments.t :=
            M.call
              (core.fmt.Arguments.t::["new_const"]
                (pointer_coercion "Unsize" (borrow α1))) in
          let* α3 : unit := M.call (std.io.stdio._print α2) in
          M.alloc α3 in
        M.alloc tt in
      let* α0 : M.Val unit := M.alloc tt in
      M.read α0.
  End private_nested.
End my_mod.

(*
    fn private_function() {
        println!("called `my_mod::private_function()`");
    }
*)
Definition private_function : M unit :=
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t :=
        M.read (mk_str "called `my_mod::private_function()`
") in
      let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
      let* α2 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_const"]
            (pointer_coercion "Unsize" (borrow α1))) in
      let* α3 : unit := M.call (std.io.stdio._print α2) in
      M.alloc α3 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.

(*
    pub fn function() {
        println!("called `my_mod::function()`");
    }
*)
Definition function : M unit :=
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "called `my_mod::function()`
") in
      let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
      let* α2 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_const"]
            (pointer_coercion "Unsize" (borrow α1))) in
      let* α3 : unit := M.call (std.io.stdio._print α2) in
      M.alloc α3 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.

(*
    pub fn indirect_access() {
        print!("called `my_mod::indirect_access()`, that\n> ");
        private_function();
    }
*)
Definition indirect_access : M unit :=
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t :=
        M.read (mk_str "called `my_mod::indirect_access()`, that
> ") in
      let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
      let* α2 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_const"]
            (pointer_coercion "Unsize" (borrow α1))) in
      let* α3 : unit := M.call (std.io.stdio._print α2) in
      M.alloc α3 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* α0 : unit := M.call visibility.my_mod.private_function in
    M.alloc α0 in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.

Module nested.
  (*
          pub fn function() {
              println!("called `my_mod::nested::function()`");
          }
  *)
  Definition function : M unit :=
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : ref str.t :=
          M.read (mk_str "called `my_mod::nested::function()`
") in
        let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
        let* α2 : core.fmt.Arguments.t :=
          M.call
            (core.fmt.Arguments.t::["new_const"]
              (pointer_coercion "Unsize" (borrow α1))) in
        let* α3 : unit := M.call (std.io.stdio._print α2) in
        M.alloc α3 in
      M.alloc tt in
    let* α0 : M.Val unit := M.alloc tt in
    M.read α0.
  
  (*
          fn private_function() {
              println!("called `my_mod::nested::private_function()`");
          }
  *)
  (* #[allow(dead_code)] - function was ignored by the compiler *)
  Definition private_function : M unit :=
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : ref str.t :=
          M.read (mk_str "called `my_mod::nested::private_function()`
") in
        let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
        let* α2 : core.fmt.Arguments.t :=
          M.call
            (core.fmt.Arguments.t::["new_const"]
              (pointer_coercion "Unsize" (borrow α1))) in
        let* α3 : unit := M.call (std.io.stdio._print α2) in
        M.alloc α3 in
      M.alloc tt in
    let* α0 : M.Val unit := M.alloc tt in
    M.read α0.
  
  (*
          pub(in crate::my_mod) fn public_function_in_my_mod() {
              print!("called `my_mod::nested::public_function_in_my_mod()`, that\n> ");
              public_function_in_nested();
          }
  *)
  Definition public_function_in_my_mod : M unit :=
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : ref str.t :=
          M.read
            (mk_str
              "called `my_mod::nested::public_function_in_my_mod()`, that
> ") in
        let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
        let* α2 : core.fmt.Arguments.t :=
          M.call
            (core.fmt.Arguments.t::["new_const"]
              (pointer_coercion "Unsize" (borrow α1))) in
        let* α3 : unit := M.call (std.io.stdio._print α2) in
        M.alloc α3 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* α0 : unit :=
        M.call visibility.my_mod.nested.public_function_in_nested in
      M.alloc α0 in
    let* α0 : M.Val unit := M.alloc tt in
    M.read α0.
  
  (*
          pub(self) fn public_function_in_nested() {
              println!("called `my_mod::nested::public_function_in_nested()`");
          }
  *)
  Definition public_function_in_nested : M unit :=
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : ref str.t :=
          M.read
            (mk_str "called `my_mod::nested::public_function_in_nested()`
") in
        let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
        let* α2 : core.fmt.Arguments.t :=
          M.call
            (core.fmt.Arguments.t::["new_const"]
              (pointer_coercion "Unsize" (borrow α1))) in
        let* α3 : unit := M.call (std.io.stdio._print α2) in
        M.alloc α3 in
      M.alloc tt in
    let* α0 : M.Val unit := M.alloc tt in
    M.read α0.
  
  (*
          pub(super) fn public_function_in_super_mod() {
              println!("called `my_mod::nested::public_function_in_super_mod()`");
          }
  *)
  Definition public_function_in_super_mod : M unit :=
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : ref str.t :=
          M.read
            (mk_str
              "called `my_mod::nested::public_function_in_super_mod()`
") in
        let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
        let* α2 : core.fmt.Arguments.t :=
          M.call
            (core.fmt.Arguments.t::["new_const"]
              (pointer_coercion "Unsize" (borrow α1))) in
        let* α3 : unit := M.call (std.io.stdio._print α2) in
        M.alloc α3 in
      M.alloc tt in
    let* α0 : M.Val unit := M.alloc tt in
    M.read α0.
End nested.

(*
        pub fn function() {
            println!("called `my_mod::nested::function()`");
        }
*)
Definition function : M unit :=
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t :=
        M.read (mk_str "called `my_mod::nested::function()`
") in
      let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
      let* α2 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_const"]
            (pointer_coercion "Unsize" (borrow α1))) in
      let* α3 : unit := M.call (std.io.stdio._print α2) in
      M.alloc α3 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.

(*
        fn private_function() {
            println!("called `my_mod::nested::private_function()`");
        }
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition private_function : M unit :=
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t :=
        M.read (mk_str "called `my_mod::nested::private_function()`
") in
      let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
      let* α2 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_const"]
            (pointer_coercion "Unsize" (borrow α1))) in
      let* α3 : unit := M.call (std.io.stdio._print α2) in
      M.alloc α3 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.

(*
        pub(in crate::my_mod) fn public_function_in_my_mod() {
            print!("called `my_mod::nested::public_function_in_my_mod()`, that\n> ");
            public_function_in_nested();
        }
*)
Definition public_function_in_my_mod : M unit :=
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t :=
        M.read
          (mk_str
            "called `my_mod::nested::public_function_in_my_mod()`, that
> ") in
      let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
      let* α2 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_const"]
            (pointer_coercion "Unsize" (borrow α1))) in
      let* α3 : unit := M.call (std.io.stdio._print α2) in
      M.alloc α3 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* α0 : unit :=
      M.call visibility.my_mod.nested.public_function_in_nested in
    M.alloc α0 in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.

(*
        pub(self) fn public_function_in_nested() {
            println!("called `my_mod::nested::public_function_in_nested()`");
        }
*)
Definition public_function_in_nested : M unit :=
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t :=
        M.read
          (mk_str "called `my_mod::nested::public_function_in_nested()`
") in
      let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
      let* α2 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_const"]
            (pointer_coercion "Unsize" (borrow α1))) in
      let* α3 : unit := M.call (std.io.stdio._print α2) in
      M.alloc α3 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.

(*
        pub(super) fn public_function_in_super_mod() {
            println!("called `my_mod::nested::public_function_in_super_mod()`");
        }
*)
Definition public_function_in_super_mod : M unit :=
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t :=
        M.read
          (mk_str "called `my_mod::nested::public_function_in_super_mod()`
") in
      let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
      let* α2 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_const"]
            (pointer_coercion "Unsize" (borrow α1))) in
      let* α3 : unit := M.call (std.io.stdio._print α2) in
      M.alloc α3 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.

(*
    pub fn call_public_function_in_my_mod() {
        print!("called `my_mod::call_public_function_in_my_mod()`, that\n> ");
        nested::public_function_in_my_mod();
        print!("> ");
        nested::public_function_in_super_mod();
    }
*)
Definition call_public_function_in_my_mod : M unit :=
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t :=
        M.read
          (mk_str
            "called `my_mod::call_public_function_in_my_mod()`, that
> ") in
      let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
      let* α2 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_const"]
            (pointer_coercion "Unsize" (borrow α1))) in
      let* α3 : unit := M.call (std.io.stdio._print α2) in
      M.alloc α3 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* α0 : unit :=
      M.call visibility.my_mod.nested.public_function_in_my_mod in
    M.alloc α0 in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "> ") in
      let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
      let* α2 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_const"]
            (pointer_coercion "Unsize" (borrow α1))) in
      let* α3 : unit := M.call (std.io.stdio._print α2) in
      M.alloc α3 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* α0 : unit :=
      M.call visibility.my_mod.nested.public_function_in_super_mod in
    M.alloc α0 in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.

(*
    pub(crate) fn public_function_in_crate() {
        println!("called `my_mod::public_function_in_crate()`");
    }
*)
Definition public_function_in_crate : M unit :=
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t :=
        M.read (mk_str "called `my_mod::public_function_in_crate()`
") in
      let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
      let* α2 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_const"]
            (pointer_coercion "Unsize" (borrow α1))) in
      let* α3 : unit := M.call (std.io.stdio._print α2) in
      M.alloc α3 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.

Module private_nested.
  (*
          pub fn function() {
              println!("called `my_mod::private_nested::function()`");
          }
  *)
  (* #[allow(dead_code)] - function was ignored by the compiler *)
  Definition function : M unit :=
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : ref str.t :=
          M.read (mk_str "called `my_mod::private_nested::function()`
") in
        let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
        let* α2 : core.fmt.Arguments.t :=
          M.call
            (core.fmt.Arguments.t::["new_const"]
              (pointer_coercion "Unsize" (borrow α1))) in
        let* α3 : unit := M.call (std.io.stdio._print α2) in
        M.alloc α3 in
      M.alloc tt in
    let* α0 : M.Val unit := M.alloc tt in
    M.read α0.
  
  (*
          pub(crate) fn restricted_function() {
              println!("called `my_mod::private_nested::restricted_function()`");
          }
  *)
  (* #[allow(dead_code)] - function was ignored by the compiler *)
  Definition restricted_function : M unit :=
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : ref str.t :=
          M.read
            (mk_str
              "called `my_mod::private_nested::restricted_function()`
") in
        let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
        let* α2 : core.fmt.Arguments.t :=
          M.call
            (core.fmt.Arguments.t::["new_const"]
              (pointer_coercion "Unsize" (borrow α1))) in
        let* α3 : unit := M.call (std.io.stdio._print α2) in
        M.alloc α3 in
      M.alloc tt in
    let* α0 : M.Val unit := M.alloc tt in
    M.read α0.
End private_nested.

(*
        pub fn function() {
            println!("called `my_mod::private_nested::function()`");
        }
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition function : M unit :=
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t :=
        M.read (mk_str "called `my_mod::private_nested::function()`
") in
      let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
      let* α2 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_const"]
            (pointer_coercion "Unsize" (borrow α1))) in
      let* α3 : unit := M.call (std.io.stdio._print α2) in
      M.alloc α3 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.

(*
        pub(crate) fn restricted_function() {
            println!("called `my_mod::private_nested::restricted_function()`");
        }
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition restricted_function : M unit :=
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t :=
        M.read
          (mk_str "called `my_mod::private_nested::restricted_function()`
") in
      let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
      let* α2 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_const"]
            (pointer_coercion "Unsize" (borrow α1))) in
      let* α3 : unit := M.call (std.io.stdio._print α2) in
      M.alloc α3 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.

(*
fn function() {
    println!("called `function()`");
}
*)
Definition function : M unit :=
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "called `function()`
") in
      let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
      let* α2 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_const"]
            (pointer_coercion "Unsize" (borrow α1))) in
      let* α3 : unit := M.call (std.io.stdio._print α2) in
      M.alloc α3 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.

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
Definition main : M unit :=
  let* _ : M.Val unit :=
    let* α0 : unit := M.call visibility.function in
    M.alloc α0 in
  let* _ : M.Val unit :=
    let* α0 : unit := M.call visibility.my_mod.function in
    M.alloc α0 in
  let* _ : M.Val unit :=
    let* α0 : unit := M.call visibility.my_mod.indirect_access in
    M.alloc α0 in
  let* _ : M.Val unit :=
    let* α0 : unit := M.call visibility.my_mod.nested.function in
    M.alloc α0 in
  let* _ : M.Val unit :=
    let* α0 : unit := M.call visibility.my_mod.call_public_function_in_my_mod in
    M.alloc α0 in
  let* _ : M.Val unit :=
    let* α0 : unit := M.call visibility.my_mod.public_function_in_crate in
    M.alloc α0 in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
