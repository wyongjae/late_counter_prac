import 'package:flutter/material.dart';
import 'package:late_conter_prac/tasks/fourth_task_pages/build_result.dart';
import 'package:late_conter_prac/tasks/fourth_task_pages/loading.dart';
import 'package:provider/provider.dart';

class FourthTaskPage extends StatelessWidget {
  const FourthTaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loading = Provider.of<Loading>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fourth Task Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: ()  {
                  loading.delay();
                },
                child: const Text('당신의 전생은?')),
            const SizedBox(
              height: 5,
            ),
            const BuildResult(),
          ],
        ),
      ),
    );
  }
}