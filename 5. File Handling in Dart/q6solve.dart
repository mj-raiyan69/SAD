import 'dart:io';

void main() {
  final file = File('hello_copy.txt');
  file.createSync();
  print('hello_copy.txt created');

  if (file.existsSync()) {
    file.deleteSync();
    print('hello_copy.txt deleted');
  }
}