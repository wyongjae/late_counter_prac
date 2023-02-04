import 'package:flutter/material.dart';
import 'package:late_conter_prac/pages.dart';
import 'package:late_conter_prac/tasks/counter_task_pages/counter.dart';
import 'package:late_conter_prac/tasks/fourth_task_pages/loading.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => Counter()),
          ChangeNotifierProvider(create: (_) => Loading()),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const Pages(),
        ));
  }
}
