// ignore_for_file: public_member_api_docs, sort_constructors_first
class Room {
  static int _id = 0;
  String type;
  double price;
  bool isBooked = false;

  Room({
    required this.type,
    required this.price,
  }){
    _id ++;
  }

  void bookRoom(){
    isBooked = true;
  }

  void releaseRoom(){
    isBooked = false;
  }

  int get getRoomId => _id;

  @override
  String toString() => 'ROOM NUMBER: $_id\tROOM TYPE: $type\tPRICE: $price, ISBOOKED?: $isBooked';
}

class Guest {
  String name;
  DateTime birthDate;
  Room? roomBooked;

  Guest({
    required this.name,
    required this.birthDate,
  });

  int get getAge => DateTime.now().year - birthDate.year;

  void bookRoom(Room room){
    roomBooked = room;
  }
}

class Booking {
  Guest guest;
  Room room;
  DateTime bookingDate;
  int nights;
  List<Room> roomsList = [];

  Booking({
    required this.guest,
    required this.room,
    required this.bookingDate,
    required this.nights,
  }){
    roomsList.add(room);
  }

  void allRoomsInfo(List<Room> allRooms){
    for(int i = 0; i < allRooms.length; i++){
      room.toString();
    }
  }

  double calculateTotalPrice(){
    return nights * room.price;
  }

  void printBookingDetails(){
    print("""
NAME:        ${guest.name}
ROOM:        ${room.toString()}
NIGHTS:      ${nights}
BOOKED TIME: ${bookingDate}
TOTAL PRICE: ${calculateTotalPrice()}

""");}

}


void main(){
  Room room1 = Room(type: "Deluxe", price: 50);
  print(room1.getRoomId);

  Room room2 = Room(type: "Standart", price: 40);
  print(room2.getRoomId);

  Room room3 = Room(type: "Deluxe", price: 50);
  print(room3.getRoomId);

  Guest guest = Guest(name: "Ali", birthDate: DateTime(2000, 4, 12));

}