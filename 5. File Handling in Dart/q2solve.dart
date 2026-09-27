import 'dart:io';

void main() {
  File('hello.txt').writeAsStringSync('\nRafi', mode: FileMode.append);
  print('Friend\'s name appended to hello.txt');
}