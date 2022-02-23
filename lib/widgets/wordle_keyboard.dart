import 'package:flutter/material.dart';
import 'package:wordle_clone/widgets/wordle_key.dart';

class WordleKeyboard extends StatelessWidget {
  const WordleKeyboard({Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            WordleKey("Q"),
            WordleKey("W"),
            WordleKey("E"),
            WordleKey("R"),
            WordleKey("T"),
            WordleKey("Y"),
            WordleKey("U"),
            WordleKey("I"),
            WordleKey("O"),
            WordleKey("P"),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            WordleKey("A"),
            WordleKey("S"),
            WordleKey("D"),
            WordleKey("F"),
            WordleKey("G"),
            WordleKey("H"),
            WordleKey("J"),
            WordleKey("K"),
            WordleKey("L"),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (var i in "_ZXCVBNM<".split("")) WordleKey(i)
          ],
        ),
      ],
    );
  }
}