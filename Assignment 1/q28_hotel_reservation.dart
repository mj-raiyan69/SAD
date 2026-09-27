// Q28: Hotel Reservation System using Guest, Room, Reservation classes
class Guest {
  String name;
  String contact;

  Guest(this.name, this.contact);
}

class Room {
  int roomNum;
  String type;
  double pricePerNight;
  bool isAvailable;

  Room(this.roomNum, this.type, this.pricePerNight, {this.isAvailable = true});
}

class Reservation {
  Guest guest;
  Room room;
  int nights;

  Reservation(this.guest, this.room, this.nights) {
    if (!room.isAvailable) {
      print('Room ${room.roomNum} is not available.');
      return;
    }
    room.isAvailable = false;
  }

  double totalCost() => room.pricePerNight * nights;

  void printReceipt() {
    print('--- Reservation Receipt ---');
    print('Guest: ${guest.name} (${guest.contact})');
    print('Room: ${room.roomNum} [${room.type}]');
    print('Nights: $nights');
    print('Total Cost: \$${totalCost().toStringAsFixed(2)}');
  }

  void checkout() {
    room.isAvailable = true;
    print('Room ${room.roomNum} checked out and is now available.');
  }
}

void main() {
  Guest guest = Guest('Raiyan', '+8801638688673');
  Room room = Room(101, 'Deluxe', 80.0);

  Reservation reservation = Reservation(guest, room, 3);
  reservation.printReceipt();
  reservation.checkout();
}
