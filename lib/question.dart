import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;

  const Question({
    Key? key,
    required this.question,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 5, 15, 45),
      child: Text(
        question,
        style: const TextStyle(
          fontSize: 27.5,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
