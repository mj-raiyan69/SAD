void main(){
  Map<String, dynamic> person = {
    'Name': 'Ali',
    'Address': 'Sylhet',
    'Age': 24,
    'Country': 'Bangladesh'
  };
  person['Country'] = 'UK';
  print("Keys and Values: ");
  person.forEach((key, value) => print('$key: $value'));
}