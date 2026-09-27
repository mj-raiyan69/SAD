// Q23: class-specific mixin restricted with "on"
class Document {
  String title;
  Document(this.title);
}

mixin Printable on Document {
  void display() {
    print('Printing document: $title');
  }
}

class Invoice extends Document with Printable {
  double amount;
  Invoice(String title, this.amount) : super(title);
}

class Report extends Document with Printable {
  String summary;
  Report(String title, this.summary) : super(title);
}

void main() {
  Invoice inv = Invoice('Invoice #001', 250.0);
  Report rep = Report('Q3 Report', 'Sales grew by 15%.');

  inv.display();
  rep.display();
}
