import 'package:flutter/material.dart';
import 'package:simple_quiz_app/questions_screen.dart';
import 'package:simple_quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen; // ?1
  var activeScreen = 'start-screen'; // ?2

  // @override // ?1
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      // activeScreen = const QuestionsScreen(); // ?1
      activeScreen = 'questions-screen'; // ?2
    });
  }

  @override
  Widget build(context) {
    // final screenWidget = activeScreen == 'start-screen' // ?2
    //     ? StartScreen(switchScreen)
    //     : const QuestionsScreen();
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = const QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          // child: activeScreen, // ?1
          child: screenWidget, // ?2
        ),
      ),
    );
  }
}
