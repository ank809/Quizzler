import 'package:flutter/material.dart';
import 'questions.dart';
import 'quiz_brain.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizzler App'),
          backgroundColor: const Color.fromARGB(255, 59, 52, 52),
        ),
        body: Quizzer(),
        backgroundColor: Colors.black,
      ),
    );
  }
}

class Quizzer extends StatefulWidget {
  const Quizzer({super.key});

  @override
  State<Quizzer> createState() => _QuizzerState();
}

class _QuizzerState extends State<Quizzer> {
  int questionNumber=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 6,
            child: Center(
              child: 
              Text(
               // quiz_brain.getquestion(questionNumber)
               'This is where text appears',
              style: TextStyle(color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,),
              ),
            ),
          ),
          Expanded(child: 
          TextButton(onPressed: (){}, 
          child:
          Text('True', 
            style: TextStyle(color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
             ),),
         style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green),),
         )
          ),
          SizedBox(height: 14.0,),
          Expanded(child: 
          TextButton(onPressed: (){}, 
          child:
          Text('False', 
            style: TextStyle(color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
             ),),
         style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red),),
         )
          ),
          SizedBox(height: 2.0,),
          Row(
            children: [
              Icon(Icons.cancel, color: Colors.red,),
              Icon(Icons.check, color: Colors.green,),
            ],
          ),
        ],
      ),
    );
  }
}