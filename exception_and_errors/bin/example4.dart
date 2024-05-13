void main() async {
  DataBase db = DataBase();

  try {
   await db.readdata();
  await  db.close();
  } catch (error) {
    print(error);
  } finally {
    await db.close();
  }
}

class DataBase {
  bool _isdbOpen = false;

  Future<void> opneDB() async => Future.delayed(
        Duration(seconds: 1),
        () {
          print("DB is opne");
          _isdbOpen = true;
        },
      );

  Future<void> close() async => Future.delayed(
        Duration(seconds: 1),
        () {
          print("DB is close");
          _isdbOpen = false;
        },
      );

  Future<String> readdata() async {
    if (!_isdbOpen) {
      throw DBerror;
    }
    return Future.delayed(Duration(seconds: 1), () => "data");
  }
}

class DBerror implements Exception {
  @override
  String toString() {
    return "DB exception";
  }
}
