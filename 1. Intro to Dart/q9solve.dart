import 'dart:io';

void main(){
  print("Enter a string = ");
  String s = stdin.readLineSync()!;
  String noSpaces = s.replaceAll(' ', "");
  print("String without spaces: $noSpaces");

}