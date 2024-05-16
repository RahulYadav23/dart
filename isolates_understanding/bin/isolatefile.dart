import 'dart:isolate';

void main(List<String> args, SendPort sendPort) {
  sendPort.send("hi from isolatefile ${args[0]}");
}
