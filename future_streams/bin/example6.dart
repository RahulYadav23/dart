//Stream contorller

import 'dart:async';

void main() async {
  final streamController = StreamController();
  final stream = streamController.stream;

  // stream.listen(
  //   (event) {
  //     print("event $event");
  //   },
  //   onError: (error) {
  //     print(error);
  //   },
  //   onDone: () {
  //     print("closing stream contoller");
  //   },
  // );

  stream.forEach((data) {
    print('Data: $data');
  }).then((_) {
    print('Stream closed');
  });

  streamController.add("A");
  streamController.add(2);
  await Future.delayed(Duration(seconds: 2));
  streamController.sink.add(6);
  streamController.sink.add(9);
  // streamController.sink.addError("something went wrong");
  // streamController.sink.close();
  streamController.close();
}
