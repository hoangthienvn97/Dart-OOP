library faker.example;

import 'dart:math';

import 'package:faker/faker.dart';

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

List<Animal> generate(int n) {
  var faker = new Faker();
  var random = new Random();
  var list = new List<Animal>();
  for (int i = 0; i < n; i++) {
    if (random.nextBool()) {
      var cat = new Cat(faker.person.name());
      list.add(cat);
    } else {
      var dog = new Dog(faker.person.name());
      list.add(dog);
    }
  }

  return list;
}

main() {
  var list = generate(10);
  for (var item in list) {
    item.say();
  }
}
