(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Fibonacci.
Section Fibonacci.
  Record t : Set := {
    curr : u32.t;
    next : u32.t;
  }.
  
  Global Instance Get_curr : Notations.Dot "curr" := {
    Notations.dot := Ref.map (fun x => x.(curr)) (fun v x => x <| curr := v |>);
  }.
  Global Instance Get_AF_curr : Notations.DoubleColon t "curr" := {
    Notations.double_colon (x : M.Val t) := x.["curr"];
  }.
  Global Instance Get_next : Notations.Dot "next" := {
    Notations.dot := Ref.map (fun x => x.(next)) (fun v x => x <| next := v |>);
  }.
  Global Instance Get_AF_next : Notations.DoubleColon t "next" := {
    Notations.double_colon (x : M.Val t) := x.["next"];
  }.
End Fibonacci.
End Fibonacci.

Module  Impl_core_iter_traits_iterator_Iterator_for_iterators_Fibonacci_t.
Section Impl_core_iter_traits_iterator_Iterator_for_iterators_Fibonacci_t.
  Ltac Self := exact iterators.Fibonacci.t.
  
  (*
      type Item = u32;
  *)
  Definition Item : Set := u32.t.
  
  (*
      fn next(&mut self) -> Option<Self::Item> {
          let current = self.curr;
  
          self.curr = self.next;
          self.next = current + self.next;
  
          // Since there's no endpoint to a Fibonacci sequence, the `Iterator`
          // will never return `None`, and `Some` is always returned.
          Some(current)
      }
  *)
  Definition next
      (self : M.Val (mut_ref ltac:(Self)))
      : M (core.option.Option.t Item.t) :=
    M.function_body
      (let* current : ltac:(refine (M.Val u32.t)) :=
        let* α0 : ltac:(refine (M.Val iterators.Fibonacci.t)) := deref self in
        M.copy α0.["curr"] in
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val iterators.Fibonacci.t)) := deref self in
        let* α1 : ltac:(refine (M.Val iterators.Fibonacci.t)) := deref self in
        assign α0.["curr"] α1.["next"] in
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val iterators.Fibonacci.t)) := deref self in
        let* α1 : ltac:(refine (M.Val iterators.Fibonacci.t)) := deref self in
        let* α2 : ltac:(refine (M.Val u32.t)) :=
          BinOp.add current α1.["next"] in
        assign α0.["next"] α2 in
      let* α0 := M.read current in
      M.alloc (core.option.Option.Some α0)).
  
  Global Instance AssociatedFunction_next :
    Notations.DoubleColon ltac:(Self) "next" := {
    Notations.double_colon := next;
  }.
  
  Global Instance ℐ :
    core.iter.traits.iterator.Iterator.Required.Trait ltac:(Self) := {
    core.iter.traits.iterator.Iterator.Item := Item;
    core.iter.traits.iterator.Iterator.next := next;
    core.iter.traits.iterator.Iterator.next_chunk := Datatypes.None;
    core.iter.traits.iterator.Iterator.size_hint := Datatypes.None;
    core.iter.traits.iterator.Iterator.count := Datatypes.None;
    core.iter.traits.iterator.Iterator.last := Datatypes.None;
    core.iter.traits.iterator.Iterator.advance_by := Datatypes.None;
    core.iter.traits.iterator.Iterator.nth := Datatypes.None;
    core.iter.traits.iterator.Iterator.step_by := Datatypes.None;
    core.iter.traits.iterator.Iterator.chain := Datatypes.None;
    core.iter.traits.iterator.Iterator.zip := Datatypes.None;
    core.iter.traits.iterator.Iterator.intersperse := Datatypes.None;
    core.iter.traits.iterator.Iterator.intersperse_with := Datatypes.None;
    core.iter.traits.iterator.Iterator.map := Datatypes.None;
    core.iter.traits.iterator.Iterator.for_each := Datatypes.None;
    core.iter.traits.iterator.Iterator.filter := Datatypes.None;
    core.iter.traits.iterator.Iterator.filter_map := Datatypes.None;
    core.iter.traits.iterator.Iterator.enumerate := Datatypes.None;
    core.iter.traits.iterator.Iterator.peekable := Datatypes.None;
    core.iter.traits.iterator.Iterator.skip_while := Datatypes.None;
    core.iter.traits.iterator.Iterator.take_while := Datatypes.None;
    core.iter.traits.iterator.Iterator.map_while := Datatypes.None;
    core.iter.traits.iterator.Iterator.skip := Datatypes.None;
    core.iter.traits.iterator.Iterator.take := Datatypes.None;
    core.iter.traits.iterator.Iterator.scan := Datatypes.None;
    core.iter.traits.iterator.Iterator.flat_map := Datatypes.None;
    core.iter.traits.iterator.Iterator.flatten := Datatypes.None;
    core.iter.traits.iterator.Iterator.fuse := Datatypes.None;
    core.iter.traits.iterator.Iterator.inspect := Datatypes.None;
    core.iter.traits.iterator.Iterator.by_ref := Datatypes.None;
    core.iter.traits.iterator.Iterator.collect := Datatypes.None;
    core.iter.traits.iterator.Iterator.try_collect := Datatypes.None;
    core.iter.traits.iterator.Iterator.collect_into := Datatypes.None;
    core.iter.traits.iterator.Iterator.partition := Datatypes.None;
    core.iter.traits.iterator.Iterator.partition_in_place := Datatypes.None;
    core.iter.traits.iterator.Iterator.is_partitioned := Datatypes.None;
    core.iter.traits.iterator.Iterator.try_fold := Datatypes.None;
    core.iter.traits.iterator.Iterator.try_for_each := Datatypes.None;
    core.iter.traits.iterator.Iterator.fold := Datatypes.None;
    core.iter.traits.iterator.Iterator.reduce := Datatypes.None;
    core.iter.traits.iterator.Iterator.try_reduce := Datatypes.None;
    core.iter.traits.iterator.Iterator.all := Datatypes.None;
    core.iter.traits.iterator.Iterator.any := Datatypes.None;
    core.iter.traits.iterator.Iterator.find := Datatypes.None;
    core.iter.traits.iterator.Iterator.find_map := Datatypes.None;
    core.iter.traits.iterator.Iterator.try_find := Datatypes.None;
    core.iter.traits.iterator.Iterator.position := Datatypes.None;
    core.iter.traits.iterator.Iterator.rposition := Datatypes.None;
    core.iter.traits.iterator.Iterator.max := Datatypes.None;
    core.iter.traits.iterator.Iterator.min := Datatypes.None;
    core.iter.traits.iterator.Iterator.max_by_key := Datatypes.None;
    core.iter.traits.iterator.Iterator.max_by := Datatypes.None;
    core.iter.traits.iterator.Iterator.min_by_key := Datatypes.None;
    core.iter.traits.iterator.Iterator.min_by := Datatypes.None;
    core.iter.traits.iterator.Iterator.rev := Datatypes.None;
    core.iter.traits.iterator.Iterator.unzip := Datatypes.None;
    core.iter.traits.iterator.Iterator.copied := Datatypes.None;
    core.iter.traits.iterator.Iterator.cloned := Datatypes.None;
    core.iter.traits.iterator.Iterator.cycle := Datatypes.None;
    core.iter.traits.iterator.Iterator.array_chunks := Datatypes.None;
    core.iter.traits.iterator.Iterator.sum := Datatypes.None;
    core.iter.traits.iterator.Iterator.product := Datatypes.None;
    core.iter.traits.iterator.Iterator.cmp := Datatypes.None;
    core.iter.traits.iterator.Iterator.cmp_by := Datatypes.None;
    core.iter.traits.iterator.Iterator.partial_cmp := Datatypes.None;
    core.iter.traits.iterator.Iterator.partial_cmp_by := Datatypes.None;
    core.iter.traits.iterator.Iterator.eq := Datatypes.None;
    core.iter.traits.iterator.Iterator.eq_by := Datatypes.None;
    core.iter.traits.iterator.Iterator.ne := Datatypes.None;
    core.iter.traits.iterator.Iterator.lt := Datatypes.None;
    core.iter.traits.iterator.Iterator.le := Datatypes.None;
    core.iter.traits.iterator.Iterator.gt := Datatypes.None;
    core.iter.traits.iterator.Iterator.ge := Datatypes.None;
    core.iter.traits.iterator.Iterator.is_sorted := Datatypes.None;
    core.iter.traits.iterator.Iterator.is_sorted_by := Datatypes.None;
    core.iter.traits.iterator.Iterator.is_sorted_by_key := Datatypes.None;
    core.iter.traits.iterator.Iterator.__iterator_get_unchecked :=
      Datatypes.None;
  }.
