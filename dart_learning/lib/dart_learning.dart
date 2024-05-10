void main(){
  //print statments
  print("hello world");
  //varibales and types
  //decalaring varibles with var keyword
  var name  = "rahul";
  print(name);
  // cant assign name with now int as its type is already inferred now it can store only string values
  // name = 5;

  //declaring with mention their type
  String name2 = "rahul";
  int age  = 5;
  print("the name is $name2 and the age is $age");

  //using object for variable
  Object name3 = "rahul";
  name3 = 3;
  //as all the types are decent of object we can use object as type , but the issue is it can we reassign to any other data 
  //as we can see name3 assgin with 3 which is type of int
  print("the value hold by name is $name3"); 

  dynamic name4 = "rahul";
  name4 =45;
  // dynamic also behave like object 

  final date = DateTime.now();
  const pi = 3.141;
  print(date.runtimeType.toString()); //runtime is is property of object class

  int number =5;
  int double =6;
  String char  = name[0];

  StringBuffer createNewString = StringBuffer();
  for(int i=0;i<100;i++)
  {
      createNewString.write("$i ");
  }

  print(createNewString.toString());

  int envvalue = int.fromEnvironment("age",defaultValue: -1);
  print("value form env $envvalue");

}

bool isEqual(int a , int b)=>a==b;
