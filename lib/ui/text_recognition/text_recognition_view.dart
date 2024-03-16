import 'package:flutter/material.dart';

class TextRecognitionView extends StatelessWidget {
  const TextRecognitionView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          "Text Recognition",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
