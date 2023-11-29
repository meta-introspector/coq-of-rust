(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn give_adult(drink: Option<&str>) {
    // Specify a course of action for each case.
    match drink {
        Some("lemonade") => println!("Yuck! Too sugary."),
        Some(inner) => println!("{}? How nice.", inner),
        None => println!("No drink? Oh well."),
    }
}
*)
Definition give_adult (drink : core.option.Option.t (ref str.t)) : M unit :=
  let* drink : M.Val (core.option.Option.t (ref str.t)) := M.alloc drink in
  let* α0 : core.option.Option.t (ref str.t) := M.read drink in
  let* α1 : M.Val unit :=
    match α0 with
    | core.option.Option.Some _ =>
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Yuck! Too sugary.
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_const"] α2 in
        let* α4 : unit := std.io.stdio._print α3 in
        M.alloc α4 in
      M.alloc tt
    | core.option.Option.Some inner =>
      let* inner := M.alloc inner in
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str ""; mk_str "? How nice.
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_display"] (borrow inner) in
        let* α4 : M.Val core.fmt.rt.Argument.t := M.alloc α3 in
        let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
        let* α6 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
          M.alloc (borrow α5) in
        let* α7 : ref (slice core.fmt.rt.Argument.t) :=
          M.read (pointer_coercion "Unsize" α6) in
        let* α8 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α2 α7 in
        let* α9 : unit := std.io.stdio._print α8 in
        M.alloc α9 in
      M.alloc tt
    | core.option.Option.None  =>
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "No drink? Oh well.
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_const"] α2 in
        let* α4 : unit := std.io.stdio._print α3 in
        M.alloc α4 in
      M.alloc tt
    end in
  M.read α1.

(*
fn drink(drink: Option<&str>) {
    // `unwrap` returns a `panic` when it receives a `None`.
    let inside = drink.unwrap();
    if inside == "lemonade" {
        panic!("AAAaaaaa!!!!");
    }

    println!("I love {}s!!!!!", inside);
}
*)
Definition drink (drink : core.option.Option.t (ref str.t)) : M unit :=
  let* drink : M.Val (core.option.Option.t (ref str.t)) := M.alloc drink in
  let* inside : M.Val (ref str.t) :=
    let* α0 : core.option.Option.t (ref str.t) := M.read drink in
    let* α1 : ref str.t := (core.option.Option.t (ref str.t))::["unwrap"] α0 in
    M.alloc α1 in
  let* _ : M.Val unit :=
    let* α0 : bool.t :=
      (core.cmp.PartialEq.eq (Self := ref str.t) (Trait := ltac:(refine _)))
        (borrow inside)
        (borrow (mk_str "lemonade")) in
    if (use α0 : bool) then
      let* _ : M.Val unit :=
        let* α0 : ref str.t := M.read (mk_str "AAAaaaaa!!!!") in
        let* α1 : never.t := std.panicking.begin_panic α0 in
        let* α2 : unit := never_to_any α1 in
        M.alloc α2 in
      let* α0 : M.Val unit := M.alloc tt in
      let* α1 := M.read α0 in
      let* α2 : unit := never_to_any α1 in
      M.alloc α2
    else
      M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "I love "; mk_str "s!!!!!
" ] in
      let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
      let* α2 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α1) in
      let* α3 : core.fmt.rt.Argument.t :=
        core.fmt.rt.Argument.t::["new_display"] (borrow inside) in
      let* α4 : M.Val core.fmt.rt.Argument.t := M.alloc α3 in
      let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
      let* α6 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α5) in
      let* α7 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α6) in
      let* α8 : core.fmt.Arguments.t :=
        core.fmt.Arguments.t::["new_v1"] α2 α7 in
      let* α9 : unit := std.io.stdio._print α8 in
      M.alloc α9 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.

(*
fn main() {
    let water = Some("water");
    let lemonade = Some("lemonade");
    let void = None;

    give_adult(water);
    give_adult(lemonade);
    give_adult(void);

    let coffee = Some("coffee");
    let nothing = None;

    drink(coffee);
    drink(nothing);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* water : M.Val (core.option.Option.t (ref str.t)) :=
    let* α0 : ref str.t := M.read (mk_str "water") in
    M.alloc (core.option.Option.Some α0) in
  let* lemonade : M.Val (core.option.Option.t (ref str.t)) :=
    let* α0 : ref str.t := M.read (mk_str "lemonade") in
    M.alloc (core.option.Option.Some α0) in
  let* void : M.Val (core.option.Option.t (ref str.t)) :=
    M.alloc core.option.Option.None in
  let* _ : M.Val unit :=
    let* α0 : core.option.Option.t (ref str.t) := M.read water in
    let* α1 : unit := option_and_unwrap.give_adult α0 in
    M.alloc α1 in
  let* _ : M.Val unit :=
    let* α0 : core.option.Option.t (ref str.t) := M.read lemonade in
    let* α1 : unit := option_and_unwrap.give_adult α0 in
    M.alloc α1 in
  let* _ : M.Val unit :=
    let* α0 : core.option.Option.t (ref str.t) := M.read void in
    let* α1 : unit := option_and_unwrap.give_adult α0 in
    M.alloc α1 in
  let* coffee : M.Val (core.option.Option.t (ref str.t)) :=
    let* α0 : ref str.t := M.read (mk_str "coffee") in
    M.alloc (core.option.Option.Some α0) in
  let* nothing : M.Val (core.option.Option.t (ref str.t)) :=
    M.alloc core.option.Option.None in
  let* _ : M.Val unit :=
    let* α0 : core.option.Option.t (ref str.t) := M.read coffee in
    let* α1 : unit := option_and_unwrap.drink α0 in
    M.alloc α1 in
  let* _ : M.Val unit :=
    let* α0 : core.option.Option.t (ref str.t) := M.read nothing in
    let* α1 : unit := option_and_unwrap.drink α0 in
    M.alloc α1 in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
