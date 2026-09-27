import 'dart:io';

void main() {
  File('hello.txt').writeAsStringSync('MJ');
  print('Name written to hello.txt');
}