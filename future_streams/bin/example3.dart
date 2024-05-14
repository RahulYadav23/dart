//streams

void main() async {
  await for (final value in creatingIntStream()) {
    print(value);
  }

  await for (final value in generatingChar("name")) {
    print(value);
  }
}

//creating a streams by asynchronous generator function
Stream<int> creatingIntStream() async* {
  for (int i = 0; i < 10; i++) {
    yield i;
  }
}

Stream<String> generatingChar(String name) async* {
  for (int i = 0; i < name.length; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield name[i];
  }
}
