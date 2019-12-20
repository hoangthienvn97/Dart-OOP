import 'dart:io';
class Cat {
  String name = stdin.readLineSync();
  void say() {
    print("Moew. My name is ${name} ");
  }
}
main(){
  Cat cat = new Cat();
  cat.say();
}