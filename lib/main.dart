import 'package:aamanigroup/Screens/WebPage.dart';
import 'package:flutter/material.dart';
Future<void> main() async {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Webpage(),
    );
  }
}
