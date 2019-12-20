import 'dart:io';

abstract class Animal {
  String name;
  void say() {
    print("Grr.....");
  }

  String getName() {
    return name;
  }

  void setName(String name) {
    this.name = name;
  }

  Animal(String name) {
    this.name = name;
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);
  void say() {
    print("Moew. My name is ${name}");
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);
  void say() {
    print("Woofff. My name is ${name}");
  }
}

main() {
  Animal a = new Cat("Thien");
  a.say();
  Animal b = new Dog("Chung");
  b.say();
}
