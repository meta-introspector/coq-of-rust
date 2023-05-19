Require Import CoqOfRust.lib.lib.

(* Require CoqOfRust.std.marker.Sized. *)
Require CoqOfRust.std.option.

(* ********STRUCTS******** *)
(* TODO: Complete the translation for structs *)

(* ********TRAITS******** *)
(* 
(!: Tested; x: Complete; ?: Bugged; empty: Unfinished)
[ ] Step(Experimental)
[x] TrustedLen(Experimental)
[x] TrustedStep(Experimental)
[ ] DoubleEndedIterator
[x] ExactSizeIterator
[ ] Extend
[?] FromIterator
[?] FusedIterator
[?] IntoIterator
[ ] Iterator
[?] Product
[?] Sum 
*)

Module Iterator.
  Class Trait (self : Set) (Item : Set) := {
    (* TODO: Add the translation for all the functions... *)

    (* fn next(&mut self) -> Option<Self::Item>; *)
    next : mut_ref Self -> Option Item;

    (* fn next_chunk<const N: usize>(
        &mut self
    ) -> Result<[Self::Item; N], IntoIter<Self::Item, N>>
       where Self: Sized { ... } *)
    next_chunk : mut_ref Self -> Result (slice Item) (IntoIter Item);

  }.
End Iterator.

(* pub trait IntoIterator {
    type Item;
    type IntoIter: Iterator<Item = Self::Item>;

    // Required method
    fn into_iter(self) -> Self::IntoIter;
} *)
Module IntoIterator.
  Class Trait (Self Item IntoIter : Set) `{Iterator.Trait IntoIter Item} : Set := {
    Item := Item;
    IntoIter := IntoIter;
    into_iter : Self -> IntoIter;
  }.
End IntoIterator.

(* 
pub trait FromIterator<A>: Sized {
    // Required method
    fn from_iter<T>(iter: T) -> Self
       where T: IntoIterator<Item = A>;
}
*)
Module FromIterator.
  Class Trait (Self : Set) (A : Set) : Set := {
    from_iter {T : Set} `{IntoIterator.Trait T A} : T -> Self.
  }.
End FromIterator.

(* pub trait FusedIterator: Iterator { } *)
Module FusedIterator.
  Class Trait (Self : Set) : Set := { }.
End FusedIterator.

(* 
pub trait Extend<A> {
    // Required method
    fn extend<T>(&mut self, iter: T)
       where T: IntoIterator<Item = A>;

    // Provided methods
    fn extend_one(&mut self, item: A) { ... }
    fn extend_reserve(&mut self, additional: usize) { ... }
}
*)
Module Extend.
  Class Trait (Self : Set) (A : Set) : Set := {
    extend {T : Set} `{IntoIterator T A} : mut_ref Self -> T -> unit;
    extend_one : mut_ref Self -> A -> unit;
    extend_reserve : mut_ref Self -> usize -> unit;
  }.
End Extend.

(* 
pub trait ExactSizeIterator: Iterator {
    // Provided methods
    fn len(&self) -> usize { ... }
    fn is_empty(&self) -> bool { ... }
}
*)
Module ExactSizeIterator.
  Class Trait (Self : Set) (A : Set) : Set := {
    len : ref Self -> usize;
    is_empty : ref Self -> bool;
  }.
End ExactSizeIterator.

(* 
pub trait DoubleEndedIterator: Iterator {
    // Required method
    fn next_back(&mut self) -> Option<Self::Item>;

    // Provided methods
    fn advance_back_by(&mut self, n: usize) -> Result<(), usize> { ... }
    fn nth_back(&mut self, n: usize) -> Option<Self::Item> { ... }
    fn try_rfold<B, F, R>(&mut self, init: B, f: F) -> R
       where Self: Sized,
             F: FnMut(B, Self::Item) -> R,
             R: Try<Output = B> { ... }
    fn rfold<B, F>(self, init: B, f: F) -> B
       where Self: Sized,
             F: FnMut(B, Self::Item) -> B { ... }
    fn rfind<P>(&mut self, predicate: P) -> Option<Self::Item>
       where Self: Sized,
             P: FnMut(&Self::Item) -> bool { ... }
}
*)
Module DoubleEndedIterator.
  Class Trait (Self : Set) (A : Set) : Set := {
  (* Issue: Item not provided *)
    type Item;

    next_back : mut_ref Self -> option Item;
    (* How to translate tuple? *)
    advance_back_by : mut_ref Self -> usize -> Result unit usize;
    nth_back : mut_ref Self -> usize -> Option Item;
    (* How to translate template functions? Can we use where clause in Coq here? *)
    (* Pretty complicated *)
    try_nfold : (B: Set) -> mut_ref Self -> B -> F -> R;
    rfold : (B F : Set) -> Self -> B -> F -> B;
    rfind : (P : Set) -> mut_ref Self -> P -> Option Item;
  }.
End DoubleEndedIterator.

Module Product.
  Class Trait (Self : Set) (A : option Set) : Set := {
    A := defaultType A Self;
    (* Issue: Here, I is required to have type of Iterator<Item=A>. But current definition 
      for Iterator.Trait requires more parameters. *)
    product : {(Iterator.trait A) I} -> I -> Self;
  }.
End Product.

Module Sum.
  Class Trait (Self : Set) (A : option Set) : Set := {
    A := defaultType A Self;
    (* Same as above *)
    sum : {(Iterator.trait A) I} -> I -> Self;
  }.
End Sum.

(* 
pub trait Step: Clone + PartialOrd<Self> + Sized {
    // Required methods
    fn steps_between(start: &Self, end: &Self) -> Option<usize>;
    fn forward_checked(start: Self, count: usize) -> Option<Self>;
    fn backward_checked(start: Self, count: usize) -> Option<Self>;

    // Provided methods
    fn forward(start: Self, count: usize) -> Self { ... }
    unsafe fn forward_unchecked(start: Self, count: usize) -> Self { ... }
    fn backward(start: Self, count: usize) -> Self { ... }
    unsafe fn backward_unchecked(start: Self, count: usize) -> Self { ... }
}
*)
Module Step.
  Class Trait (Self : Set) : Set := {
    steps_between : ref Self -> ref Self -> option usize;
    forward_checked : Self -> usize -> option Self;
    backward_checked : Self -> usize -> Self;
    backward_unchecked : Self -> usize -> Self;
  }
End Step.

(* 
pub unsafe trait TrustedLen: Iterator { }
*)
Module TrustedLen.
  Class Trait (Self : Set) : Set := { }.
End TrustedLen.

(* 
pub unsafe trait TrustedStep: Step { }
*)
Module TrustedStep.
  Class Trait (Self : Set) : Set := { }.
End TrustedStep.
