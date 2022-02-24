import 'package:flutter/material.dart';

class WordleTitleBar extends StatelessWidget {
  const WordleTitleBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Container(
            child: Text("high"),
            margin: EdgeInsets.fromLTRB(0, 0, 30, 0),
          ),

          Text(
            "WORDLE",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
            ),
          ),

          Container(
            child: Text("4"),
            margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
          )
        ],
      )
    );
  }
}
