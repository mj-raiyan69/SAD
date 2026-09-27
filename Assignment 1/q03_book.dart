// Q3: Parameterized constructor and display
class Book {
  String title;
  String subtitle;
  String author;

  Book(this.title, this.subtitle, this.author);

  void displayInfo() {
    print('Title: $title');
    print('Subtitle: $subtitle');
    print('Author: $author');
  }
}

void main() {
  Book b = Book('Dart Programming', 'A Beginner\'s Guide', 'MJ Raiyan');
  b.displayInfo();
}
