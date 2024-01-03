(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    // (all the type annotations are superfluous)
    // A reference to a string allocated in read only memory
    let pangram: &'static str = "the quick brown fox jumps over the lazy dog";
    println!("Pangram: {}", pangram);

    // Iterate over words in reverse, no new string is allocated
    println!("Words in reverse");
    for word in pangram.split_whitespace().rev() {
        println!("> {}", word);
    }

    // Copy chars into a vector, sort and remove duplicates
    let mut chars: Vec<char> = pangram.chars().collect();
    chars.sort();
    chars.dedup();

    // Create an empty and growable `String`
    let mut string = String::new();
    for c in chars {
        // Insert a char at the end of string
        string.push(c);
        // Insert a string at the end of string
        string.push_str(", ");
    }

    // The trimmed string is a slice to the original string, hence no new
    // allocation is performed
    let chars_to_trim: &[char] = &[' ', ','];
    let trimmed_str: &str = string.trim_matches(chars_to_trim);
    println!("Used characters: {}", trimmed_str);

    // Heap allocate a string
    let alice = String::from("I like dogs");
    // Allocate new memory and store the modified string there
    let bob: String = alice.replace("dog", "cat");

    println!("Alice says: {}", alice);
    println!("Bob says: {}", bob);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* pangram : M.Val (ref str.t) :=
    M.copy (mk_str "the quick brown fox jumps over the lazy dog") in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "Pangram: ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
      let* α4 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α3) in
      let* α5 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow pangram)) in
      let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
      let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α6) in
      let* α8 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α7) in
      let* α9 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α4 α8) in
      let* α10 : unit := M.call (std.io.stdio._print α9) in
      M.alloc α10 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "Words in reverse
