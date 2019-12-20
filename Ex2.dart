import 'dart:io';
class Dog {
  String name = stdin.readLineSync();
  void say() {
    print("Woofff. My name is ${name}");
  }
}
main(){
  Dog dog = new Dog();
  dog.say();
}