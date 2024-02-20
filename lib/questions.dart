import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
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
              child: Text('', style: TextStyle(fontSize: 40,color: Colors.black),),
              decoration: BoxDecoration(color: Colors.white),
            ),
            SizedBox(height: 20,),
            TextButton(onPressed: null, child: Text('YES' ,style: TextStyle(fontSize: 15,color: Colors.black),),
                style: TextButton.styleFrom(backgroundColor: Colors.green,padding: EdgeInsets.all(20))
            ),
            SizedBox(height: 20,),
            TextButton(onPressed: null, child: Text('NO',style: TextStyle(fontSize: 15,color: Colors.black),),
                style: TextButton.styleFrom(backgroundColor: Colors.red,padding: EdgeInsets.all(20))
            ),
          ],
          )
      ),
    );
  }
}
