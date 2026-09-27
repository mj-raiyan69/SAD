enum Gender { male, female, others }

void main() {
  for (var g in Gender.values) {
    print(g);
  }

  // Access a single value
  Gender myGender = Gender.male;
  print('Selected: $myGender');
}