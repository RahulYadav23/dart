void main(){
    try {
      createPersonmethod(age: 30);
      createPersonmethod(age: -1);
      createPersonmethod(age: 141);
    } on InvalidAgeException catch(error)
    {
      print(error);

    }
}
void createPersonmethod({required int age}){
   try {
             print(Person(age: age).age);
   } on InvalidAgeException {
      rethrow;
   }  catch (exception)
   {
    print(exception);
   }
}




class Person {
  final int age;
  Person({required this.age})
  {
    if(age<0)
    {
      throw InvalidAgeException(age: age, message: "Age can't be less than 0");
    } else if(age>140)
    {
      throw InvalidAgeException(age: age, message: "Age Can't be more than 140");
    }
  }
}



class InvalidAgeException implements Exception {
   final int age;
   final String message;

   InvalidAgeException({required this.age,required this.message});
   

  @override
  String toString() {
      return "Invalid age $age and $message";
  }
}