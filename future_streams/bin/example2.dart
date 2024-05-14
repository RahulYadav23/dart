//Future chaining
void main() async {
  final length = await getString().then((value) => getLength(value));
  // .then((value) => value);

  print('length of string $length');
}

Future<String> getString() async {
  await Future.delayed(const Duration(seconds: 1));
  return "rahul yadav";
}

Future<int> getLength(String name) async {
  await Future.delayed(const Duration(seconds: 1));
  return name.length;
}
