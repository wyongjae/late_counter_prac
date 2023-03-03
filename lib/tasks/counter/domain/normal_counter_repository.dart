import 'package:late_conter_prac/tasks/counter/domain/counter_repository.dart';

class NormalCounterRepository implements CounterRepository {
  int counter = 0;

  @override
  int incrementCounter() {
    counter++;
    return counter;
  }
}
