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
Definition give_adult
    (drink : M.Val (core.option.Option.t (ref str.t)))
    : M (M.Val unit) :=
  M.function_body
    (let* α0 := M.read drink in
    match α0 with
    | core.option.Option.Some _ =>
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "Yuck! Too sugary.
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_const"] α2 in
        std.io.stdio._print α3 in
      M.alloc tt
    | core.option.Option.Some inner =>
      let* inner := M.alloc inner in
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str ""; mk_str "? How nice.
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref (ref str.t)))) := borrow inner in
        let* α4 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α3 in
        let* α5 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α4 ] in
        let* α6 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α5 in
        let* α7 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α7 in
        std.io.stdio._print α8 in
      M.alloc tt
    | core.option.Option.None  =>
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "No drink? Oh well.
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_const"] α2 in
        std.io.stdio._print α3 in
      M.alloc tt
    end).

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
Definition drink
    (drink : M.Val (core.option.Option.t (ref str.t)))
    : M (M.Val unit) :=
  M.function_body
    (let* inside : ltac:(refine (M.Val (ref str.t))) :=
      let* α0 : ltac:(refine (M.Val (ref str.t))) :=
        (core.option.Option.t (ref str.t))::["unwrap"] drink in
      M.copy α0 in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* α0 : ltac:(refine (M.Val (ref (ref str.t)))) := borrow inside in
      let* α1 : ltac:(refine (M.Val (ref (ref str.t)))) :=
        borrow (mk_str "lemonade") in
      let* α2 : ltac:(refine (M.Val bool.t)) :=
        (core.cmp.PartialEq.eq (Self := ref str.t) (Trait := ltac:(refine _)))
          α0
          α1 in
      let* α3 : ltac:(refine (M.Val bool.t)) := use α2 in
      let* α4 := M.read α3 in
      if (α4 : bool) then
        let* _ : ltac:(refine (M.Val unit)) :=
          let* α0 : ltac:(refine (M.Val never.t)) :=
            std.panicking.begin_panic (mk_str "AAAaaaaa!!!!") in
          never_to_any α0 in
        let* α0 : ltac:(refine (M.Val unit)) := M.alloc tt in
        never_to_any α0
      else
        M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "I love "; mk_str "s!!!!!
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref (ref str.t)))) := borrow inside in
        let* α4 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α3 in
        let* α5 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α4 ] in
        let* α6 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α5 in
        let* α7 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α7 in
        std.io.stdio._print α8 in
      M.alloc tt in
    M.alloc tt).

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
Definition main : M (M.Val unit) :=
  M.function_body
    (let* water : ltac:(refine (M.Val (core.option.Option.t (ref str.t)))) :=
      let* α0 := M.read (mk_str "water") in
      M.alloc (core.option.Option.Some α0) in
    let* lemonade : ltac:(refine (M.Val (core.option.Option.t (ref str.t)))) :=
      let* α0 := M.read (mk_str "lemonade") in
      M.alloc (core.option.Option.Some α0) in
    let* void : ltac:(refine (M.Val (core.option.Option.t (ref str.t)))) :=
      M.alloc core.option.Option.None in
    let* _ : ltac:(refine (M.Val unit)) := option_and_unwrap.give_adult water in
    let* _ : ltac:(refine (M.Val unit)) :=
      option_and_unwrap.give_adult lemonade in
    let* _ : ltac:(refine (M.Val unit)) := option_and_unwrap.give_adult void in
    let* coffee : ltac:(refine (M.Val (core.option.Option.t (ref str.t)))) :=
      let* α0 := M.read (mk_str "coffee") in
      M.alloc (core.option.Option.Some α0) in
    let* nothing : ltac:(refine (M.Val (core.option.Option.t (ref str.t)))) :=
      M.alloc core.option.Option.None in
    let* _ : ltac:(refine (M.Val unit)) := option_and_unwrap.drink coffee in
    let* _ : ltac:(refine (M.Val unit)) := option_and_unwrap.drink nothing in
    M.alloc tt).
