import 'dart:async';

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

  @override
  void initState() {
    widget.counter.countStream;
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
            StreamBuilder<int>(
                stream: widget.counter.countStream,
                builder: (context, snapshot) {
                  return Text(
                    '${snapshot.data}',
                    style: Theme.of(context).textTheme.headline4,
                  );
                })
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