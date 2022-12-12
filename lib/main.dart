// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myquizzler/question.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 13, 14, 51),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scorkeeper = [];
  // List<String> questions = [
  //   'You can lead a cow down stairs but not up stairs.?',
  //   'Approximately one quarter of human bones are in the feet.?',
  //   'A slug\'s blood is green.?',
  //   'our state is kerala.?',
  // ];

  // List<bool> answers = [false, true, true, false];

  List<Question> questionBank =[

    Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
    Question(q: 'Approximately one quarter of human bones are in the feet.', a: true),
    Question(q: 'A slug\'s blood is green.', a: true),
    Question(q: 'our state is kerala.', a: false),
  ];

  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questionBank[questionNumber].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Color.fromARGB(255, 249, 248, 248),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 10, 100, 13))),
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.

                bool correctAnswer = questionBank[questionNumber].questionAnswer;

                if (correctAnswer == true) {
                  print('user got it right!');
                } else {
                  print('user got it wromg');
                }
                setState(() {
                  questionNumber++;
                });
                print(questionNumber);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 133, 12, 3))),
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                //The user picked false.

                bool correctAnswer = questionBank[questionNumber].questionAnswer;

                if (correctAnswer == false) {
                  print('user got it right!');
                } else {
                  print('user got it wromg');
                }
                setState(() {
                  questionNumber++;
                });
                print(questionNumber);
              },
            ),
          ),
        ),
        Row(
          children: scorkeeper,
        )
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/

