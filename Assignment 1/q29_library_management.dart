// Q29: Library Management System - Book, Member, Library
// Demonstrates encapsulation (private fields with getters), constructors,
// and methods for issuing/returning books.

class Book {
  final String title;
  final String author;
  final String isbn;
  bool _isIssued = false;

  Book(this.title, this.author, this.isbn);

  bool get isIssued => _isIssued;

  void _markIssued() => _isIssued = true;
  void _markReturned() => _isIssued = false;

  @override
  String toString() => '"$title" by $author (ISBN: $isbn)';
}

class Member {
  final String name;
  final int memberId;
  final List<Book> borrowedBooks = [];

  Member(this.name, this.memberId);

  void borrowBook(Book book) => borrowedBooks.add(book);
  void returnBook(Book book) => borrowedBooks.remove(book);
}

class Library {
  final String name;
  final List<Book> books = [];
  final List<Member> members = [];

  Library(this.name);

  void addBook(Book book) => books.add(book);
  void registerMember(Member member) => members.add(member);

  void issueBook(Member member, Book book) {
    if (book.isIssued) {
      print('Sorry, "${book.title}" is already issued.');
      return;
    }
    book._markIssued();
    member.borrowBook(book);
    print('${member.name} has issued "${book.title}".');
  }

  void returnBook(Member member, Book book) {
    if (!member.borrowedBooks.contains(book)) {
      print('${member.name} did not borrow "${book.title}".');
      return;
    }
    book._markReturned();
    member.returnBook(book);
    print('${member.name} has returned "${book.title}".');
  }
}

void main() {
  Library library = Library('City Library');

  Book b1 = Book('Clean Code', 'Robert C. Martin', 'ISBN001');
  Book b2 = Book('Dart in Action', 'Chris Buckett', 'ISBN002');
  library.addBook(b1);
  library.addBook(b2);

  Member m1 = Member('MJ', 1);
  library.registerMember(m1);

  library.issueBook(m1, b1);
  library.issueBook(m1, b1); // already issued, should warn
  library.returnBook(m1, b1);
}
