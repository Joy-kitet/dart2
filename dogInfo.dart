void main(){
    Dog myDog = Dog('Buddy', 3, 'Golden Retriever');
    //myDog.showInfo();
    //myDog.bark();
    myDog.run();
    myDog.eat();
    print('Dog\'s age in human years: ${myDog.dogAgeInHumanYears()}');
}

class Dog {
    String name;
    int age;
    String breed;

    Dog(this.name, this. age, this.breed);

    void bark(){
        print('Woof!');
    }

    void showInfo() {
        print('Name: $name, Age: $age, Breed: $breed');
    }
    void run() {
        print('$name is running!');
    }

    void eat(){
        print('$name is eating!');
    }
    int dogAgeInHumanYears(){
      return age * 7;
    }

}