(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition call `{H : State.Trait} (number : ref str) : M (H := H) (ref str) :=
  match number with
  | "798-1364" =>
    Pure
      "We're sorry, the call cannot be completed as dialed. 
            Please hang up and try again."
  | "645-7689" =>
    Pure
      "Hello, this is Mr. Awesome's Pizza. My name is Fred.
            What can I get for you today?"
  | _ => Pure "Hi! Who is this again?"
  end.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H : State.Trait} : M (H := H) unit :=
  let* contacts := std.collections.hash.map.HashMap::["new"] in
  let* _ := contacts.["insert"] "Daniel" "798-1364" in
  let* _ := contacts.["insert"] "Ashley" "645-7689" in
  let* _ := contacts.["insert"] "Katie" "435-8291" in
  let* _ := contacts.["insert"] "Robert" "956-1745" in
  let* _ :=
    let* α0 := contacts.["get"] (addr_of "Daniel") in
    match α0 with
    | core.option.Option.Some number =>
      let* _ :=
        let* α0 := hash_map.call number in
        let* α1 := format_argument::["new_display"] (addr_of α0) in
        let* α2 :=
          format_arguments::["new_v1"]
            (addr_of [ "Calling Daniel: "; "
" ])
            (addr_of [ α1 ]) in
        std.io.stdio._print α2 in
      Pure tt
    | _ =>
      let* _ :=
        let* α0 :=
          format_arguments::["new_const"]
            (addr_of [ "Don't have Daniel's number.
" ]) in
        std.io.stdio._print α0 in
      Pure tt
    end in
  let* _ := contacts.["insert"] "Daniel" "164-6743" in
  let* _ :=
    let* α0 := contacts.["get"] (addr_of "Ashley") in
    match α0 with
    | core.option.Option.Some number =>
      let* _ :=
        let* α0 := hash_map.call number in
        let* α1 := format_argument::["new_display"] (addr_of α0) in
        let* α2 :=
          format_arguments::["new_v1"]
            (addr_of [ "Calling Ashley: "; "
" ])
            (addr_of [ α1 ]) in
        std.io.stdio._print α2 in
      Pure tt
    | _ =>
      let* _ :=
        let* α0 :=
          format_arguments::["new_const"]
            (addr_of [ "Don't have Ashley's number.
" ]) in
        std.io.stdio._print α0 in
      Pure tt
    end in
  let* _ := contacts.["remove"] (addr_of "Ashley") in
  let* α0 := contacts.["iter"] in
  let* α1 := α0.["into_iter"] in
  match α1 with
  | iter =>
    loop
      (let* _ :=
        let* α0 := (addr_of iter).["next"] in
        match α0 with
        | core.option.Option.None  => Break
        | core.option.Option.Some (contact, number) =>
          let* _ :=
            let* _ :=
              let* α0 := format_argument::["new_display"] (addr_of contact) in
              let* α1 := hash_map.call number in
              let* α2 := format_argument::["new_display"] (addr_of α1) in
              let* α3 :=
                format_arguments::["new_v1"]
                  (addr_of [ "Calling "; ": "; "
" ])
                  (addr_of [ α0; α2 ]) in
              std.io.stdio._print α3 in
            Pure tt in
          Pure tt
        end in
      Pure tt)
  end.
