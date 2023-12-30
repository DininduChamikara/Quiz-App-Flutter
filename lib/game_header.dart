import 'package:flutter/material.dart';

class GameHeader extends StatelessWidget {
  const GameHeader({super.key, required this.score, required this.quizNo, required this.switchScreen});

  final int score;
  final int quizNo;

  final Function (String screen) switchScreen;

  @override
  Widget build(BuildContext context) {

    String scoreStr = score.toString();
    String quizNoStr = quizNo.toString();

    return Center(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 30, bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: const Color.fromARGB(255, 233, 30, 203),
          boxShadow: const [
            BoxShadow(
              blurRadius: 4,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 80,
                ),
                const Center(
                  child: Row(
                    children: [
                      Text(
                        'Welcome',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(0, 1.0),
                              blurRadius: 8.0,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Chalana...',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(0, 1.0),
                              blurRadius: 8.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 80,
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 205, 133, 203),
                    ),
                    child: Transform.rotate(
                      angle: 180 * (3.141592653589793 / 180),
                      child: IconButton(
                        onPressed: () {
                          switchScreen('start-screen');
                        },
                        icon: const Icon(
                          Icons.logout,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Quiz No : ',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        quizNoStr,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 29, 218, 57),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        'Score : ',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        scoreStr,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 29, 218, 57),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
