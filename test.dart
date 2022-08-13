// ignore_for_file: dead_code, unused_local_variable

import 'dart:io';
import './classBook.dart';

void main() {
  
  List BooksList = <Book>[];
  Book book1 = new Book("A", "Karrar", 4.7);
  Book book2 = new Book("B", "Karrar", 3.2);
  Book.BooksList.add(book1);
  Book.BooksList.add(book2);
  String? input;
  while (true) {
  print("1- Display all books\n"
      "2- Display books with rate +4.\n"
      "3- Add book\n"
      "4- Delete book\n"
      "5- Update book\n"
      "6- Search book\n"
      "7- Exit\n"
      "Enter your choice: ");
  input = stdin.readLineSync();
  
    switch (input) {
      case "1":
        Book.displayAllBooks();
        break;
      case "2":
        Book.displayBooksWithRate();
        break;
      case "3":
        Book.addBook();
        break;
      case "4":
        Book.deleteBook();
        break;
      case "5":
        Book.updateBook();
        break;
      case "6":
        Book.searchBook();
        break;
      case "7":
        exit(1);
        break;
      default:
        print("Invalid choice");
    }
   
  }
}

