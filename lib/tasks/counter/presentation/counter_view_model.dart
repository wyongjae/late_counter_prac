import 'package:flutter/material.dart';

class CounterViewModel with ChangeNotifier {
  int counter = 0;

  void incrementCounter() {
    counter += 2;
    notifyListeners();
  }
}
