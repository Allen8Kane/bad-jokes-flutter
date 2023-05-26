import 'package:f_lesson/answer.dart';
import 'package:f_lesson/buttons.dart';
import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _jokes = [
    {
      "question": "What does a baby computer call its father?",
      "answer": "Data"
    },
    {
      "question": "What's a pencil with two erasers called?",
      "answer": "Pointless"
    },
    {
      "question": "Why is the calendar always scared?",
      "answer": "Because it's days are numbered"
    },
    {"question": "What do you call a fish with no eye", "answer": "Fsh"},
  ];

  var jokeIndex = 0;

  changeJokeIndex(String direction) {
    setState(() {
      if (direction == "next") {
        if (jokeIndex < _jokes.length - 1) {
          jokeIndex++;
        } else {
          jokeIndex = 0;
        }
      } else if (direction == "previous") {
        if (jokeIndex > 0) {
          jokeIndex--;
        } else {
          jokeIndex = _jokes.length - 1;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Question(
                question: _jokes[jokeIndex]["question"] as String,
              ),
              Answer(
                answer: _jokes[jokeIndex]["answer"] as String,
              ),
              Buttons(changeJokeIndex: changeJokeIndex)
            ],
          ),
        ),
      ),
    );
  }
}
