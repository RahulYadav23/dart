void main() {
  final per = Stream.periodic(
    Duration(seconds: 2),
    (computationCount) => computationCount,
  ).take(5);

  per.listen((event) {
    print(event);
  });
}
