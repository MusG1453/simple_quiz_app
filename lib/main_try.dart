import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.deepPurple,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/quiz-logo.png',
                  width: 200,
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Learn Flutter the fun way',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    textStyle: const TextStyle(color: Colors.white),
                  ),
                  child: const Text(
                    'Start Quiz',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
