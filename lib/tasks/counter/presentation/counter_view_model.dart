import 'package:flutter/material.dart';
import 'package:late_conter_prac/tasks/counter/domain/normal_counter_repository.dart';

class CounterViewModel with ChangeNotifier {
  final NormalCounterRepository repository;

  int counter = 0;

  CounterViewModel(this.repository);

  void getData() {
    counter = repository.incrementCounter();

    notifyListeners();
  }
}
