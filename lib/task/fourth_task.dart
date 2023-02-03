import 'package:flutter/material.dart';
import 'package:late_conter_prac/util/random.dart';

class FourthTaskPage extends StatefulWidget {
  const FourthTaskPage({Key? key}) : super(key: key);

  @override
  State<FourthTaskPage> createState() => _FourthTaskPageState();
}

class _FourthTaskPageState extends State<FourthTaskPage> {
  bool isLoading = false;

  final List<String> results = [
    '호랑이',
    '멍멍이',
    '고양이',
    '인간',
  ];

  @override
  Widget build(BuildContext context) {
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
                   task();
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
    if (isLoading == true) {
      return const CircularProgressIndicator();
    }

    int number = getRandomNumber(3);

    return Text(results[number]);
  }

  Future<void> task() async {
    setState(() {
      isLoading = true;
    });

    await Future.delayed(const Duration(seconds: 3));

    setState(() {
      isLoading = false;
    });
  }
}