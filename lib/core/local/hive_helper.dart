import 'package:hive_flutter/hive_flutter.dart';

class HiveHelper {
  static init() async {
    await Hive.initFlutter();
    await openBox();
  }

  static openBox() async {}

  // static Box<dynamic> getCounterBox() {
  //   return Hive.box(kCounterBox);
  // }
}
