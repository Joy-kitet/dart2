import 'dart:io';

void main() {
  List<Contact> contactsList = [];

  while (true) {
    print('\n--- Contact Book ---');
    print('1. Add a contact');
    print('2. Display all contacts');
    print('3. Exit');
    stdout.write('Enter your choice: ');
    String? input = stdin.readLineSync();
    int? choice = int.tryParse(input ?? '');

    if (choice == 1) {
      addContact(contactsList);
    } else if (choice == 2) {
      displayContacts(contactsList);
    } else if (choice == 3) {
      print('Exiting... Goodbye!');
      break;
    } else {
      print('Invalid choice. Please enter 1, 2, or 3.');
    }
  }
}

class Contact {
  String name;
  String phoneNumber;
  String email;

  Contact(this.name, this.phoneNumber, this.email);

  void displayInfo() {
    print('Name: $name, Phone: $phoneNumber, Email: $email');
  }
}

void addContact(List<Contact> contacts) {
  stdout.write('Enter name: ');
  String? name = stdin.readLineSync();

  stdout.write('Enter phone number: ');
  String? phone = stdin.readLineSync();

  stdout.write('Enter email: ');
  String? email = stdin.readLineSync();

  if (name != null && phone != null && email != null) {
    Contact newContact = Contact(name, phone, email);
    contacts.add(newContact);
    print('Contact added successfully!');
  } else {
    print('Invalid input. Contact not added.');
  }
}

void displayContacts(List<Contact> contacts) {
  if (contacts.isEmpty) {
    print('No contacts found.');
  } else {
    print('\n--- Contact List ---');
    for (var contact in contacts) {
      contact.displayInfo();
      print('-----------------------');
    }
  }
}
