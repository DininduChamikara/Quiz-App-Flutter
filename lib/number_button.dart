import 'package:flutter/material.dart';

class NumberButton extends StatefulWidget {
  const NumberButton(
      {super.key, required this.num, required this.pressedButton, required this.pressedButtonChange});

  final int num;
  final int pressedButton;
  final Function(int num) pressedButtonChange;

  @override
  State<NumberButton> createState() => _NumberButtonState();
}

class _NumberButtonState extends State<NumberButton> {
  @override
  Widget build(BuildContext context) {
    String buttonText = widget.num.toString();
    bool isPressed = false;
    int num = widget.num;
    int pressedButton = widget.pressedButton;

    if (num == pressedButton) {
      isPressed = true;
    }

    return Container(
      width: 70,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.pink,
            style: isPressed ? BorderStyle.solid : BorderStyle.none),
        borderRadius: BorderRadius.circular(5),
        color:
            isPressed ? Colors.green : const Color.fromARGB(255, 241, 231, 231),
      ),
      child: TextButton(
        onPressed: () {
          widget.pressedButtonChange(num);
        },
        child: Text(
          buttonText,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
