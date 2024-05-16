import 'dart:isolate';

void main() async {
  ReceivePort rp = ReceivePort();

  Uri uri = Uri(
      path:
          "/Programming/Dart programs/isolates_understanding/bin/isolatefile.dart");
  await Isolate.spawnUri(uri, ["main file"], rp.sendPort);

  rp.listen((message) {
    print(message);
    rp.close();
  });
}
