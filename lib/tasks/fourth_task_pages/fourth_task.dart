import 'package:flutter/material.dart';
import 'package:late_conter_prac/tasks/fourth_task_pages/loading.dart';
import 'package:late_conter_prac/util/random.dart';
import 'package:provider/provider.dart';

class FourthTaskPage extends StatefulWidget {
  const FourthTaskPage({Key? key}) : super(key: key);

  @override
  State<FourthTaskPage> createState() => _FourthTaskPageState();
}

class _FourthTaskPageState extends State<FourthTaskPage> {
  final List<String> results = [
    '호랑이',
    '멍멍이',
    '고양이',
    '인간',
  ];

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
                  loading.task();
                },
                child: const Text('당신의 전생은?')),
            const SizedBox(
              height: 5,
            ),
            _buildResult(),
          ],
        ),
      ),
    );
  }

  Widget _buildResult() {
    final loading = Provider.of<Loading>(context);
    if (loading.isLoading == true) {
      return const CircularProgressIndicator();
    }

    int number = getRandomNumber(3);

    return Text(results[number]);
  }
}