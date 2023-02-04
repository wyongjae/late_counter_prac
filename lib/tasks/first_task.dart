import 'package:flutter/material.dart';

class FirstTaskPage extends StatelessWidget {
  const FirstTaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Task Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            debugPrint('hello');
            await Future.delayed(const Duration(seconds: 1));
            debugPrint('hello');
            await Future.delayed(const Duration(seconds: 1));
            debugPrint('hello');
            await Future.delayed(const Duration(seconds: 1));
          },
          child: const Text('print'),
        ),
      ),
    );
  }
}