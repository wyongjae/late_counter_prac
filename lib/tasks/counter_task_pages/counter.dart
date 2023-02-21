import 'dart:async';

class Counter {
  final _countStreamController = StreamController<int>()..add(0);

  Stream<int> get countStream => _countStreamController.stream;

  int counter = 0;

  void incrementCounter() {
    final result = counter++;
    _countStreamController.add(result);
  }
}