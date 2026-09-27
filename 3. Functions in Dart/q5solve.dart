import 'dart:io';
import 'dart:math';
double circleArea(double radius){
  return pi*radius*radius;
}

void main(){
  print("Enter the radius of the circle: ");
  double radius = double.parse(stdin.readLineSync()!);
  print(circleArea(radius));
}