import 'package:flutter/material.dart';

class SecondTaskPage extends StatelessWidget {
  const SecondTaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Task Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            debugPrint('다운로드 시작!');
            await Future.delayed(const Duration(seconds: 1));
            debugPrint('초기화 중...');
            await Future.delayed(const Duration(seconds: 1));
            debugPrint('핵심 파일 로드 중...');
            await Future.delayed(const Duration(seconds: 3));
            debugPrint('다운로드 완료!');
          },
          child: const Text('print'),
        ),
      ),
    );
  }
}
