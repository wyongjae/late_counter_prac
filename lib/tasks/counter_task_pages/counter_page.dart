import 'package:flutter/material.dart';
import 'package:late_conter_prac/tasks/counter_task_pages/counter.dart';

class CounterPage extends StatefulWidget {
  final Counter counter;

  const CounterPage({
    Key? key,
    required this.counter,
  }) : super(key: key);

  @override
  CounterPageState createState() => CounterPageState();
}

class CounterPageState extends State<CounterPage> {
  int _count = 0;

  @override
  void initState() {
    widget.counter.countStream.listen((count) {
      setState(() {
        _count = count;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_count',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          widget.counter.incrementCounter();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
