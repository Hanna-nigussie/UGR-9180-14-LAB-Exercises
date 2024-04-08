import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen One'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to Screen Two'),
          onPressed: () {
            // Use the named route to navigate to ScreenTwo
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}
