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
Parameter give_adult : (core.option.Option.t (ref str.t)) -> M unit.

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
Parameter drink : (core.option.Option.t (ref str.t)) -> M unit.

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
Parameter main : M unit.
