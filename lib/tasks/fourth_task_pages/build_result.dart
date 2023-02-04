import 'package:flutter/material.dart';
import 'package:late_conter_prac/tasks/fourth_task_pages/loading.dart';
import 'package:late_conter_prac/util/random.dart';
import 'package:provider/provider.dart';

class BuildResult extends StatelessWidget {
  const BuildResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loading = Provider.of<Loading>(context);

    int number = getRandomNumber(3);

    final List<String> results = [
      '호랑이',
      '멍멍이',
      '고양이',
      '인간',
    ];

    return loading.isLoading
        ? const CircularProgressIndicator()
        : Text(results[number]);
  }
}