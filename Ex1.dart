import 'dart:io';
class Cat {
  String name;
  void say() {
    print("Moew. My name is ${name} ");
  }
}

main() {
  Cat cat = new Cat();
  stdout.write("Enter Cat's name : ");
  cat.name = stdin.readLineSync();
  cat.say();
}
