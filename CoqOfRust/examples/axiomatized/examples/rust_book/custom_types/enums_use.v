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
Parameter main : M unit.
