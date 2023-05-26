import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final Function(String) changeJokeIndex;

  const Buttons({
    Key? key,
    required this.changeJokeIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: FloatingActionButton(
            onPressed: () {
              changeJokeIndex("previous");
            },
            backgroundColor: Colors.orange,
            child: const Icon(
              Icons.arrow_left_rounded,
              size: 40,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: FloatingActionButton(
            onPressed: () {
              changeJokeIndex("next");
            },
            backgroundColor: Colors.orange,
            child: const Icon(
              Icons.arrow_right_rounded,
              size: 40,
            ),
          ),
        ),
      ],
    );
  }
}
