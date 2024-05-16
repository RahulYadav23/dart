import 'dart:async';

void main() {
  final Stream1 = Stream.fromIterable([1, 2, 3, 4, 5, 6]);
  final Stream2 = Stream.fromIterable([1, 2, 3, 4, 5, 6]);

  StreamTransformer<int, int> t1 = StreamTransformer.fromHandlers(
    handleData: (data, sink) {
      sink.add(data * 2);
    },
  );

  StreamTransformer<int, int> t2 = StreamTransformer.fromBind(
    (stream) {
      return stream.map((event) => event * 3);
    },
  );

  final output1 = Stream1.transform(t1);
  output1.listen((event) {
    print(event);
  });

  final output2 = Stream2.transform(t2);

  output2.listen((event) {
    print(event);
  });
}
