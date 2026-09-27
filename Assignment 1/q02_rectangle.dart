// Q2: Parameterized constructor + methods for area and perimeter
class Rectangle {
  double length;
  double width;

  Rectangle(this.length, this.width);

  double area() => length * width;
  double perimeter() => 2 * (length + width);
}

void main() {
  Rectangle r = Rectangle(5.0, 3.0);
  print('Area: ${r.area()}');
  print('Perimeter: ${r.perimeter()}');
}
 