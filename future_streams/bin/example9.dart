import 'dart:async';

void main() {
  final stream = Stream.fromIterable([1, 2, 3, 4, 5]);

  final tranformer = DoubleTheIntegerValueTransformer();

  final output = stream.transform(tranformer);

  output.listen((event) {
    print(event);
  });
}

class DoubleTheIntegerValueTransformer extends StreamTransformerBase<int, int> {
  @override
  Stream<int> bind(Stream<int> stream) {
    final controller = StreamController<int>();

    stream.listen(
      (event) {
        controller.sink.add(event * 2);
      },
      onDone: controller.close,
      onError: controller.addError,
    );

    return controller.stream;
  }
}
