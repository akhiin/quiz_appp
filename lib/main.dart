import 'package:flutter/material.dart';
import 'package:quiz_app/splashscreen.dart';

void main() {
  runApp(const Quiz_app());
}

class Quiz_app extends StatefulWidget {
  const Quiz_app({Key? key}) : super(key: key);

  @override
  State<Quiz_app> createState() => _Quiz_appState();
}

class _Quiz_appState extends State<Quiz_app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),

    );
  }
}
