(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Fibonacci.
  Unset Primitive Projections.
  Record t : Set := {
    curr : u32;
    next : u32;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_curr : Notation.Dot "curr" := {
    Notation.dot '(Build_t x0 _) := x0;
  }.
  Global Instance Get_next : Notation.Dot "next" := {
    Notation.dot '(Build_t _ x1) := x1;
  }.
End Fibonacci.
Definition Fibonacci : Set := Fibonacci.t.

Module Impl_core_iter_traits_iterator_Iterator_for_iterators_Fibonacci.
  Definition Self := iterators.Fibonacci.
  
  Definition Item : Set := u32.
  
  Definition next
      `{H' : State.Trait}
      (self : mut_ref Self)
      : M (H := H') (core.option.Option Item) :=
    let current := self.["curr"] in
    let* _ := assign self.["curr"] self.["next"] in
    let* _ :=
      let* α0 := current.["add"] self.["next"] in
      assign self.["next"] α0 in
    Pure (core.option.Option.Some current).
  
  Global Instance Method_next `{H' : State.Trait} : Notation.Dot "next" := {
    Notation.dot := next;
  }.
  
  Global Instance I : core.iter.traits.iterator.Iterator.Trait Self := {
    core.iter.traits.iterator.Iterator.Item := Item;
    core.iter.traits.iterator.Iterator.next `{H' : State.Trait} := next;
  }.
  Global Hint Resolve I : core.
End Impl_core_iter_traits_iterator_Iterator_for_iterators_Fibonacci.

Definition fibonacci `{H' : State.Trait} : M (H := H') iterators.Fibonacci :=
  Pure {| iterators.Fibonacci.curr := 0; iterators.Fibonacci.next := 1; |}.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H' : State.Trait} : M (H := H') unit :=
  let sequence := {| std.ops.Range.start := 0; std.ops.Range._end := 3; |} in
  let* _ :=
    let* _ :=
      let* α0 :=
        format_arguments::["new_const"]
          (addr_of [ "Four consecutive `next` calls on 0..3
" ]) in
      std.io.stdio._print α0 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := sequence.["next"] in
      let* α1 := format_argument::["new_debug"] (addr_of α0) in
      let* α2 :=
        format_arguments::["new_v1"] (addr_of [ "> "; "
" ]) (addr_of [ α1 ]) in
      std.io.stdio._print α2 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := sequence.["next"] in
      let* α1 := format_argument::["new_debug"] (addr_of α0) in
      let* α2 :=
        format_arguments::["new_v1"] (addr_of [ "> "; "
" ]) (addr_of [ α1 ]) in
      std.io.stdio._print α2 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := sequence.["next"] in
      let* α1 := format_argument::["new_debug"] (addr_of α0) in
      let* α2 :=
        format_arguments::["new_v1"] (addr_of [ "> "; "
" ]) (addr_of [ α1 ]) in
      std.io.stdio._print α2 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := sequence.["next"] in
      let* α1 := format_argument::["new_debug"] (addr_of α0) in
      let* α2 :=
        format_arguments::["new_v1"] (addr_of [ "> "; "
" ]) (addr_of [ α1 ]) in
      std.io.stdio._print α2 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 :=
        format_arguments::["new_const"]
          (addr_of [ "Iterate through 0..3 using `for`
" ]) in
      std.io.stdio._print α0 in
    Pure tt in
  let* _ :=
    let* α0 :=
      {| std.ops.Range.start := 0; std.ops.Range._end := 3; |}.["into_iter"] in
    match α0 with
    | iter =>
      loop
        (let* _ :=
          let* α0 := (addr_of iter).["next"] in
          match α0 with
          | core.option.Option.None  => Break
          | core.option.Option.Some i =>
            let* _ :=
              let* _ :=
                let* α0 := format_argument::["new_display"] (addr_of i) in
                let* α1 :=
                  format_arguments::["new_v1"]
                    (addr_of [ "> "; "
" ])
                    (addr_of [ α0 ]) in
                std.io.stdio._print α1 in
              Pure tt in
            Pure tt
          end in
        Pure tt)
    end in
  let* _ :=
    let* _ :=
      let* α0 :=
        format_arguments::["new_const"]
          (addr_of
            [ "The first four terms of the Fibonacci sequence are: 
" ]) in
      std.io.stdio._print α0 in
    Pure tt in
  let* _ :=
    let* α0 := iterators.fibonacci in
    let* α1 := α0.["take"] 4 in
    let* α2 := α1.["into_iter"] in
    match α2 with
    | iter =>
      loop
        (let* _ :=
          let* α0 := (addr_of iter).["next"] in
          match α0 with
          | core.option.Option.None  => Break
          | core.option.Option.Some i =>
            let* _ :=
              let* _ :=
                let* α0 := format_argument::["new_display"] (addr_of i) in
                let* α1 :=
                  format_arguments::["new_v1"]
                    (addr_of [ "> "; "
" ])
                    (addr_of [ α0 ]) in
                std.io.stdio._print α1 in
              Pure tt in
            Pure tt
          end in
        Pure tt)
    end in
  let* _ :=
    let* _ :=
      let* α0 :=
        format_arguments::["new_const"]
          (addr_of
            [ "The next four terms of the Fibonacci sequence are: 
" ]) in
      std.io.stdio._print α0 in
    Pure tt in
  let* _ :=
    let* α0 := iterators.fibonacci in
    let* α1 := α0.["skip"] 4 in
    let* α2 := α1.["take"] 4 in
    let* α3 := α2.["into_iter"] in
    match α3 with
    | iter =>
      loop
        (let* _ :=
          let* α0 := (addr_of iter).["next"] in
          match α0 with
          | core.option.Option.None  => Break
          | core.option.Option.Some i =>
            let* _ :=
              let* _ :=
                let* α0 := format_argument::["new_display"] (addr_of i) in
                let* α1 :=
                  format_arguments::["new_v1"]
                    (addr_of [ "> "; "
" ])
                    (addr_of [ α0 ]) in
                std.io.stdio._print α1 in
              Pure tt in
            Pure tt
          end in
        Pure tt)
    end in
  let array := [ 1; 3; 3; 7 ] in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_debug"] (addr_of (addr_of array)) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "Iterate the following array "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  let* α0 := array.["iter"] in
  let* α1 := α0.["into_iter"] in
  match α1 with
  | iter =>
    loop
      (let* _ :=
        let* α0 := (addr_of iter).["next"] in
        match α0 with
        | core.option.Option.None  => Break
        | core.option.Option.Some i =>
          let* _ :=
            let* _ :=
              let* α0 := format_argument::["new_display"] (addr_of i) in
              let* α1 :=
                format_arguments::["new_v1"]
                  (addr_of [ "> "; "
" ])
                  (addr_of [ α0 ]) in
              std.io.stdio._print α1 in
            Pure tt in
          Pure tt
        end in
      Pure tt)
  end.
