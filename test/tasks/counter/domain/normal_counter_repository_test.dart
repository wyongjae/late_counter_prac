import 'package:flutter_test/flutter_test.dart';
import 'package:late_conter_prac/tasks/counter/domain/normal_counter_repository.dart';

void main() {
  test('숫자가 1 증가해야 한다', () {
    final viewModel = NormalCounterRepository();

    viewModel.incrementCounter();

    expect(viewModel.counter, 1);
  });
}
