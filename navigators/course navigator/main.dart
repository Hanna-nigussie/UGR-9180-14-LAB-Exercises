import 'package:flutter/material.dart';
import 'course 1.dart';
import 'course 2.dart';
import '../course navigator/course 1.dart';
import '../course navigator/course 2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenOne(),
        '/second': (context) => ScreenTwo(),
      },
    );
  }
}