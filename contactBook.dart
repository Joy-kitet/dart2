void main (){

}

class Contact{
  String name;
  String phoneNumber;
  String email;

  Contact(this.name, this.phoneNumber, this.email);

  void displayContact() {
    print('Name: $name, Phone: $phoneNumber, Email: $email');
  }

   void addContact(List<Contact> contacts) {
    contacts.add(this);
    print('Contact added: $name');

  }
}