// import 'dart:convert';
//
// import 'package:flutter/material.dart';
//
// class FourthTaskPage extends StatefulWidget {
//   const FourthTaskPage({Key? key}) : super(key: key);
//
//   @override
//   State<FourthTaskPage> createState() => _FourthTaskPageState();
// }
//
// class _FourthTaskPageState extends State<FourthTaskPage> {
//
//   Future<String> getData() async {
//     await Future.delayed(const Duration(seconds: 3));
//
//     Map<String, dynamic> json = jsonDecode();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Third Task Page'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//           },
//           child: const Text('print'),
//         ),
//       ),
//     );
//   }
// }
