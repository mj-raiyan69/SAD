import 'dart:io';

void main() {
  for (int i = 1; i <= 100; i++) {
    File('file_$i.txt').createSync();
  }
  print('100 files created');
}
