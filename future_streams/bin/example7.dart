void main() {
  final stream1 = Stream.fromIterable([1, 2, 3, 4]);
  final stream2 = Stream.fromIterable([5, 6, 7, 8]);

  Stream<int> mynumbers() async* {
    yield* stream1;
    yield* stream2;
  }

  mynumbers().listen((event) {
    print(event);
  });
}
