(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition create_box (_ : unit) : M unit :=
  let* _box1 := alloc.boxed.Box::["new"] 3 in
  Pure tt.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let* _box2 := alloc.boxed.Box::["new"] 5 in
  let* _ :=
    let* _box3 := alloc.boxed.Box::["new"] 4 in
    Pure tt in
  let* α0 := LangItem Range {| Range.start := 0; Range.end := 1000; |} in
  match α0 with
  | iter =>
    loop
      let* _ :=
        let* α0 := LangItem (addr_of iter) in
        match α0 with
        | None => Pure Break
        | Some {| Some.0 := _; |} =>
          let* _ := scoping_rules_raii.create_box tt in
          Pure tt
        end in
      Pure tt
      from
      for
  end.
