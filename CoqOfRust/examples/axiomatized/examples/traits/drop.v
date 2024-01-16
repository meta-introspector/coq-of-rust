(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Droppable.
Section Droppable.
  Record t : Set := {
    name : ref str.t;
  }.
  
  Definition Get_name :=
    Ref.map (fun α => Some α.(name)) (fun β α => Some (α <| name := β |>)).
End Droppable.
End Droppable.

Module  Impl_core_ops_drop_Drop_for_drop_Droppable_t.
Section Impl_core_ops_drop_Drop_for_drop_Droppable_t.
  Definition Self : Set := drop.Droppable.t.
  
  (*
      fn drop(&mut self) {
          println!("> Dropping {}", self.name);
      }
  *)
  Parameter drop : (mut_ref Self) -> M unit.
  
  Axiom drop_is_impl : impl Self "drop" = drop.
  
  Global Instance ℐ : core.ops.drop.Drop.Trait Self := {
    core.ops.drop.Drop.drop := drop;
  }.
End Impl_core_ops_drop_Drop_for_drop_Droppable_t.
End Impl_core_ops_drop_Drop_for_drop_Droppable_t.

(*
fn main() {
    let _a = Droppable { name: "a" };

    // block A
    {
        let _b = Droppable { name: "b" };

        // block B
        {
            let _c = Droppable { name: "c" };
            let _d = Droppable { name: "d" };

            println!("Exiting block B");
        }
        println!("Just exited block B");

        println!("Exiting block A");
    }
    println!("Just exited block A");

    // Variable can be manually dropped using the `drop` function
    drop(_a);
    // TODO ^ Try commenting this line

    println!("end of the main function");

    // `_a` *won't* be `drop`ed again here, because it already has been
    // (manually) `drop`ed
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M unit.
