(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Fibonacci.
Section Fibonacci.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Record t : Set := {
    curr : u32;
    next : u32;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_curr : Notation.Dot "curr" := {
    Notation.dot x := let* x := M.read x in M.pure x.(curr) : M _;
  }.
  Global Instance Get_AF_curr : Notation.DoubleColon t "curr" := {
    Notation.double_colon x := let* x := M.read x in M.pure x.(curr) : M _;
  }.
  Global Instance Get_next : Notation.Dot "next" := {
    Notation.dot x := let* x := M.read x in M.pure x.(next) : M _;
  }.
  Global Instance Get_AF_next : Notation.DoubleColon t "next" := {
    Notation.double_colon x := let* x := M.read x in M.pure x.(next) : M _;
  }.
End Fibonacci.
End Fibonacci.
Definition Fibonacci `{ℋ : State.Trait} : Set := M.Val Fibonacci.t.

Module  Impl_core_iter_traits_iterator_Iterator_for_iterators_Fibonacci.
Section Impl_core_iter_traits_iterator_Iterator_for_iterators_Fibonacci.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := iterators.Fibonacci.
  
  Definition Item : Set := u32.
  
  Definition next (self : mut_ref Self) : M (core.option.Option Item) :=
    M.function_body
      (let* current : ltac:(refine u32) :=
        let* α0 : ltac:(refine iterators.Fibonacci) := deref self in
        α0.["curr"] in
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine iterators.Fibonacci) := deref self in
        let* α1 : ltac:(refine u32) := α0.["curr"] in
        let* α2 : ltac:(refine iterators.Fibonacci) := deref self in
        let* α3 : ltac:(refine u32) := α2.["next"] in
        assign α1 α3 in
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine iterators.Fibonacci) := deref self in
        let* α1 : ltac:(refine u32) := α0.["next"] in
        let* α2 : ltac:(refine iterators.Fibonacci) := deref self in
        let* α3 : ltac:(refine u32) := α2.["next"] in
        let* α4 : ltac:(refine u32) := BinOp.add current α3 in
        assign α1 α4 in
      M.alloc (core.option.Option.Some current)).
  
  Global Instance AssociatedFunction_next :
    Notation.DoubleColon Self "next" := {
    Notation.double_colon := next;
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
End Impl_core_iter_traits_iterator_Iterator_for_iterators_Fibonacci.
End Impl_core_iter_traits_iterator_Iterator_for_iterators_Fibonacci.

Definition fibonacci `{ℋ : State.Trait} : M iterators.Fibonacci :=
  M.function_body
    (let* α0 : ltac:(refine u32) := M.alloc 0 in
    let* α1 : ltac:(refine u32) := M.alloc 1 in
    M.alloc
      {| iterators.Fibonacci.curr := α0; iterators.Fibonacci.next := α1; |}).

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* sequence : ltac:(refine (core.ops.range.Range i32)) :=
      let* α0 : ltac:(refine i32) := M.alloc 0 in
      let* α1 : ltac:(refine i32) := M.alloc 3 in
      M.alloc
        {| core.ops.range.Range.start := α0; core.ops.range.Range.end := α1;
        |} in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "Four consecutive `next` calls on 0..3
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_const"] α4 in
        std.io.stdio._print α5 in
      M.alloc tt in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "> "; mk_str "
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine (mut_ref (core.ops.range.Range i32))) :=
          borrow_mut sequence in
        let* α6 : ltac:(refine (core.option.Option i32)) :=
          (core.iter.traits.iterator.Iterator.next
              (Self := core.ops.range.Range i32)
              (Trait := ltac:(refine _)))
            α5 in
        let* α7 : ltac:(refine (ref (core.option.Option i32))) := borrow α6 in
        let* α8 : ltac:(refine (core.option.Option i32)) := deref α7 in
        let* α9 : ltac:(refine (ref (core.option.Option i32))) := borrow α8 in
        let* α10 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_debug"] α9 in
        let* α11 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α10 ] in
        let* α12 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α11 in
        let* α13 : ltac:(refine (array core.fmt.rt.Argument)) := deref α12 in
        let* α14 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α13 in
        let* α15 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α14 in
        let* α16 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α4 α15 in
        std.io.stdio._print α16 in
      M.alloc tt in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "> "; mk_str "
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine (mut_ref (core.ops.range.Range i32))) :=
          borrow_mut sequence in
        let* α6 : ltac:(refine (core.option.Option i32)) :=
          (core.iter.traits.iterator.Iterator.next
              (Self := core.ops.range.Range i32)
              (Trait := ltac:(refine _)))
            α5 in
        let* α7 : ltac:(refine (ref (core.option.Option i32))) := borrow α6 in
        let* α8 : ltac:(refine (core.option.Option i32)) := deref α7 in
        let* α9 : ltac:(refine (ref (core.option.Option i32))) := borrow α8 in
        let* α10 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_debug"] α9 in
        let* α11 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α10 ] in
        let* α12 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α11 in
        let* α13 : ltac:(refine (array core.fmt.rt.Argument)) := deref α12 in
        let* α14 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α13 in
        let* α15 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α14 in
        let* α16 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α4 α15 in
        std.io.stdio._print α16 in
      M.alloc tt in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "> "; mk_str "
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine (mut_ref (core.ops.range.Range i32))) :=
          borrow_mut sequence in
        let* α6 : ltac:(refine (core.option.Option i32)) :=
          (core.iter.traits.iterator.Iterator.next
              (Self := core.ops.range.Range i32)
              (Trait := ltac:(refine _)))
            α5 in
        let* α7 : ltac:(refine (ref (core.option.Option i32))) := borrow α6 in
        let* α8 : ltac:(refine (core.option.Option i32)) := deref α7 in
        let* α9 : ltac:(refine (ref (core.option.Option i32))) := borrow α8 in
        let* α10 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_debug"] α9 in
        let* α11 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α10 ] in
        let* α12 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α11 in
        let* α13 : ltac:(refine (array core.fmt.rt.Argument)) := deref α12 in
        let* α14 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α13 in
        let* α15 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α14 in
        let* α16 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α4 α15 in
        std.io.stdio._print α16 in
      M.alloc tt in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "> "; mk_str "
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine (mut_ref (core.ops.range.Range i32))) :=
          borrow_mut sequence in
        let* α6 : ltac:(refine (core.option.Option i32)) :=
          (core.iter.traits.iterator.Iterator.next
              (Self := core.ops.range.Range i32)
              (Trait := ltac:(refine _)))
            α5 in
        let* α7 : ltac:(refine (ref (core.option.Option i32))) := borrow α6 in
        let* α8 : ltac:(refine (core.option.Option i32)) := deref α7 in
        let* α9 : ltac:(refine (ref (core.option.Option i32))) := borrow α8 in
        let* α10 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_debug"] α9 in
        let* α11 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α10 ] in
        let* α12 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α11 in
        let* α13 : ltac:(refine (array core.fmt.rt.Argument)) := deref α12 in
        let* α14 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α13 in
        let* α15 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α14 in
        let* α16 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α4 α15 in
        std.io.stdio._print α16 in
      M.alloc tt in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "Iterate through 0..3 using `for`
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_const"] α4 in
        std.io.stdio._print α5 in
      M.alloc tt in
    let* _ : ltac:(refine unit) :=
      let* α0 : ltac:(refine i32) := M.alloc 0 in
      let* α1 : ltac:(refine i32) := M.alloc 3 in
      let* α2 : ltac:(refine (core.ops.range.Range i32)) :=
        M.alloc
          {| core.ops.range.Range.start := α0; core.ops.range.Range.end := α1;
          |} in
      let* α3 : ltac:(refine (core.ops.range.Range i32)) :=
        (core.iter.traits.collect.IntoIterator.into_iter
            (Self := core.ops.range.Range i32)
            (Trait := ltac:(refine _)))
          α2 in
      let* α4 := M.read α3 in
      let* α5 : ltac:(refine unit) :=
        match α4 with
        | iter =>
          loop
            (let* _ : ltac:(refine unit) :=
              let* α0 : ltac:(refine (mut_ref (core.ops.range.Range i32))) :=
                borrow_mut iter in
              let* α1 : ltac:(refine (core.ops.range.Range i32)) := deref α0 in
              let* α2 : ltac:(refine (mut_ref (core.ops.range.Range i32))) :=
                borrow_mut α1 in
              let* α3 : ltac:(refine (core.option.Option i32)) :=
                (core.iter.traits.iterator.Iterator.next
                    (Self := core.ops.range.Range i32)
                    (Trait := ltac:(refine _)))
                  α2 in
              let* α4 := M.read α3 in
              match α4 with
              | core.option.Option.None  =>
                let* α0 : ltac:(refine never) := Break in
                never_to_any α0
              | core.option.Option.Some i =>
                let* _ : ltac:(refine unit) :=
                  let* _ : ltac:(refine unit) :=
                    let* α0 : ltac:(refine (array (ref str))) :=
                      M.alloc [ mk_str "> "; mk_str "
" ] in
                    let* α1 : ltac:(refine (ref (array (ref str)))) :=
                      borrow α0 in
                    let* α2 : ltac:(refine (array (ref str))) := deref α1 in
                    let* α3 : ltac:(refine (ref (array (ref str)))) :=
                      borrow α2 in
                    let* α4 : ltac:(refine (ref (slice (ref str)))) :=
                      pointer_coercion "Unsize" α3 in
                    let* α5 : ltac:(refine (ref i32)) := borrow i in
                    let* α6 : ltac:(refine i32) := deref α5 in
                    let* α7 : ltac:(refine (ref i32)) := borrow α6 in
                    let* α8 : ltac:(refine core.fmt.rt.Argument) :=
                      core.fmt.rt.Argument::["new_display"] α7 in
                    let* α9 : ltac:(refine (array core.fmt.rt.Argument)) :=
                      M.alloc [ α8 ] in
                    let*
                        α10 :
                        ltac:(refine (ref (array core.fmt.rt.Argument))) :=
                      borrow α9 in
                    let* α11 : ltac:(refine (array core.fmt.rt.Argument)) :=
                      deref α10 in
                    let*
                        α12 :
                        ltac:(refine (ref (array core.fmt.rt.Argument))) :=
                      borrow α11 in
                    let*
                        α13 :
                        ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
                      pointer_coercion "Unsize" α12 in
                    let* α14 : ltac:(refine core.fmt.Arguments) :=
                      core.fmt.Arguments::["new_v1"] α4 α13 in
                    std.io.stdio._print α14 in
                  M.alloc tt in
                M.alloc tt
              end in
            M.alloc tt)
        end in
      use α5 in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc
            [ mk_str "The first four terms of the Fibonacci sequence are: 
"
            ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_const"] α4 in
        std.io.stdio._print α5 in
      M.alloc tt in
    let* _ : ltac:(refine unit) :=
      let* α0 : ltac:(refine iterators.Fibonacci) := iterators.fibonacci in
      let* α1 : ltac:(refine usize) := M.alloc 4 in
      let*
          α2 :
          ltac:(refine (core.iter.adapters.take.Take iterators.Fibonacci)) :=
        (core.iter.traits.iterator.Iterator.take
            (Self := iterators.Fibonacci)
            (Trait := ltac:(refine _)))
          α0
          α1 in
      let*
          α3 :
          ltac:(refine (core.iter.adapters.take.Take iterators.Fibonacci)) :=
        (core.iter.traits.collect.IntoIterator.into_iter
            (Self := core.iter.adapters.take.Take iterators.Fibonacci)
            (Trait := ltac:(refine _)))
          α2 in
      let* α4 := M.read α3 in
      let* α5 : ltac:(refine unit) :=
        match α4 with
        | iter =>
          loop
            (let* _ : ltac:(refine unit) :=
              let*
                  α0 :
                  ltac:(refine
                    (mut_ref
                      (core.iter.adapters.take.Take iterators.Fibonacci))) :=
                borrow_mut iter in
              let*
                  α1 :
                  ltac:(refine
                    (core.iter.adapters.take.Take iterators.Fibonacci)) :=
                deref α0 in
              let*
                  α2 :
                  ltac:(refine
                    (mut_ref
                      (core.iter.adapters.take.Take iterators.Fibonacci))) :=
                borrow_mut α1 in
              let* α3 : ltac:(refine (core.option.Option u32)) :=
                (core.iter.traits.iterator.Iterator.next
                    (Self := core.iter.adapters.take.Take iterators.Fibonacci)
                    (Trait := ltac:(refine _)))
                  α2 in
              let* α4 := M.read α3 in
              match α4 with
              | core.option.Option.None  =>
                let* α0 : ltac:(refine never) := Break in
                never_to_any α0
              | core.option.Option.Some i =>
                let* _ : ltac:(refine unit) :=
                  let* _ : ltac:(refine unit) :=
                    let* α0 : ltac:(refine (array (ref str))) :=
                      M.alloc [ mk_str "> "; mk_str "
" ] in
                    let* α1 : ltac:(refine (ref (array (ref str)))) :=
                      borrow α0 in
                    let* α2 : ltac:(refine (array (ref str))) := deref α1 in
                    let* α3 : ltac:(refine (ref (array (ref str)))) :=
                      borrow α2 in
                    let* α4 : ltac:(refine (ref (slice (ref str)))) :=
                      pointer_coercion "Unsize" α3 in
                    let* α5 : ltac:(refine (ref u32)) := borrow i in
                    let* α6 : ltac:(refine u32) := deref α5 in
                    let* α7 : ltac:(refine (ref u32)) := borrow α6 in
                    let* α8 : ltac:(refine core.fmt.rt.Argument) :=
                      core.fmt.rt.Argument::["new_display"] α7 in
                    let* α9 : ltac:(refine (array core.fmt.rt.Argument)) :=
                      M.alloc [ α8 ] in
                    let*
                        α10 :
                        ltac:(refine (ref (array core.fmt.rt.Argument))) :=
                      borrow α9 in
                    let* α11 : ltac:(refine (array core.fmt.rt.Argument)) :=
                      deref α10 in
                    let*
                        α12 :
                        ltac:(refine (ref (array core.fmt.rt.Argument))) :=
                      borrow α11 in
                    let*
                        α13 :
                        ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
                      pointer_coercion "Unsize" α12 in
                    let* α14 : ltac:(refine core.fmt.Arguments) :=
                      core.fmt.Arguments::["new_v1"] α4 α13 in
                    std.io.stdio._print α14 in
                  M.alloc tt in
                M.alloc tt
              end in
            M.alloc tt)
        end in
      use α5 in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc
            [ mk_str "The next four terms of the Fibonacci sequence are: 
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_const"] α4 in
        std.io.stdio._print α5 in
      M.alloc tt in
    let* _ : ltac:(refine unit) :=
      let* α0 : ltac:(refine iterators.Fibonacci) := iterators.fibonacci in
      let* α1 : ltac:(refine usize) := M.alloc 4 in
      let*
          α2 :
          ltac:(refine (core.iter.adapters.skip.Skip iterators.Fibonacci)) :=
        (core.iter.traits.iterator.Iterator.skip
            (Self := iterators.Fibonacci)
            (Trait := ltac:(refine _)))
          α0
          α1 in
      let* α3 : ltac:(refine usize) := M.alloc 4 in
      let*
          α4 :
          ltac:(refine
            (core.iter.adapters.take.Take
              (core.iter.adapters.skip.Skip iterators.Fibonacci))) :=
        (core.iter.traits.iterator.Iterator.take
            (Self := core.iter.adapters.skip.Skip iterators.Fibonacci)
            (Trait := ltac:(refine _)))
          α2
          α3 in
      let*
          α5 :
          ltac:(refine
            (core.iter.adapters.take.Take
              (core.iter.adapters.skip.Skip iterators.Fibonacci))) :=
        (core.iter.traits.collect.IntoIterator.into_iter
            (Self :=
              core.iter.adapters.take.Take
                (core.iter.adapters.skip.Skip iterators.Fibonacci))
            (Trait := ltac:(refine _)))
          α4 in
      let* α6 := M.read α5 in
      let* α7 : ltac:(refine unit) :=
        match α6 with
        | iter =>
          loop
            (let* _ : ltac:(refine unit) :=
              let*
                  α0 :
                  ltac:(refine
                    (mut_ref
                      (core.iter.adapters.take.Take
                        (core.iter.adapters.skip.Skip iterators.Fibonacci)))) :=
                borrow_mut iter in
              let*
                  α1 :
                  ltac:(refine
                    (core.iter.adapters.take.Take
                      (core.iter.adapters.skip.Skip iterators.Fibonacci))) :=
                deref α0 in
              let*
                  α2 :
                  ltac:(refine
                    (mut_ref
                      (core.iter.adapters.take.Take
                        (core.iter.adapters.skip.Skip iterators.Fibonacci)))) :=
                borrow_mut α1 in
              let* α3 : ltac:(refine (core.option.Option u32)) :=
                (core.iter.traits.iterator.Iterator.next
                    (Self :=
                      core.iter.adapters.take.Take
                        (core.iter.adapters.skip.Skip iterators.Fibonacci))
                    (Trait := ltac:(refine _)))
                  α2 in
              let* α4 := M.read α3 in
              match α4 with
              | core.option.Option.None  =>
                let* α0 : ltac:(refine never) := Break in
                never_to_any α0
              | core.option.Option.Some i =>
                let* _ : ltac:(refine unit) :=
                  let* _ : ltac:(refine unit) :=
                    let* α0 : ltac:(refine (array (ref str))) :=
                      M.alloc [ mk_str "> "; mk_str "
" ] in
                    let* α1 : ltac:(refine (ref (array (ref str)))) :=
                      borrow α0 in
                    let* α2 : ltac:(refine (array (ref str))) := deref α1 in
                    let* α3 : ltac:(refine (ref (array (ref str)))) :=
                      borrow α2 in
                    let* α4 : ltac:(refine (ref (slice (ref str)))) :=
                      pointer_coercion "Unsize" α3 in
                    let* α5 : ltac:(refine (ref u32)) := borrow i in
                    let* α6 : ltac:(refine u32) := deref α5 in
                    let* α7 : ltac:(refine (ref u32)) := borrow α6 in
                    let* α8 : ltac:(refine core.fmt.rt.Argument) :=
                      core.fmt.rt.Argument::["new_display"] α7 in
                    let* α9 : ltac:(refine (array core.fmt.rt.Argument)) :=
                      M.alloc [ α8 ] in
                    let*
                        α10 :
                        ltac:(refine (ref (array core.fmt.rt.Argument))) :=
                      borrow α9 in
                    let* α11 : ltac:(refine (array core.fmt.rt.Argument)) :=
                      deref α10 in
                    let*
                        α12 :
                        ltac:(refine (ref (array core.fmt.rt.Argument))) :=
                      borrow α11 in
                    let*
                        α13 :
                        ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
                      pointer_coercion "Unsize" α12 in
                    let* α14 : ltac:(refine core.fmt.Arguments) :=
                      core.fmt.Arguments::["new_v1"] α4 α13 in
                    std.io.stdio._print α14 in
                  M.alloc tt in
                M.alloc tt
              end in
            M.alloc tt)
        end in
      use α7 in
    let* array : ltac:(refine (array u32)) :=
      let* α0 : ltac:(refine u32) := M.alloc 1 in
      let* α1 : ltac:(refine u32) := M.alloc 3 in
      let* α2 : ltac:(refine u32) := M.alloc 3 in
      let* α3 : ltac:(refine u32) := M.alloc 7 in
      M.alloc [ α0; α1; α2; α3 ] in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "Iterate the following array "; mk_str "
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine (ref (array u32))) := borrow array in
        let* α6 : ltac:(refine (ref (ref (array u32)))) := borrow α5 in
        let* α7 : ltac:(refine (ref (array u32))) := deref α6 in
        let* α8 : ltac:(refine (ref (ref (array u32)))) := borrow α7 in
        let* α9 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_debug"] α8 in
        let* α10 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α9 ] in
        let* α11 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α10 in
        let* α12 : ltac:(refine (array core.fmt.rt.Argument)) := deref α11 in
        let* α13 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α12 in
        let* α14 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α13 in
        let* α15 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α4 α14 in
        std.io.stdio._print α15 in
      M.alloc tt in
    let* α0 : ltac:(refine (ref (array u32))) := borrow array in
    let* α1 : ltac:(refine (ref (slice u32))) := pointer_coercion "Unsize" α0 in
    let* α2 : ltac:(refine (core.slice.iter.Iter u32)) :=
      (slice u32)::["iter"] α1 in
    let* α3 : ltac:(refine (core.slice.iter.Iter u32)) :=
      (core.iter.traits.collect.IntoIterator.into_iter
          (Self := core.slice.iter.Iter u32)
          (Trait := ltac:(refine _)))
        α2 in
    let* α4 := M.read α3 in
    let* α5 : ltac:(refine unit) :=
      match α4 with
      | iter =>
        loop
          (let* _ : ltac:(refine unit) :=
            let* α0 : ltac:(refine (mut_ref (core.slice.iter.Iter u32))) :=
              borrow_mut iter in
            let* α1 : ltac:(refine (core.slice.iter.Iter u32)) := deref α0 in
            let* α2 : ltac:(refine (mut_ref (core.slice.iter.Iter u32))) :=
              borrow_mut α1 in
            let* α3 : ltac:(refine (core.option.Option (ref u32))) :=
              (core.iter.traits.iterator.Iterator.next
                  (Self := core.slice.iter.Iter u32)
                  (Trait := ltac:(refine _)))
                α2 in
            let* α4 := M.read α3 in
            match α4 with
            | core.option.Option.None  =>
              let* α0 : ltac:(refine never) := Break in
              never_to_any α0
            | core.option.Option.Some i =>
              let* _ : ltac:(refine unit) :=
                let* _ : ltac:(refine unit) :=
                  let* α0 : ltac:(refine (array (ref str))) :=
                    M.alloc [ mk_str "> "; mk_str "
" ] in
                  let* α1 : ltac:(refine (ref (array (ref str)))) :=
                    borrow α0 in
                  let* α2 : ltac:(refine (array (ref str))) := deref α1 in
                  let* α3 : ltac:(refine (ref (array (ref str)))) :=
                    borrow α2 in
                  let* α4 : ltac:(refine (ref (slice (ref str)))) :=
                    pointer_coercion "Unsize" α3 in
                  let* α5 : ltac:(refine (ref (ref u32))) := borrow i in
                  let* α6 : ltac:(refine (ref u32)) := deref α5 in
                  let* α7 : ltac:(refine (ref (ref u32))) := borrow α6 in
                  let* α8 : ltac:(refine core.fmt.rt.Argument) :=
                    core.fmt.rt.Argument::["new_display"] α7 in
                  let* α9 : ltac:(refine (array core.fmt.rt.Argument)) :=
                    M.alloc [ α8 ] in
                  let* α10 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
                    borrow α9 in
                  let* α11 : ltac:(refine (array core.fmt.rt.Argument)) :=
                    deref α10 in
                  let* α12 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
                    borrow α11 in
                  let* α13 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
                    pointer_coercion "Unsize" α12 in
                  let* α14 : ltac:(refine core.fmt.Arguments) :=
                    core.fmt.Arguments::["new_v1"] α4 α13 in
                  std.io.stdio._print α14 in
                M.alloc tt in
              M.alloc tt
            end in
          M.alloc tt)
      end in
    use α5).
