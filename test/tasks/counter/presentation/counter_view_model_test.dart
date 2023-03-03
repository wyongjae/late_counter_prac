import 'package:flutter_test/flutter_test.dart';
import 'package:late_conter_prac/tasks/counter/domain/counter_repository.dart';
import 'package:late_conter_prac/tasks/counter/domain/double_counter_repository.dart';
import 'package:late_conter_prac/tasks/counter/domain/normal_counter_repository.dart';

void main() {
  test('숫자가 1씩 증가하여야 한다', () {
    final viewModel = FakeNormalCounterViewModel(NormalCounterRepository());

    viewModel.incrementCounter();

    expect(viewModel.counter, 1);
  });

  test('숫자가 2씩 증가하여야 한다', () {
    final viewModel = FakeDoubleCounterViewModel(DoubleCounterRepository());

    viewModel.incrementCounter();

    expect(viewModel.counter, 2);
  });
}

class FakeDoubleCounterViewModel implements CounterRepository {
  int counter = 0;

  FakeDoubleCounterViewModel(DoubleCounterRepository doubleCounterRepository);

  @override
  int incrementCounter() {
    return counter += 2;
  }
}

class FakeNormalCounterViewModel implements CounterRepository {
  int counter = 0;

  FakeNormalCounterViewModel(NormalCounterRepository normalCounterRepository);

  @override
  int incrementCounter() {
    counter++;
    return counter;
  }
}
