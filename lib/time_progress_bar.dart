import 'package:flutter/material.dart';

class TimeProgresssBar extends StatefulWidget {
  const TimeProgresssBar({
    super.key,
    required this.progressValue,
  });

  final double progressValue;

  @override
  State<TimeProgresssBar> createState() => _TimeProgresssBarState();
}

class _TimeProgresssBarState extends State<TimeProgresssBar> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(left: 10),
        child: LinearProgressIndicator(
          value: widget
              .progressValue, // Set the progress value between 0.0 and 1.0
          backgroundColor: Colors.grey,
          minHeight: 10,
          borderRadius: BorderRadius.circular(10),
          valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
        ),
      ),
    );
  }
}
