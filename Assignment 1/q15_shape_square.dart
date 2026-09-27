// Q15: abstract class with abstract method
abstract class Shape {
  double calculateArea();
}

class Square extends Shape {
  double side;
  Square(this.side);

  @override
  double calculateArea() => side * side;
}

void main() {
  Square sq = Square(4);
  print('Square area: ${sq.calculateArea()}');
}
