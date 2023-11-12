(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module my.
  Module  OpenBox.
  Section OpenBox.
    Context (T : Set).
    
    Record t : Set := {
      contents : T;
    }.
    
    Global Instance Get_contents : Notation.Dot "contents" := {
      Notation.dot x := let* x := M.read x in M.alloc x.(contents) : M _;
    }.
    Global Instance Get_AF_contents : Notation.DoubleColon t "contents" := {
      Notation.double_colon x :=
        let* x := M.read x in M.alloc x.(contents) : M _;
    }.
  End OpenBox.
  End OpenBox.
  
  Module  ClosedBox.
  Section ClosedBox.
    Context (T : Set).
    
    Record t : Set := {
      contents : T;
    }.
    
    Global Instance Get_contents : Notation.Dot "contents" := {
      Notation.dot x := let* x := M.read x in M.alloc x.(contents) : M _;
    }.
    Global Instance Get_AF_contents : Notation.DoubleColon t "contents" := {
      Notation.double_colon x :=
        let* x := M.read x in M.alloc x.(contents) : M _;
    }.
  End ClosedBox.
  End ClosedBox.
  
  Module  Impl_struct_visibility_my_ClosedBox_t_T.
  Section Impl_struct_visibility_my_ClosedBox_t_T.
    Context {T : Set}.
    
    Ltac Self := exact (struct_visibility.my.ClosedBox.t T).
    
    (*
            pub fn new(contents: T) -> ClosedBox<T> {
                ClosedBox { contents: contents }
            }
    *)
    Definition new
        (contents : M.Val T)
        : M (M.Val (struct_visibility.my.ClosedBox.t T)) :=
      M.function_body
        (let* α0 := M.read contents in
        M.alloc {| struct_visibility.my.ClosedBox.contents := α0; |}).
    
    Global Instance AssociatedFunction_new :
      Notation.DoubleColon ltac:(Self) "new" := {
      Notation.double_colon := new;
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
  
  Global Instance Get_contents : Notation.Dot "contents" := {
    Notation.dot x := let* x := M.read x in M.alloc x.(contents) : M _;
  }.
  Global Instance Get_AF_contents : Notation.DoubleColon t "contents" := {
    Notation.double_colon x := let* x := M.read x in M.alloc x.(contents) : M _;
  }.
End OpenBox.
End OpenBox.

Module  ClosedBox.
Section ClosedBox.
  Context (T : Set).
  
  Record t : Set := {
    contents : T;
  }.
  
  Global Instance Get_contents : Notation.Dot "contents" := {
    Notation.dot x := let* x := M.read x in M.alloc x.(contents) : M _;
  }.
  Global Instance Get_AF_contents : Notation.DoubleColon t "contents" := {
    Notation.double_colon x := let* x := M.read x in M.alloc x.(contents) : M _;
  }.
End ClosedBox.
End ClosedBox.

Module  Impl_struct_visibility_my_ClosedBox_t_T_2.
Section Impl_struct_visibility_my_ClosedBox_t_T_2.
  Context {T : Set}.
  
  Ltac Self := exact (struct_visibility.my.ClosedBox.t T).
  
  (*
          pub fn new(contents: T) -> ClosedBox<T> {
              ClosedBox { contents: contents }
          }
  *)
  Definition new
      (contents : M.Val T)
      : M (M.Val (struct_visibility.my.ClosedBox.t T)) :=
    M.function_body
      (let* α0 := M.read contents in
      M.alloc {| struct_visibility.my.ClosedBox.contents := α0; |}).
  
  Global Instance AssociatedFunction_new :
    Notation.DoubleColon ltac:(Self) "new" := {
    Notation.double_colon := new;
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
Definition main : M (M.Val unit) :=
  M.function_body
    (let* open_box :
        ltac:(refine (M.Val (struct_visibility.my.OpenBox.t (ref str)))) :=
      let* α0 := M.read (mk_str "public information") in
      M.alloc {| struct_visibility.my.OpenBox.contents := α0; |} in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
          M.alloc [ mk_str "The open box contains: "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref str))) := open_box.["contents"] in
        let* α4 : ltac:(refine (M.Val (ref (ref str)))) := borrow α3 in
        let* α5 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α4 in
        let* α6 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α5 ] in
        let* α7 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α6 in
        let* α8 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α7 in
        let* α9 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α8 in
        std.io.stdio._print α9 in
      M.alloc tt in
    let* _closed_box :
        ltac:(refine (M.Val (struct_visibility.my.ClosedBox.t (ref str)))) :=
      (struct_visibility.my.ClosedBox.t (ref str))::["new"]
        (mk_str "classified information") in
    M.alloc tt).
