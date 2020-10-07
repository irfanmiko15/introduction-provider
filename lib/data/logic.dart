import 'package:flutter/foundation.dart';

class Increment with ChangeNotifier {
  static int _counter = 0;
  int get counter => _counter;
  set counter(newValue) {
    _counter = newValue;
    notifyListeners();
  }
}