End Impl_core_iter_traits_iterator_Iterator_for_iterators_Fibonacci_t.
End Impl_core_iter_traits_iterator_Iterator_for_iterators_Fibonacci_t.

(*
fn fibonacci() -> Fibonacci {
    Fibonacci { curr: 0, next: 1 }
}
*)
Definition fibonacci : M iterators.Fibonacci.t :=
  M.function_body
    (let* α0 : ltac:(refine (M.Val u32.t)) := M.alloc 0 in
    let* α1 := M.read α0 in
    let* α2 : ltac:(refine (M.Val u32.t)) := M.alloc 1 in
    let* α3 := M.read α2 in
    M.alloc
      {| iterators.Fibonacci.curr := α1; iterators.Fibonacci.next := α3; |}).

(*
fn main() {
    // `0..3` is an `Iterator` that generates: 0, 1, and 2.
    let mut sequence = 0..3;

    println!("Four consecutive `next` calls on 0..3");
    println!("> {:?}", sequence.next());
    println!("> {:?}", sequence.next());
    println!("> {:?}", sequence.next());
    println!("> {:?}", sequence.next());

    // `for` works through an `Iterator` until it returns `None`.
    // Each `Some` value is unwrapped and bound to a variable (here, `i`).
    println!("Iterate through 0..3 using `for`");
    for i in 0..3 {
        println!("> {}", i);
    }

    // The `take(n)` method reduces an `Iterator` to its first `n` terms.
    println!("The first four terms of the Fibonacci sequence are: ");
    for i in fibonacci().take(4) {
        println!("> {}", i);
    }

    // The `skip(n)` method shortens an `Iterator` by dropping its first `n` terms.
    println!("The next four terms of the Fibonacci sequence are: ");
    for i in fibonacci().skip(4).take(4) {
        println!("> {}", i);
    }

    let array = [1u32, 3, 3, 7];

    // The `iter` method produces an `Iterator` over an array/slice.
    println!("Iterate the following array {:?}", &array);
    for i in array.iter() {
        println!("> {}", i);
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* sequence : ltac:(refine (M.Val (core.ops.range.Range.t i32.t))) :=
      let* α0 : ltac:(refine (M.Val i32.t)) := M.alloc 0 in
      let* α1 := M.read α0 in
      let* α2 : ltac:(refine (M.Val i32.t)) := M.alloc 3 in
      let* α3 := M.read α2 in
      M.alloc
        {| core.ops.range.Range.start := α1; core.ops.range.Range.end := α3;
        |} in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "Four consecutive `next` calls on 0..3
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := core.fmt.Arguments.t::["new_const"] α2 in
        let* α4 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α3 in
        let* α5 := std.io.stdio._print α4 in
        M.alloc α5 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "> "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 :
            ltac:(refine (M.Val (mut_ref (core.ops.range.Range.t i32.t)))) :=
          borrow_mut sequence in
        let* α4 :=
          (core.iter.traits.iterator.Iterator.next
              (Self := core.ops.range.Range.t i32.t)
              (Trait := ltac:(refine _)))
            α3 in
        let* α5 : ltac:(refine (M.Val (core.option.Option.t i32.t))) :=
          M.alloc α4 in
        let* α6 : ltac:(refine (M.Val (ref (core.option.Option.t i32.t)))) :=
          borrow α5 in
        let* α7 := core.fmt.rt.Argument.t::["new_debug"] α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α7 in
        let* α9 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α8 ] in
        let* α10 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α9 in
        let* α11 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments.t::["new_v1"] α2 α11 in
        let* α13 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α12 in
        let* α14 := std.io.stdio._print α13 in
        M.alloc α14 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "> "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 :
            ltac:(refine (M.Val (mut_ref (core.ops.range.Range.t i32.t)))) :=
          borrow_mut sequence in
        let* α4 :=
          (core.iter.traits.iterator.Iterator.next
              (Self := core.ops.range.Range.t i32.t)
              (Trait := ltac:(refine _)))
            α3 in
        let* α5 : ltac:(refine (M.Val (core.option.Option.t i32.t))) :=
          M.alloc α4 in
        let* α6 : ltac:(refine (M.Val (ref (core.option.Option.t i32.t)))) :=
          borrow α5 in
        let* α7 := core.fmt.rt.Argument.t::["new_debug"] α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α7 in
        let* α9 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α8 ] in
        let* α10 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α9 in
        let* α11 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments.t::["new_v1"] α2 α11 in
        let* α13 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α12 in
        let* α14 := std.io.stdio._print α13 in
        M.alloc α14 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "> "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 :
            ltac:(refine (M.Val (mut_ref (core.ops.range.Range.t i32.t)))) :=
          borrow_mut sequence in
        let* α4 :=
          (core.iter.traits.iterator.Iterator.next
              (Self := core.ops.range.Range.t i32.t)
              (Trait := ltac:(refine _)))
            α3 in
        let* α5 : ltac:(refine (M.Val (core.option.Option.t i32.t))) :=
          M.alloc α4 in
        let* α6 : ltac:(refine (M.Val (ref (core.option.Option.t i32.t)))) :=
          borrow α5 in
        let* α7 := core.fmt.rt.Argument.t::["new_debug"] α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α7 in
        let* α9 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α8 ] in
        let* α10 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α9 in
        let* α11 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments.t::["new_v1"] α2 α11 in
        let* α13 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α12 in
        let* α14 := std.io.stdio._print α13 in
        M.alloc α14 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "> "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 :
            ltac:(refine (M.Val (mut_ref (core.ops.range.Range.t i32.t)))) :=
          borrow_mut sequence in
        let* α4 :=
          (core.iter.traits.iterator.Iterator.next
              (Self := core.ops.range.Range.t i32.t)
              (Trait := ltac:(refine _)))
            α3 in
        let* α5 : ltac:(refine (M.Val (core.option.Option.t i32.t))) :=
          M.alloc α4 in
        let* α6 : ltac:(refine (M.Val (ref (core.option.Option.t i32.t)))) :=
          borrow α5 in
        let* α7 := core.fmt.rt.Argument.t::["new_debug"] α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α7 in
        let* α9 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α8 ] in
        let* α10 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α9 in
        let* α11 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments.t::["new_v1"] α2 α11 in
        let* α13 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α12 in
        let* α14 := std.io.stdio._print α13 in
        M.alloc α14 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "Iterate through 0..3 using `for`
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := core.fmt.Arguments.t::["new_const"] α2 in
        let* α4 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α3 in
        let* α5 := std.io.stdio._print α4 in
        M.alloc α5 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* α0 : ltac:(refine (M.Val i32.t)) := M.alloc 0 in
      let* α1 := M.read α0 in
      let* α2 : ltac:(refine (M.Val i32.t)) := M.alloc 3 in
      let* α3 := M.read α2 in
      let* α4 : ltac:(refine (M.Val (core.ops.range.Range.t i32.t))) :=
        M.alloc
          {| core.ops.range.Range.start := α1; core.ops.range.Range.end := α3;
          |} in
      let* α5 :=
        (core.iter.traits.collect.IntoIterator.into_iter
            (Self := core.ops.range.Range.t i32.t)
            (Trait := ltac:(refine _)))
          α4 in
      let* α6 : ltac:(refine (M.Val (core.ops.range.Range.t i32.t))) :=
        M.alloc α5 in
      let* α7 := M.read α6 in
      let* α8 : ltac:(refine (M.Val unit)) :=
        match α7 with
        | iter =>
          let* iter := M.alloc iter in
          loop
            (let* _ : ltac:(refine (M.Val unit)) :=
              let* α0 :
                  ltac:(refine
                    (M.Val (mut_ref (core.ops.range.Range.t i32.t)))) :=
                borrow_mut iter in
              let* α1 :=
                (core.iter.traits.iterator.Iterator.next
                    (Self := core.ops.range.Range.t i32.t)
                    (Trait := ltac:(refine _)))
                  α0 in
              let* α2 : ltac:(refine (M.Val (core.option.Option.t i32.t))) :=
                M.alloc α1 in
              let* α3 := M.read α2 in
              match α3 with
              | core.option.Option.None  =>
                let* α0 : ltac:(refine (M.Val never.t)) := Break in
                never_to_any α0
              | core.option.Option.Some i =>
                let* i := M.alloc i in
                let* _ : ltac:(refine (M.Val unit)) :=
                  let* _ : ltac:(refine (M.Val unit)) :=
                    let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
                      M.alloc [ mk_str "> "; mk_str "
" ] in
                    let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
                      borrow α0 in
                    let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
                      pointer_coercion "Unsize" α1 in
                    let* α3 : ltac:(refine (M.Val (ref i32.t))) := borrow i in
                    let* α4 := core.fmt.rt.Argument.t::["new_display"] α3 in
                    let* α5 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
                      M.alloc α4 in
                    let* α6 :
                        ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
                      M.alloc [ α5 ] in
                    let* α7 :
                        ltac:(refine
                          (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
                      borrow α6 in
                    let* α8 :
                        ltac:(refine
                          (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
                      pointer_coercion "Unsize" α7 in
                    let* α9 := core.fmt.Arguments.t::["new_v1"] α2 α8 in
                    let* α10 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
                      M.alloc α9 in
                    let* α11 := std.io.stdio._print α10 in
                    M.alloc α11 in
                  M.alloc tt in
                M.alloc tt
              end in
            M.alloc tt)
        end in
      use α8 in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc
            [ mk_str "The first four terms of the Fibonacci sequence are: 
"
            ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := core.fmt.Arguments.t::["new_const"] α2 in
        let* α4 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α3 in
        let* α5 := std.io.stdio._print α4 in
        M.alloc α5 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* α0 := iterators.fibonacci in
      let* α1 : ltac:(refine (M.Val iterators.Fibonacci.t)) := M.alloc α0 in
      let* α2 : ltac:(refine (M.Val usize.t)) := M.alloc 4 in
      let* α3 :=
        (core.iter.traits.iterator.Iterator.take
            (Self := iterators.Fibonacci.t)
            (Trait := ltac:(refine _)))
          α1
          α2 in
      let* α4 :
          ltac:(refine
            (M.Val (core.iter.adapters.take.Take.t iterators.Fibonacci.t))) :=
        M.alloc α3 in
      let* α5 :=
        (core.iter.traits.collect.IntoIterator.into_iter
            (Self := core.iter.adapters.take.Take.t iterators.Fibonacci.t)
            (Trait := ltac:(refine _)))
          α4 in
      let* α6 :
          ltac:(refine
            (M.Val (core.iter.adapters.take.Take.t iterators.Fibonacci.t))) :=
        M.alloc α5 in
      let* α7 := M.read α6 in
      let* α8 : ltac:(refine (M.Val unit)) :=
        match α7 with
        | iter =>
          let* iter := M.alloc iter in
          loop
            (let* _ : ltac:(refine (M.Val unit)) :=
              let* α0 :
                  ltac:(refine
                    (M.Val
                      (mut_ref
                        (core.iter.adapters.take.Take.t
                          iterators.Fibonacci.t)))) :=
                borrow_mut iter in
              let* α1 :=
                (core.iter.traits.iterator.Iterator.next
                    (Self :=
                      core.iter.adapters.take.Take.t iterators.Fibonacci.t)
                    (Trait := ltac:(refine _)))
                  α0 in
              let* α2 : ltac:(refine (M.Val (core.option.Option.t u32.t))) :=
                M.alloc α1 in
              let* α3 := M.read α2 in
              match α3 with
              | core.option.Option.None  =>
                let* α0 : ltac:(refine (M.Val never.t)) := Break in
                never_to_any α0
              | core.option.Option.Some i =>
                let* i := M.alloc i in
                let* _ : ltac:(refine (M.Val unit)) :=
                  let* _ : ltac:(refine (M.Val unit)) :=
                    let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
                      M.alloc [ mk_str "> "; mk_str "
" ] in
                    let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
                      borrow α0 in
                    let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
                      pointer_coercion "Unsize" α1 in
                    let* α3 : ltac:(refine (M.Val (ref u32.t))) := borrow i in
                    let* α4 := core.fmt.rt.Argument.t::["new_display"] α3 in
                    let* α5 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
                      M.alloc α4 in
                    let* α6 :
                        ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
                      M.alloc [ α5 ] in
                    let* α7 :
                        ltac:(refine
                          (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
                      borrow α6 in
                    let* α8 :
                        ltac:(refine
                          (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
                      pointer_coercion "Unsize" α7 in
                    let* α9 := core.fmt.Arguments.t::["new_v1"] α2 α8 in
                    let* α10 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
                      M.alloc α9 in
                    let* α11 := std.io.stdio._print α10 in
                    M.alloc α11 in
                  M.alloc tt in
                M.alloc tt
              end in
            M.alloc tt)
        end in
      use α8 in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc
            [ mk_str "The next four terms of the Fibonacci sequence are: 
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := core.fmt.Arguments.t::["new_const"] α2 in
        let* α4 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α3 in
        let* α5 := std.io.stdio._print α4 in
        M.alloc α5 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* α0 := iterators.fibonacci in
      let* α1 : ltac:(refine (M.Val iterators.Fibonacci.t)) := M.alloc α0 in
      let* α2 : ltac:(refine (M.Val usize.t)) := M.alloc 4 in
      let* α3 :=
        (core.iter.traits.iterator.Iterator.skip
            (Self := iterators.Fibonacci.t)
            (Trait := ltac:(refine _)))
          α1
          α2 in
      let* α4 :
          ltac:(refine
            (M.Val (core.iter.adapters.skip.Skip.t iterators.Fibonacci.t))) :=
        M.alloc α3 in
      let* α5 : ltac:(refine (M.Val usize.t)) := M.alloc 4 in
      let* α6 :=
        (core.iter.traits.iterator.Iterator.take
            (Self := core.iter.adapters.skip.Skip.t iterators.Fibonacci.t)
            (Trait := ltac:(refine _)))
          α4
          α5 in
      let* α7 :
          ltac:(refine
            (M.Val
              (core.iter.adapters.take.Take.t
                (core.iter.adapters.skip.Skip.t iterators.Fibonacci.t)))) :=
        M.alloc α6 in
      let* α8 :=
        (core.iter.traits.collect.IntoIterator.into_iter
            (Self :=
              core.iter.adapters.take.Take.t
                (core.iter.adapters.skip.Skip.t iterators.Fibonacci.t))
            (Trait := ltac:(refine _)))
          α7 in
      let* α9 :
          ltac:(refine
            (M.Val
              (core.iter.adapters.take.Take.t
                (core.iter.adapters.skip.Skip.t iterators.Fibonacci.t)))) :=
        M.alloc α8 in
      let* α10 := M.read α9 in
      let* α11 : ltac:(refine (M.Val unit)) :=
        match α10 with
        | iter =>
          let* iter := M.alloc iter in
          loop
            (let* _ : ltac:(refine (M.Val unit)) :=
              let* α0 :
                  ltac:(refine
                    (M.Val
                      (mut_ref
                        (core.iter.adapters.take.Take.t
                          (core.iter.adapters.skip.Skip.t
                            iterators.Fibonacci.t))))) :=
                borrow_mut iter in
              let* α1 :=
                (core.iter.traits.iterator.Iterator.next
                    (Self :=
                      core.iter.adapters.take.Take.t
                        (core.iter.adapters.skip.Skip.t iterators.Fibonacci.t))
                    (Trait := ltac:(refine _)))
                  α0 in
              let* α2 : ltac:(refine (M.Val (core.option.Option.t u32.t))) :=
                M.alloc α1 in
              let* α3 := M.read α2 in
              match α3 with
              | core.option.Option.None  =>
                let* α0 : ltac:(refine (M.Val never.t)) := Break in
                never_to_any α0
              | core.option.Option.Some i =>
                let* i := M.alloc i in
                let* _ : ltac:(refine (M.Val unit)) :=
                  let* _ : ltac:(refine (M.Val unit)) :=
                    let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
                      M.alloc [ mk_str "> "; mk_str "
" ] in
                    let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
                      borrow α0 in
                    let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
                      pointer_coercion "Unsize" α1 in
                    let* α3 : ltac:(refine (M.Val (ref u32.t))) := borrow i in
                    let* α4 := core.fmt.rt.Argument.t::["new_display"] α3 in
                    let* α5 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
                      M.alloc α4 in
                    let* α6 :
                        ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
                      M.alloc [ α5 ] in
                    let* α7 :
                        ltac:(refine
                          (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
                      borrow α6 in
                    let* α8 :
                        ltac:(refine
                          (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
                      pointer_coercion "Unsize" α7 in
                    let* α9 := core.fmt.Arguments.t::["new_v1"] α2 α8 in
                    let* α10 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
                      M.alloc α9 in
                    let* α11 := std.io.stdio._print α10 in
                    M.alloc α11 in
                  M.alloc tt in
                M.alloc tt
              end in
            M.alloc tt)
        end in
      use α11 in
    let* array : ltac:(refine (M.Val (array u32.t))) :=
      let* α0 : ltac:(refine (M.Val u32.t)) := M.alloc 1 in
      let* α1 : ltac:(refine (M.Val u32.t)) := M.alloc 3 in
      let* α2 : ltac:(refine (M.Val u32.t)) := M.alloc 3 in
      let* α3 : ltac:(refine (M.Val u32.t)) := M.alloc 7 in
      M.alloc [ α0; α1; α2; α3 ] in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "Iterate the following array "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref (array u32.t)))) := borrow array in
        let* α4 : ltac:(refine (M.Val (ref (ref (array u32.t))))) :=
          borrow α3 in
        let* α5 := core.fmt.rt.Argument.t::["new_debug"] α4 in
        let* α6 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α5 in
        let* α7 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α6 ] in
        let* α8 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α7 in
        let* α9 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α8 in
        let* α10 := core.fmt.Arguments.t::["new_v1"] α2 α9 in
        let* α11 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α10 in
        let* α12 := std.io.stdio._print α11 in
        M.alloc α12 in
      M.alloc tt in
    let* α0 : ltac:(refine (M.Val (ref (array u32.t)))) := borrow array in
    let* α1 : ltac:(refine (M.Val (ref (slice u32.t)))) :=
      pointer_coercion "Unsize" α0 in
    let* α2 := (slice u32.t)::["iter"] α1 in
    let* α3 : ltac:(refine (M.Val (core.slice.iter.Iter.t u32.t))) :=
      M.alloc α2 in
    let* α4 :=
      (core.iter.traits.collect.IntoIterator.into_iter
          (Self := core.slice.iter.Iter.t u32.t)
          (Trait := ltac:(refine _)))
        α3 in
    let* α5 : ltac:(refine (M.Val (core.slice.iter.Iter.t u32.t))) :=
      M.alloc α4 in
    let* α6 := M.read α5 in
    let* α7 : ltac:(refine (M.Val unit)) :=
      match α6 with
      | iter =>
        let* iter := M.alloc iter in
        loop
          (let* _ : ltac:(refine (M.Val unit)) :=
            let* α0 :
                ltac:(refine
                  (M.Val (mut_ref (core.slice.iter.Iter.t u32.t)))) :=
              borrow_mut iter in
            let* α1 :=
              (core.iter.traits.iterator.Iterator.next
                  (Self := core.slice.iter.Iter.t u32.t)
                  (Trait := ltac:(refine _)))
                α0 in
            let* α2 :
                ltac:(refine (M.Val (core.option.Option.t (ref u32.t)))) :=
              M.alloc α1 in
            let* α3 := M.read α2 in
            match α3 with
            | core.option.Option.None  =>
              let* α0 : ltac:(refine (M.Val never.t)) := Break in
              never_to_any α0
            | core.option.Option.Some i =>
              let* i := M.alloc i in
              let* _ : ltac:(refine (M.Val unit)) :=
                let* _ : ltac:(refine (M.Val unit)) :=
                  let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
                    M.alloc [ mk_str "> "; mk_str "
" ] in
                  let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
                    borrow α0 in
                  let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
                    pointer_coercion "Unsize" α1 in
                  let* α3 : ltac:(refine (M.Val (ref (ref u32.t)))) :=
                    borrow i in
                  let* α4 := core.fmt.rt.Argument.t::["new_display"] α3 in
                  let* α5 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
                    M.alloc α4 in
                  let* α6 :
                      ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
                    M.alloc [ α5 ] in
                  let* α7 :
                      ltac:(refine
                        (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
                    borrow α6 in
                  let* α8 :
                      ltac:(refine
                        (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
                    pointer_coercion "Unsize" α7 in
                  let* α9 := core.fmt.Arguments.t::["new_v1"] α2 α8 in
                  let* α10 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
                    M.alloc α9 in
                  let* α11 := std.io.stdio._print α10 in
                  M.alloc α11 in
                M.alloc tt in
              M.alloc tt
            end in
          M.alloc tt)
      end in
    use α7).
