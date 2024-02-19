import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2),(){Navigator.push(context, MaterialPageRoute(builder: (context) => Questions(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children:[
          Center(
            child: Image.network(
                'https://www.tv2.no/quiz/assets/tv2-quiz-share.jpg'),
          ),
        ],
      ),
    );
  }
}
