import 'package:flutter/material.dart';
import 'package:quiz_app/time_progress_bar.dart';

class TimeRemaining extends StatefulWidget {
  const TimeRemaining({super.key});

  @override
  State<TimeRemaining> createState() => _TimeRemainingState();
}

class _TimeRemainingState extends State<TimeRemaining> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Row(
            children: [
              Icon(Icons.alarm_on, color: Colors.white, size: 40,),
              TimeProgresssBar(progressValue: 0.5,),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.white),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Remaining time ',
                  ),
                  TextSpan(
                    text: '10',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: ' seconds',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
