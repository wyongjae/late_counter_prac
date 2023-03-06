import 'package:flutter_test/flutter_test.dart';
import 'package:late_conter_prac/tasks/counter/domain/normal_counter_repository.dart';

void main() {
  test('숫자가 1 증가해야 한다', () {
    final repository = NormalCounterRepository();

    repository.incrementCounter();

    expect(repository.counter, 1);
  });
}
