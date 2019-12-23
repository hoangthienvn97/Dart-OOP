import 'dart:io';

class Dog {
  String name;
  void say() {
    print("Woofff. My name is ${name}");
  }
}


main() {
  Dog dog = new Dog();
  stdout.write("Enter Dog's name : ");
  dog.name = stdin.readLineSync();
  dog.say();
}