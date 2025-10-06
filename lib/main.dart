import 'package:flutter/material.dart';
import 'Home_page.dart';
/*
Requirements

Create a Map<String, String> of questions and answers. Example:

final Map<String, String> questions = {

"What is the capital of France?": "Paris",
"What is the capital of Japan?": "Tokyo",
"What is the capital of Brazil?": "Brasília",

// ...

· Display one random question from the map in a Text widget.
· Provide a TextField for the answer.
· Add two ElevatedButtons:
1. Check Answer > If the answer matches the correct one, show "Correct!"
(green), otherwise "Wrong!" (red) in a Text widget.
2. Next Question > Select another random question from the map and
display it (clear previous answer & feedback).
*/
void main() {
  runApp( HOME());
}


class HOME extends StatelessWidget {
  HOME({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: hO(),
    );
  }
}

