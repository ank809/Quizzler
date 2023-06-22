import 'package:flutter/material.dart';
import 'quiz_brain.dart';
QuizBrain quizBrain= QuizBrain();
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
  List<Icon> scorekeeper= [];

  void checkAnswer(bool userAnswer){
    bool correctAnswer= quizBrain.getcorrectAnswer();
     setState(() {
    if(userAnswer==correctAnswer){
     scorekeeper.add( Icon(Icons.check, color: Colors.green,));
              
    }
    else{
      scorekeeper.add( Icon(Icons.close, color: Colors.red,));
    }
      quizBrain.nextQuestion();
    });
  }
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
                quizBrain.getquestionText(), 
              style: TextStyle(color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,),
              ),
            ),
          ),
          Expanded(child: 
          TextButton(onPressed: (){
            checkAnswer(true);
          }, 
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
          TextButton(onPressed: (){
            checkAnswer(false);
          }, 
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
            children: scorekeeper,
          ),
        ],
      ),
    );
  }
}