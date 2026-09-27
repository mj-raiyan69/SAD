import'dart:io';
void main(){
  List<String> tasks = [];
  while (true) {
    print("\n--- TO-DO APP ---");
    print("1. Add Task");
    print("2. Remove Task");
    print("3. View Tasks");
    print("4. Exit");
    print("Enter your choice: ");
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        print("Enter task: ");
        String task = stdin.readLineSync()!;
        tasks.add(task);
        print("Task added successfully!");
        break;
      case 2:
        print("Enter task to remove: ");
        String taskToRemove = stdin.readLineSync()!;
        if (tasks.remove(taskToRemove)) {
          print("Task removed successfully!");
        } else {
          print("Task not found!");
        }
        break;
      case 3:
        print("Tasks: ");
        for (String task in tasks) {
          print("- $task");
        }
        break;
      case 4:
        print("Exiting the app. Goodbye!");
        return;
      default:
        print("Invalid choice! Please try again.");
    }
}
}