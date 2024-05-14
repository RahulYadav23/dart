//learn about future

import 'dart:async';

void main() async {
  print(await getName());
  print(await phoneNumber());
  print(await getage());

}


Future<String> getName() async
{
  return "Rahul Yadav";
}


Future<String> phoneNumber() {
  return Future.value("7022345923");
}

Future<int> getage() async => Future.delayed(Duration(seconds: 1),()=>12);