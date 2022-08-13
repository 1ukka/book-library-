import 'dart:io';

class Book {
  String? _title;
  String? _author;
  double? _rate;

  static List BooksList = <Book>[];
  Book([this._title, this._author, this._rate]);

  String? get title => _title;
  String? get author => _author;
  double? get rate => _rate;

  set title(String? title) => _title = title;
  set author(String? author) => _author = author;
  set rate(double? rate) => _rate = rate;

  static void displayAllBooks() {
    List<Book>? BooksList = Book.BooksList.cast<Book>();
    for (var book in BooksList) {
      print("Title: ${book.title}\n"
          "author: ${book.author}\n"
          "rate: ${book.rate}\n");
    }
  }

  static void displayBooksWithRate() {
    for (var book in Book.BooksList) {
      if (book.rate >= 4.0) {
        print("Title: ${book.title}\n"
            "author: ${book.author}\n"
            "rate: ${book.rate}\n");
      } else if (book.rate < 4.0) {
        print("No book with rate +4.0");
      }
    }
  }

  static void addBook() {
    print("Enter the count of books want to add  : ");
    int count = int.parse(stdin.readLineSync()!);
    for (var i = 0; i < count; i++) {
      print("Enter the title of book ${i + 1} : ");
      String? title = stdin.readLineSync();
      print("Enter the author of book ${i + 1} : ");
      String? author = stdin.readLineSync();
      print("Enter the rate of book ${i + 1} : ");
      double? rate = double.parse(stdin.readLineSync()!);
      Book book = new Book(title, author, rate);
      Book.BooksList.add(book);
    }
  }

  static void deleteBook() {
    print("Enter the title of book want to delete : ");
    String? title = stdin.readLineSync();
    
  }

  static void updateBook() {
    print("Enter the count of books want to update  :");
    int count = int.parse(stdin.readLineSync()!);
    for (var i = 0; i < count; i++) {
      print("Enter the name of the book to update: ");
      String? title = stdin.readLineSync();
      if (title != Book.BooksList[i].title) {
        print("The book is not found");
      } else {
        print("Enter the new title of the book: ");
        String? newTitle = stdin.readLineSync();
        print("Enter the new author of the book: ");
        String? newAuthor = stdin.readLineSync();
        print("Enter the new rate of the book: ");
        double? newRate = double.parse(stdin.readLineSync()!);
        Book.BooksList[i].title = newTitle;
        Book.BooksList[i].author = newAuthor;
        Book.BooksList[i].rate = newRate;
        print("The book has been updated");
      }
    }
  }

  static void searchBook() {
    print("Enter the name of the book to search: ");
    String? title = stdin.readLineSync();
    for (var book in Book.BooksList) {
      if (book.title == title) {
        print("Book name " + "Book author " + "Book rate");
        print("    "+book.title + "      " + book.author + "      " + book.rate.toString());
      }
      else {
        print("The book is not found");
      }
    }
    
}
}