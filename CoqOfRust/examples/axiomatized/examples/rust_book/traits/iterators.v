(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Fibonacci.
Section Fibonacci.
  Record t : Set := {
    curr : u32.t;
    next : u32.t;
  }.
  
  Definition Get_curr :=
    Ref.map (fun α => Some α.(curr)) (fun β α => Some (α <| curr := β |>)).
  Definition Get_next :=
    Ref.map (fun α => Some α.(next)) (fun β α => Some (α <| next := β |>)).
End Fibonacci.
End Fibonacci.

Module  Impl_core_iter_traits_iterator_Iterator_for_iterators_Fibonacci_t.
Section Impl_core_iter_traits_iterator_Iterator_for_iterators_Fibonacci_t.
  Definition Self : Set := iterators.Fibonacci.t.
  
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
  Parameter next : (mut_ref Self) -> M (core.option.Option.t Item).
  
  Global Instance AssociatedFunction_next :
    Notations.DoubleColon Self "next" := {
    Notations.double_colon := next;
  }.
  
  Global Instance ℐ :
    core.iter.traits.iterator.Iterator.Required.Trait Self := {
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
    core.iter.traits.iterator.Iterator.map_windows := Datatypes.None;
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
Parameter fibonacci : M iterators.Fibonacci.t.

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
Parameter main : M unit.
