import 'package:flutter/material.dart';
import 'package:quiz_app/time_progress_bar.dart';

class TimeRemaining extends StatefulWidget {
  const TimeRemaining({super.key, required this.fetchImageFromApi, required this.start});

  final Function fetchImageFromApi;
  final double start;

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
          Row(
            children: [
              const Icon(
                Icons.alarm_on,
                color: Colors.white,
                size: 40,
              ),
              TimeProgresssBar(
                progressValue: widget.start/10,
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.white),
                children: <TextSpan>[
                  const TextSpan(
                    text: 'Remaining time ',
                  ),
                  TextSpan(
                    text: widget.start.round().toString(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(
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
