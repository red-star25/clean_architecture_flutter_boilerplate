import 'package:clean_architecture_bloc/core/constants/constants.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveHelper {
  static init() async {
    await Hive.initFlutter();
    await openBox();
  }

  static openBox() async {
    await Hive.openBox(kCounterBox);
    await Hive.openBox(kNewsBox);
  }

  static Box<dynamic> getCounterBox() {
    return Hive.box(kCounterBox);
  }

  static Box<dynamic> getNewsBox() {
    return Hive.box(kNewsBox);
  }
}
