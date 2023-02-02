import 'package:flutter/material.dart';

class ThirdTaskPage extends StatefulWidget {
  const ThirdTaskPage({Key? key}) : super(key: key);

  @override
  State<ThirdTaskPage> createState() => _ThirdTaskPageState();
}

class _ThirdTaskPageState extends State<ThirdTaskPage> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Task Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            for (int i = 0; i < 5; i++) {
              text = '${5 - i}';
              await Future.delayed(const Duration(seconds: 1));
              debugPrint(text);
            }
          },
          child: const Text('print'),
        ),
      ),
    );
  }
}
