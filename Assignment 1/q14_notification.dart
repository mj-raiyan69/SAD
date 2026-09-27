// Q14: base class Notification + EmailNotification/SMSNotification overrides
class Notification {
  String displayNotification() => 'Generic notification';
}

class EmailNotification extends Notification {
  @override
  String displayNotification() => 'You have a new email notification.';
}

class SMSNotification extends Notification {
  @override
  String displayNotification() => 'You have a new SMS notification.';
}

void main() {
  List<Notification> notifications = [EmailNotification(), SMSNotification()];
  for (var n in notifications) {
    print(n.displayNotification());
  }
}
