import 'package:flutter/material.dart';

class WordleKey extends StatelessWidget {
  final String letter;
  const WordleKey(this.letter, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget keyCap;
    double width = 60;
    if (letter == "_") {
      keyCap = Icon(Icons.keyboard_return, size: 20, );
    } else if (letter == "<"){
      keyCap = Icon(Icons.backspace_outlined, size: 20, );
    } else {
      keyCap = Text(
        letter,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      );
    }

    return Container(
      width: 30,
      height: 60,
      alignment: Alignment.center,
      // padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Color.fromARGB(44, 44, 44, 44)
      ),
      child: keyCap,
    );
  }
}
