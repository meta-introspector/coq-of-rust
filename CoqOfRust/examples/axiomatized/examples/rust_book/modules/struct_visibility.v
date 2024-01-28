(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module my.
  Module  OpenBox.
  Section OpenBox.
    Context (T : Set).
    
    Record t : Set := {
      contents : T;
    }.
    
    Definition Get_contents :=
      Ref.map
        (fun α => Some α.(contents))
        (fun β α => Some (α <| contents := β |>)).
  End OpenBox.
  End OpenBox.
  
  Module  ClosedBox.
  Section ClosedBox.
    Context (T : Set).
    
    Record t : Set := {
      contents : T;
    }.
    
    Definition Get_contents :=
      Ref.map
        (fun α => Some α.(contents))
        (fun β α => Some (α <| contents := β |>)).
  End ClosedBox.
  End ClosedBox.
  
  Module  Impl_struct_visibility_my_ClosedBox_t_T.
  Section Impl_struct_visibility_my_ClosedBox_t_T.
    Context {T : Set}.
    
    Definition Self : Set := struct_visibility.my.ClosedBox.t T.
    
    (*
            pub fn new(contents: T) -> ClosedBox<T> {
                ClosedBox { contents: contents }
            }
    *)
    Parameter new : T -> M (struct_visibility.my.ClosedBox.t T).
    
    Global Instance AssociatedFunction_new :
      Notations.DoubleColon Self "new" := {
      Notations.double_colon := new;
    }.
  End Impl_struct_visibility_my_ClosedBox_t_T.
  End Impl_struct_visibility_my_ClosedBox_t_T.
End my.

Module  OpenBox.
Section OpenBox.
  Context (T : Set).
  
  Record t : Set := {
    contents : T;
  }.
  
  Definition Get_contents :=
    Ref.map
      (fun α => Some α.(contents))
      (fun β α => Some (α <| contents := β |>)).
End OpenBox.
End OpenBox.

Module  ClosedBox.
Section ClosedBox.
  Context (T : Set).
  
  Record t : Set := {
    contents : T;
  }.
  
  Definition Get_contents :=
    Ref.map
      (fun α => Some α.(contents))
      (fun β α => Some (α <| contents := β |>)).
End ClosedBox.
End ClosedBox.

Module  Impl_struct_visibility_my_ClosedBox_t_T_2.
Section Impl_struct_visibility_my_ClosedBox_t_T_2.
  Context {T : Set}.
  
  Definition Self : Set := struct_visibility.my.ClosedBox.t T.
  
  (*
          pub fn new(contents: T) -> ClosedBox<T> {
              ClosedBox { contents: contents }
          }
  *)
  Parameter new : T -> M (struct_visibility.my.ClosedBox.t T).
  
  Global Instance AssociatedFunction_new : Notations.DoubleColon Self "new" := {
    Notations.double_colon := new;
  }.
End Impl_struct_visibility_my_ClosedBox_t_T_2.
End Impl_struct_visibility_my_ClosedBox_t_T_2.

(*
fn main() {
    // Public structs with public fields can be constructed as usual
    let open_box = my::OpenBox {
        contents: "public information",
    };

    // and their fields can be normally accessed.
    println!("The open box contains: {}", open_box.contents);

    // Public structs with private fields cannot be constructed using field names.
    // Error! `ClosedBox` has private fields
    //let closed_box = my::ClosedBox { contents: "classified information" };
    // TODO ^ Try uncommenting this line

    // However, structs with private fields can be created using
    // public constructors
    let _closed_box = my::ClosedBox::new("classified information");

    // and the private fields of a public struct cannot be accessed.
    // Error! The `contents` field is private
    //println!("The closed box contains: {}", _closed_box.contents);
    // TODO ^ Try uncommenting this line
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M unit.