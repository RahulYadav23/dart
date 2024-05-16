import 'dart:isolate';

void main() async {
  ReceivePort receivePort = ReceivePort();
  await Isolate.spawn(isolateFunction, receivePort.sendPort);

  receivePort.listen((message) {
    print(message);

    receivePort.close();
  });
}

void isolateFunction(SendPort sendPort) {
  sendPort.send("Hello world from isolates");
}
