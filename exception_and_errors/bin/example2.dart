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
  } on InvalidAgeException catch (exception) {
    print(exception.runtimeType);
    print(exception);
  } catch (exception)
  {
    print(exception.runtimeType);
    print(exception);
  }
}

class Person {
  final int age;
  Person({required this.age}) {
    if (age < 0) {
      throw InvalidAgeException(age: age,message: "Age cannot be negative");
    }
    if (age > 140) {
      throw InvalidAgeException(age: age,message: "Age cannot be more than 140");;
    }
  }
}






class InvalidAgeException implements Exception {
  final int age;
  final String message;

  InvalidAgeException({required this.age, required this.message});

  @override
  String toString() {
    return "Invalid age $age  $message";
  }
}
