import 'dart:async';

class Counter {
  final _countStreamController = StreamController<int>();

  Stream get countStream => _countStreamController.stream;

  int counter = 0;

  void incrementCounter() {
    final result = counter + 1;
    _countStreamController.add(result);
  }
}