import 'package:flutter/material.dart';
import 'package:quiz_app/game_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen(String screen) {
    setState(() {
      activeScreen = screen;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen: switchScreen);

    if (activeScreen == 'game-screen') {
      setState(() {
        screenWidget = GameScreen(switchScreen: switchScreen);
      });
    }else if (activeScreen == 'start-screen'){
      setState(() {
        screenWidget = StartScreen(switchScreen: switchScreen);
      });
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 121, 91, 173),
                Color.fromARGB(255, 42, 20, 79),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          // child: const GameScreen(),
          child: screenWidget,
        ),
      ),
    );
  }
}
