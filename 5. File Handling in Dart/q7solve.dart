import 'dart:io';

void main() {
  final file = File('students.csv');

  // Write CSV data
  final data = '''
Name,Age,Address
MJ,21,Sylhet
Rafi,22,Dhaka
Nabil,20,Chittagong
''';
  file.writeAsStringSync(data);
  print('Data written to students.csv');

  // Read and parse CSV
  final lines = file.readAsLinesSync();
  print('\n--- Student Records ---');
  for (int i = 1; i < lines.length; i++) {
    if (lines[i].trim().isEmpty) continue;
    final fields = lines[i].split(',');
    print('Name: ${fields[0]}, Age: ${fields[1]}, Address: ${fields[2]}');
  }
}