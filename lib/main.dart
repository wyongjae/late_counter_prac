import 'package:flutter/material.dart';
import 'package:late_conter_prac/counter_page.dart';
import 'package:late_conter_prac/pages.dart';
import 'package:late_conter_prac/task/fourth_task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Pages(),
    );
  }
}