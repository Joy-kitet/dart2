 void main() {
  Morning();
 }
 class Morning {
  //default constructor
  Morning(){
    print ("Good Morning!");

    Afternoon afternoon =Afternoon("Joy", 15);

    print("Name: ${afternoon.name} and Age: ${afternoon.age} ");


  }
 }

 // parameterized constructor
class Afternoon {
  String name;
  int age;
  Afternoon(this.name, this.age){

  }
}