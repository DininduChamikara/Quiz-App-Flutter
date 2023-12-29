import 'package:flutter/material.dart';
import 'package:quiz_app/number_button.dart';

class AnswerInput extends StatefulWidget {
  const AnswerInput({super.key, required this.onSubmit});

  final Function(int pressedButton) onSubmit;

  @override
  State<AnswerInput> createState() => _AnswerInputState();
}

class _AnswerInputState extends State<AnswerInput> {
  int pressedButton = 100; // unreliable value

  void pressedButtonChange(int num) {
    setState(() {
      pressedButton = num;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 94, 52, 145),
      ),
      child: Center(
        child: Wrap(
          spacing: 30,
          runSpacing: 20,
          children: [
            NumberButton(
                num: 1,
                pressedButton: pressedButton,
                pressedButtonChange: pressedButtonChange),
            NumberButton(
                num: 2,
                pressedButton: pressedButton,
                pressedButtonChange: pressedButtonChange),
            NumberButton(
                num: 3,
                pressedButton: pressedButton,
                pressedButtonChange: pressedButtonChange),
            NumberButton(
                num: 4,
                pressedButton: pressedButton,
                pressedButtonChange: pressedButtonChange),
            NumberButton(
                num: 5,
                pressedButton: pressedButton,
                pressedButtonChange: pressedButtonChange),
            NumberButton(
                num: 6,
                pressedButton: pressedButton,
                pressedButtonChange: pressedButtonChange),
            NumberButton(
                num: 7,
                pressedButton: pressedButton,
                pressedButtonChange: pressedButtonChange),
            NumberButton(
                num: 8,
                pressedButton: pressedButton,
                pressedButtonChange: pressedButtonChange),
            NumberButton(
                num: 9,
                pressedButton: pressedButton,
                pressedButtonChange: pressedButtonChange),
            NumberButton(
                num: 0,
                pressedButton: pressedButton,
                pressedButtonChange: pressedButtonChange),
            Container(
              width: 170,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromARGB(255, 233, 30, 203),
              ),
              child: TextButton(
                onPressed: () {
                  widget.onSubmit(pressedButton);
                  pressedButtonChange(100);
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    shadows: <Shadow>[
                      Shadow(
                        blurRadius: 8.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
