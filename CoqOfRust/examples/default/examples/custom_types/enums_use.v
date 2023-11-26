(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Status.
  Inductive t : Set :=
  | Rich
  | Poor.
End Status.

Module Work.
  Inductive t : Set :=
  | Civilian
  | Soldier.
End Work.

(*
fn main() {
    // Equivalent to `Status::Poor`.
    let status = Poor;
    // Equivalent to `Work::Civilian`.
    let work = Civilian;

    match status {
        // Note the lack of scoping because of the explicit `use` above.
        Rich => println!("The rich have lots of money!"),
        Poor => println!("The poor have no money..."),
    }

    match work {
        // Note again the lack of scoping.
        Civilian => println!("Civilians work!"),
        Soldier => println!("Soldiers fight!"),
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* status : M.Val enums_use.Status.t := M.alloc enums_use.Status.Poor in
    let* work : M.Val enums_use.Work.t := M.alloc enums_use.Work.Civilian in
    let* _ : M.Val unit :=
      let* α0 := M.read status in
      match α0 with
      | enums_use.Status.Rich  =>
        let* _ : M.Val unit :=
          let* α0 : M.Val (array (ref str.t)) :=
            M.alloc [ mk_str "The rich have lots of money!
" ] in
          let* α1 : ref (array (ref str.t)) := borrow α0 in
          let* α2 : M.Val (array (ref str.t)) := deref α1 in
          let* α3 : ref (array (ref str.t)) := borrow α2 in
          let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
          let* α5 : M.Val (ref (slice (ref str.t))) :=
            pointer_coercion "Unsize" α4 in
          let* α6 := M.read α5 in
          let* α7 : core.fmt.Arguments.t :=
            core.fmt.Arguments.t::["new_const"] α6 in
          let* α8 : unit := std.io.stdio._print α7 in
          M.alloc α8 in
        M.alloc tt
      | enums_use.Status.Poor  =>
        let* _ : M.Val unit :=
          let* α0 : M.Val (array (ref str.t)) :=
            M.alloc [ mk_str "The poor have no money...
" ] in
          let* α1 : ref (array (ref str.t)) := borrow α0 in
          let* α2 : M.Val (array (ref str.t)) := deref α1 in
          let* α3 : ref (array (ref str.t)) := borrow α2 in
          let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
          let* α5 : M.Val (ref (slice (ref str.t))) :=
            pointer_coercion "Unsize" α4 in
          let* α6 := M.read α5 in
          let* α7 : core.fmt.Arguments.t :=
            core.fmt.Arguments.t::["new_const"] α6 in
          let* α8 : unit := std.io.stdio._print α7 in
          M.alloc α8 in
        M.alloc tt
      end in
    let* α0 := M.read work in
    match α0 with
    | enums_use.Work.Civilian  =>
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Civilians work!
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (array (ref str.t)) := deref α1 in
        let* α3 : ref (array (ref str.t)) := borrow α2 in
        let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
        let* α5 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α4 in
        let* α6 := M.read α5 in
        let* α7 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_const"] α6 in
        let* α8 : unit := std.io.stdio._print α7 in
        M.alloc α8 in
      M.alloc tt
    | enums_use.Work.Soldier  =>
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Soldiers fight!
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (array (ref str.t)) := deref α1 in
        let* α3 : ref (array (ref str.t)) := borrow α2 in
        let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
        let* α5 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α4 in
        let* α6 := M.read α5 in
        let* α7 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_const"] α6 in
        let* α8 : unit := std.io.stdio._print α7 in
        M.alloc α8 in
      M.alloc tt
    end).
