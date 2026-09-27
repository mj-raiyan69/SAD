import 'dart:io';

void main(){
  print("Enter first name: ");
  String fname = stdin.readLineSync()!;
  print("Enter last name: ");
  String lname = stdin.readLineSync()!;
  String name = '$fname $lname';
  print("User's full name is : $name");
}