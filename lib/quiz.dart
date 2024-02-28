import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {

  List _question = [
    Quiz('Cheesecake comes from Italy', false),
    Quiz('Vanilla is the worlds most expensive spice', false),
    Quiz('A potato was the first vegetable to be planted on the space shuttle.', true),
    Quiz('Pineapples grow on trees', false),
    Quiz('Hawaiian pizza comes from Canada.', true),
    Quiz('French fries originated from France.', false),
    Quiz('Pizza was the first food consumed in space.', false),
    Quiz('Mcdonalds has the most restaurants by location in the United States.', false),
    Quiz('Pepperoni is the most popular pizza topping in the US.', true),

  ];

  int q_no=0;
  void next(){
    if (q_no<_question.length){
      q_no++;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 600,
              height: 200,
              alignment: Alignment.center,
              child: Text(
              _question[q_no].que,
              style: TextStyle(fontSize: 25,color: Colors.black),),
              decoration: BoxDecoration(color: Colors.blue[50]),
            ),
            SizedBox(height: 20,),
            TextButton(onPressed: () {
              setState(() {
                next();
              });
            }, child: Text('YES' ,style: TextStyle(fontSize: 15,color: Colors.black),),
                style: TextButton.styleFrom(backgroundColor: Colors.green,padding: EdgeInsets.all(20))
            ),
            SizedBox(width: 20,),
            TextButton(onPressed: null, child: Text('NO',style: TextStyle(fontSize: 15,color: Colors.black),),
                style: TextButton.styleFrom(backgroundColor: Colors.red,padding: EdgeInsets.all(20))
            ),
          ],
          )
      ),
    );
  }
}
