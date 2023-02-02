import 'package:flutter/material.dart';
import 'package:late_conter_prac/counter_page.dart';
import 'package:late_conter_prac/task/first_task.dart';
import 'package:late_conter_prac/task/fourth_task.dart';
import 'package:late_conter_prac/task/second_task.dart';
import 'package:late_conter_prac/task/third_task.dart';

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
                child: const Text('Go to First Task Page')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondTaskPage()),
                  );
                },
                child: const Text('Go to Second Task Page')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ThirdTaskPage()),
                  );
                },
                child: const Text('Go to Third Task Page')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CounterPage()),
                  );
                },
                child: const Text('Go to Counter Page')),
            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => const FourthTaskPage()),
            //       );
            //     },
            //     child: const Text('Go to Fourth Task Page')),
          ],
        ),
      ),
    );
  }
}
