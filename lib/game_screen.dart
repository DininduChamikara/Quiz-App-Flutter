import 'package:flutter/material.dart';
import 'package:quiz_app/answer_input.dart';
import 'package:quiz_app/game_header.dart';
import 'package:quiz_app/time_remaining.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  String imageUrl = "";
  late int solution;
  int score = 0;
  int quizNo = 0;

  @override
  void initState() {
    fetchImageFromApi();
    super.initState();
  }

  void onSubmit(int pressedButton) {
    if (imageUrl != "") {
      if (pressedButton == solution) {
        setState(() {
          score++;
        });
      }
      fetchImageFromApi();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          GameHeader(score: score, quizNo: quizNo),
          const TimeRemaining(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                imageUrl,
              ),
            ),
          ),
          AnswerInput(
            onSubmit: onSubmit,
          ),
        ],
      ),
    );
  }

  void fetchImageFromApi() async {
    const apiUrl = 'https://marcconrad.com/uob/smile/api.php';

    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        setState(() {
          imageUrl = responseData['question'];
          solution = responseData['solution'];
          quizNo++;
        });
      } else {
        print(
            'Failed to fetch image from API. Status code: ${response.statusCode}');
      }
    } catch (error) {
      print('Error fetching image from API: $error');
    }
  }
}
