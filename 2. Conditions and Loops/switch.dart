import 'dart:io';

void main(){
  print("Enter day of the week in numbers: ");
  var dayOfWeek = int.parse(stdin.readLineSync()!);
  switch(dayOfWeek){
    case 1:
      print("Monday");
      break;
      case 2:
      print("Tuesday");
      break;
      case 3:
      print("Wednesday");
      break;
      case 4:
      print("Thursday");
      break;
      case 5:
      print("Friday");
      break;
      case 6:
      print("Saturday"); 
      break;
      case 7:
      print("Sunday");
      break;
      default:
      print("Invalid day of the week");
  }
}