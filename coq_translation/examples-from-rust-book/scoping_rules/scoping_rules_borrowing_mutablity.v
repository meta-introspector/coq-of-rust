(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module Book.
  Record t : Set := {
    author : ref str;
    title : ref str;
    year : u32;
  }.
  
  Global Instance Get_author : Notation.Dot "author" := {
    Notation.dot '(Build_t x0 _ _) := x0;
  }.
  Global Instance Get_title : Notation.Dot "title" := {
    Notation.dot '(Build_t _ x1 _) := x1;
  }.
  Global Instance Get_year : Notation.Dot "year" := {
    Notation.dot '(Build_t _ _ x2) := x2;
  }.
End Book.
Definition Book : Set := Book.t.

Module Impl__crate_clone_Clone_for_Book.
  Definition Self := Book.
  
  Definition clone (self : ref Self) : Book :=
    let _ := tt in
    let _ := tt in
    let _ := tt in
    deref self.
  
  Global Instance Method_clone : Notation.Dot "clone" := {
    Notation.dot := clone;
  }.
  
  Global Instance I : _crate.clone.Clone.Trait Self := {
    _crate.clone.Clone.clone := clone;
  }.
End Impl__crate_clone_Clone_for_Book.

Module Impl__crate_marker_Copy_for_Book.
  Definition Self := Book.
  
  Global Instance I : _crate.marker.Copy.Trait Self :=
    _crate.marker.Copy.Build_Class _.
End Impl__crate_marker_Copy_for_Book.

Definition borrow_book (book : ref Book) : unit :=
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "I immutably borrowed "; " - "; " edition\n" ]
      [
        _crate.fmt.ArgumentV1::["new_display"] book.["title"];
        _crate.fmt.ArgumentV1::["new_display"] book.["year"]
      ]) ;;
  tt ;;
  tt.

Definition new_edition (book : mut_ref Book) : unit :=
  assign book.["year"] 2014 ;;
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "I mutably borrowed "; " - "; " edition\n" ]
      [
        _crate.fmt.ArgumentV1::["new_display"] book.["title"];
        _crate.fmt.ArgumentV1::["new_display"] book.["year"]
      ]) ;;
  tt ;;
  tt.

Definition main (_ : unit) : unit :=
  let immutabook :=
    {|
      Book.author := "Douglas Hofstadter";
      Book.title := "Gödel, Escher, Bach";
      Book.year := 1979;
    |} in
  let mutabook := immutabook in
  borrow_book immutabook ;;
  borrow_book mutabook ;;
  new_edition mutabook ;;
  tt.
