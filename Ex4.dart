library faker.example;

import 'dart:math';
import 'package:faker/faker.dart';

abstract class Animal {

  String name;
  void say() {
    print("Grr.....");
  }

  String getClass() {
    return "Animal";
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

  @override
  String getClass() {
    return "Cat";
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);
  void say() {
    print("Woofff. My name is ${name}");
  }

  @override
  String getClass() {
    return "Dog";    
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
  var list = generate(20);

  var comparator = (Animal a, Animal b) {
    if (a.getClass() == b.getClass()) {
      return a.name.compareTo(b.name);
    }

    return b.getClass().compareTo(a.getClass());
  };

  list.sort(comparator);

  for (var item in list) {
    if (item is Cat) {
      print("CAT");
    } else if (item is Dog) {
      print("DOG");
    }
    item.say(); 
  }
}
