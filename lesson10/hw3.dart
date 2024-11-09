class Event {
  List<String>? attendees;

  Event({List<String>? initialAttendees}) : attendees = [...?initialAttendees];

  String? getAttendee(int index) {
    try{
      return attendees?[index];
    }catch(e){
      return null;
    }
  }

  @override
  String toString() => 'Event(attendees: $attendees)';
}

void main() {

  List<String>  listOfAttandees = ["Eshmat", "Toshmat"];
  Event event = Event(initialAttendees: listOfAttandees);

  print("Attendee at index 0: ${event.getAttendee(0)}");
  print("Attendee at index 2: ${event.getAttendee(2)}");
}