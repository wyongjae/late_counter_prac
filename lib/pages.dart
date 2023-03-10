import 'package:flutter/material.dart';
import 'package:late_conter_prac/tasks/counter/presentation/counter_page.dart';
import 'package:late_conter_prac/tasks/fourth_task_pages/fourth_task.dart';
import 'package:late_conter_prac/tasks/image_search/image_search_page.dart';

import 'tasks/first_task.dart';
import 'tasks/second_task.dart';
import 'tasks/third_task.dart';

class Pages extends StatelessWidget {
  const Pages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Lecture'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FirstTaskPage()),
                  );
                },
                child: const Text('First Task Page')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondTaskPage()),
                  );
                },
                child: const Text('Second Task Page')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ThirdTaskPage()),
                  );
                },
                child: const Text('Third Task Page')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FourthTaskPage()),
                  );
                },
                child: const Text('Fourth Task Page')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CounterPage(),
                    ),
                  );
                },
                child: const Text('Counter Page')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ImageSearchPage()),
                  );
                },
                child: const Text('Image Search Page')),
          ],
        ),
      ),
    );
  }
}
