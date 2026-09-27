// Q13: superclass Shape, subclasses Rectangle and Circle with own area()
class Shape {
  double area() => 0.0;
}

class Rectangle extends Shape {
  double length, width;
  Rectangle(this.length, this.width);

  @override
  double area() => length * width;
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double area() => 3.14159 * radius * radius;
}

void main() {
  Shape r = Rectangle(4, 5);
  Shape c = Circle(3);

  print('Rectangle area: ${r.area()}');
  print('Circle area: ${c.area()}');
}
