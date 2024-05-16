import 'dart:isolate';

Future<int> heavytask() async {
  int result = 0;
  for (int i = 0; i < 100000000; i++) {
    result += i;
  }

  return result;
}

void main() async {
  final result = await Isolate.run(heavytask);

  print(result);
}
