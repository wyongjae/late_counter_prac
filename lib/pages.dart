import 'package:flutter/material.dart';

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
            ElevatedButton(onPressed: () {}, child: const Text('Go to First Task Page')),
            ElevatedButton(onPressed: () {}, child: const Text('Go to Second Task Page')),
            ElevatedButton(onPressed: () {}, child: const Text('Go to Third Task Page')),
            ElevatedButton(onPressed: () {}, child: const Text('Go to Counter Page')),

          ],
        ),
      ),
    );
  }
}