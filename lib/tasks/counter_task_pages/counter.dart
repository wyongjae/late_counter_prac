import 'dart:async';

class Counter {
  final _countStreamController = StreamController<int>()..add(0);

  Stream<int> get countStream => _countStreamController.stream;

  int counter = 0;

  void incrementCounter() {
    final result = counter+=2;
    _countStreamController.add(result);
  }
}