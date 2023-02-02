import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class FourthTaskPage extends StatefulWidget {
  const FourthTaskPage({Key? key}) : super(key: key);

  @override
  State<FourthTaskPage> createState() => _FourthTaskPageState();
}

class _FourthTaskPageState extends State<FourthTaskPage> {
  var wordList = ['토끼', '거북이', '호랑이', '사자'];
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Fourth Task Page'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: ()  {
                setState(() {

                });
              },
              child: const Text('Random Word'),
            ),
            Text(wordList.sample(1).single),
          ],
        ),
      ),
    );
  }
}