class Contact {
  String name;
  String phoneNumber;
  String? email;

  Contact({required this.name, required this.phoneNumber, this.email});

  @override
  String toString() =>
      'Contact(name: $name, phoneNumber: $phoneNumber, email: ${email ?? "email is not given"})';
}

class Phonebook {
  List<Contact>? contacts;

  void addContact(Contact contact) {
    contacts ??= [];
    contacts!.add(contact);
  }

  @override
  String toString() => 'Phonebook(contacts: $contacts)';
}

void main() {
  Phonebook phonebook = Phonebook();

  Contact contact1 = Contact(name: 'Eshmat', phoneNumber: '546546547654');

  phonebook.addContact(contact1);

  print(phonebook);
  print(contact1);
}

