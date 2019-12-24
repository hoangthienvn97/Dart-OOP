import 'dart:io';
class Dog {
  String name;
  void say() {
    print("Woofff. My name is ${name}");
  }
    String getName() {
    return name;
  }

  void setName(String name) {
    this.name = name;
  }

  Dog(String name) {
    this.name = name;
  }

}

main() {
  Dog dog = new Dog("Lucky");
  dog.say();
}
