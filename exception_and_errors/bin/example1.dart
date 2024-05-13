void main() {
  tryCreatingPerson(age: 20);
  print("-----------------");
    tryCreatingPerson(age: -1);
    print("-----------------");
      tryCreatingPerson(age: 141);
      print("-----------------");
}

void tryCreatingPerson({int age = 0}) {
  try {
    print(Person(age: age).age);
  } catch (exception) {
    print(exception.runtimeType);
    print(exception);
  }
}

class Person {
  final int age;
  Person({required this.age}) {
    if (age < 0) {
      throw Exception("Age cannot be negative");
    }
    if (age > 140) {
      throw "Age cannot be more than 140";
    }
  }
}
