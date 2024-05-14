import 'dart:async';

void main() async {
  final stream = Stream.fromIterable([1, 2, 3, 4, 5, 6, 7]);

  final fromfuture = Stream.fromFuture(
      Future.delayed(Duration(seconds: 1), () => "Hello world"));

  final fromfutures = Stream.fromFutures([
    Future.delayed(Duration(seconds: 1), () => "Hello Rahul"),
    Future.delayed(Duration(seconds: 1), () => "Hello karan"),
    Future.delayed(Duration(seconds: 1), () => "Hello raju")
  ]);

  await for (final value in stream) {
    print(value);
  }

  await for (final value in fromfuture) {
    print(value);
  }

  fromfutures.listen((event) {
    print(event);
  });
}