") in
      let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
      let* α2 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α1) in
      let* α3 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α2) in
      let* α4 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_const"] α3) in
      let* α5 : unit := M.call (std.io.stdio._print α4) in
      M.alloc α5 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* α0 : ref str.t := M.read pangram in
    let* α1 : core.str.iter.SplitWhitespace.t :=
      M.call (str.t::["split_whitespace"] α0) in
    let* α2 : core.iter.adapters.rev.Rev.t core.str.iter.SplitWhitespace.t :=
      M.call
        ((core.iter.traits.iterator.Iterator.rev
            (Self := core.str.iter.SplitWhitespace.t)
            (Trait := ltac:(refine _)))
          α1) in
    let* α3 : core.iter.adapters.rev.Rev.t core.str.iter.SplitWhitespace.t :=
      M.call
        ((core.iter.traits.collect.IntoIterator.into_iter
            (Self :=
              core.iter.adapters.rev.Rev.t core.str.iter.SplitWhitespace.t)
            (Trait := ltac:(refine _)))
          α2) in
    let* α4 :
        M.Val (core.iter.adapters.rev.Rev.t core.str.iter.SplitWhitespace.t) :=
      M.alloc α3 in
    let* α5 : M.Val unit :=
      match_operator
        α4
        [
          fun γ =>
            (let* iter := M.copy γ in
            M.loop
              (let* _ : M.Val unit :=
                let* α0 : core.option.Option.t (ref str.t) :=
                  M.call
                    ((core.iter.traits.iterator.Iterator.next
                        (Self :=
                          core.iter.adapters.rev.Rev.t
                            core.str.iter.SplitWhitespace.t)
                        (Trait := ltac:(refine _)))
                      (borrow_mut iter)) in
                let* α1 : M.Val (core.option.Option.t (ref str.t)) :=
                  M.alloc α0 in
                match_operator
                  α1
                  [
                    fun γ =>
                      (let* α0 := M.read γ in
                      match α0 with
                      | core.option.Option.None =>
                        let* α0 : M.Val never.t := M.break in
                        let* α1 := M.read α0 in
                        let* α2 : unit := never_to_any α1 in
                        M.alloc α2
                      | _ => M.break_match
                      end) :
                      M (M.Val unit);
                    fun γ =>
                      (let* α0 := M.read γ in
                      match α0 with
                      | core.option.Option.Some _ =>
                        let γ0 := γ.["Some.0"] in
                        let* word := M.copy γ0 in
                        let* _ : M.Val unit :=
                          let* _ : M.Val unit :=
                            let* α0 : ref str.t := M.read (mk_str "> ") in
                            let* α1 : ref str.t := M.read (mk_str "
") in
                            let* α2 : M.Val (array (ref str.t)) :=
                              M.alloc [ α0; α1 ] in
                            let* α3 : M.Val (ref (array (ref str.t))) :=
                              M.alloc (borrow α2) in
                            let* α4 : ref (slice (ref str.t)) :=
                              M.read (pointer_coercion "Unsize" α3) in
                            let* α5 : core.fmt.rt.Argument.t :=
                              M.call
                                (core.fmt.rt.Argument.t::["new_display"]
                                  (borrow word)) in
                            let* α6 : M.Val (array core.fmt.rt.Argument.t) :=
                              M.alloc [ α5 ] in
                            let* α7 :
                                M.Val (ref (array core.fmt.rt.Argument.t)) :=
                              M.alloc (borrow α6) in
                            let* α8 : ref (slice core.fmt.rt.Argument.t) :=
                              M.read (pointer_coercion "Unsize" α7) in
                            let* α9 : core.fmt.Arguments.t :=
                              M.call (core.fmt.Arguments.t::["new_v1"] α4 α8) in
                            let* α10 : unit :=
                              M.call (std.io.stdio._print α9) in
                            M.alloc α10 in
                          M.alloc tt in
                        M.alloc tt
                      | _ => M.break_match
                      end) :
                      M (M.Val unit)
                  ] in
              M.alloc tt)) :
            M (M.Val unit)
        ] in
    M.pure (use α5) in
  let* chars : M.Val (alloc.vec.Vec.t char.t alloc.alloc.Global.t) :=
    let* α0 : ref str.t := M.read pangram in
    let* α1 : core.str.iter.Chars.t := M.call (str.t::["chars"] α0) in
    let* α2 : alloc.vec.Vec.t char.t alloc.alloc.Global.t :=
      M.call
        ((core.iter.traits.iterator.Iterator.collect
            (Self := core.str.iter.Chars.t)
            (Trait := ltac:(refine _)))
          α1) in
    M.alloc α2 in
  let* _ : M.Val unit :=
    let* α0 : mut_ref (slice char.t) :=
      M.call
        ((core.ops.deref.DerefMut.deref_mut
            (Self := alloc.vec.Vec.t char.t alloc.alloc.Global.t)
            (Trait := ltac:(refine _)))
          (borrow_mut chars)) in
    let* α1 : unit := M.call ((slice char.t)::["sort"] α0) in
    M.alloc α1 in
  let* _ : M.Val unit :=
    let* α0 : unit :=
      M.call
        ((alloc.vec.Vec.t char.t alloc.alloc.Global.t)::["dedup"]
          (borrow_mut chars)) in
    M.alloc α0 in
  let* string : M.Val alloc.string.String.t :=
    let* α0 : alloc.string.String.t := M.call alloc.string.String.t::["new"] in
    M.alloc α0 in
  let* _ : M.Val unit :=
    let* α0 : alloc.vec.Vec.t char.t alloc.alloc.Global.t := M.read chars in
    let* α1 : alloc.vec.into_iter.IntoIter.t char.t alloc.alloc.Global.t :=
      M.call
        ((core.iter.traits.collect.IntoIterator.into_iter
            (Self := alloc.vec.Vec.t char.t alloc.alloc.Global.t)
            (Trait := ltac:(refine _)))
          α0) in
    let* α2 :
        M.Val (alloc.vec.into_iter.IntoIter.t char.t alloc.alloc.Global.t) :=
      M.alloc α1 in
    let* α3 : M.Val unit :=
      match_operator
        α2
        [
          fun γ =>
            (let* iter := M.copy γ in
            M.loop
              (let* _ : M.Val unit :=
                let* α0 : core.option.Option.t char.t :=
                  M.call
                    ((core.iter.traits.iterator.Iterator.next
                        (Self :=
                          alloc.vec.into_iter.IntoIter.t
                            char.t
                            alloc.alloc.Global.t)
                        (Trait := ltac:(refine _)))
                      (borrow_mut iter)) in
                let* α1 : M.Val (core.option.Option.t char.t) := M.alloc α0 in
                match_operator
                  α1
                  [
                    fun γ =>
                      (let* α0 := M.read γ in
                      match α0 with
                      | core.option.Option.None =>
                        let* α0 : M.Val never.t := M.break in
                        let* α1 := M.read α0 in
                        let* α2 : unit := never_to_any α1 in
                        M.alloc α2
                      | _ => M.break_match
                      end) :
                      M (M.Val unit);
                    fun γ =>
                      (let* α0 := M.read γ in
                      match α0 with
                      | core.option.Option.Some _ =>
                        let γ0 := γ.["Some.0"] in
                        let* c := M.copy γ0 in
                        let* _ : M.Val unit :=
                          let* α0 : char.t := M.read c in
                          let* α1 : unit :=
                            M.call
                              (alloc.string.String.t::["push"]
                                (borrow_mut string)
                                α0) in
                          M.alloc α1 in
                        let* _ : M.Val unit :=
                          let* α0 : ref str.t := M.read (mk_str ", ") in
                          let* α1 : unit :=
                            M.call
                              (alloc.string.String.t::["push_str"]
                                (borrow_mut string)
                                α0) in
                          M.alloc α1 in
                        M.alloc tt
                      | _ => M.break_match
                      end) :
                      M (M.Val unit)
                  ] in
              M.alloc tt)) :
            M (M.Val unit)
        ] in
    M.pure (use α3) in
  let* chars_to_trim : M.Val (ref (slice char.t)) :=
    let* α0 : M.Val (array char.t) := M.alloc [ " "%char; ","%char ] in
    let* α1 : M.Val (ref (array char.t)) := M.alloc (borrow α0) in
    M.copy (pointer_coercion "Unsize" α1) in
  let* trimmed_str : M.Val (ref str.t) :=
    let* α0 : ref str.t :=
      M.call
        ((core.ops.deref.Deref.deref
            (Self := alloc.string.String.t)
            (Trait := ltac:(refine _)))
          (borrow string)) in
    let* α1 : ref (slice char.t) := M.read chars_to_trim in
    let* α2 : ref str.t := M.call (str.t::["trim_matches"] α0 α1) in
    M.alloc α2 in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "Used characters: ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
      let* α4 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α3) in
      let* α5 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow trimmed_str)) in
      let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
      let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α6) in
      let* α8 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α7) in
      let* α9 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α4 α8) in
      let* α10 : unit := M.call (std.io.stdio._print α9) in
      M.alloc α10 in
    M.alloc tt in
  let* alice : M.Val alloc.string.String.t :=
    let* α0 : ref str.t := M.read (mk_str "I like dogs") in
    let* α1 : alloc.string.String.t :=
      M.call
        ((core.convert.From.from
            (Self := alloc.string.String.t)
            (Trait := ltac:(refine _)))
          α0) in
    M.alloc α1 in
  let* bob : M.Val alloc.string.String.t :=
    let* α0 : ref str.t :=
      M.call
        ((core.ops.deref.Deref.deref
            (Self := alloc.string.String.t)
            (Trait := ltac:(refine _)))
          (borrow alice)) in
    let* α1 : ref str.t := M.read (mk_str "dog") in
    let* α2 : ref str.t := M.read (mk_str "cat") in
    let* α3 : alloc.string.String.t := M.call (str.t::["replace"] α0 α1 α2) in
    M.alloc α3 in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "Alice says: ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
      let* α4 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α3) in
      let* α5 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow alice)) in
      let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
      let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α6) in
      let* α8 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α7) in
      let* α9 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α4 α8) in
      let* α10 : unit := M.call (std.io.stdio._print α9) in
      M.alloc α10 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "Bob says: ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
      let* α4 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α3) in
      let* α5 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow bob)) in
      let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
      let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α6) in
      let* α8 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α7) in
      let* α9 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α4 α8) in
      let* α10 : unit := M.call (std.io.stdio._print α9) in
      M.alloc α10 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
