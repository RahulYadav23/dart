import 'dart:async';

void main() {
  final user = userID().asyncExpand(userData);

  user.listen((event) {
    print(event);
  });
}

Stream<int> userID() async* {
  for (int i = 0; i < 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

Stream<String> userData(int userID) async* {
  await Future.delayed(Duration(seconds: 1));
  yield "User Data is $userID";
}
