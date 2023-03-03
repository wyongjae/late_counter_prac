import 'package:late_conter_prac/tasks/counter/domain/counter_repository.dart';

class DoubleCounterRepository implements CounterRepository {
  int counter = 0;

  @override
  int incrementCounter() {
    return counter += 2;
  }
}
