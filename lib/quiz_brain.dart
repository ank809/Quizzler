import 'questions.dart';

class QuizBrain{
  int _questionNumber=0;
  List<Question> _questionBank= [
    Question (q: 'Some cats are actually allergic to humans.' ,a: true),
    Question (q: 'You can lead  a cow down stairs but not up stairs.' ,a: false),
    Question (q: 'Approximately one quarter of human bones are present in the feet.' ,a: true),
    Question (q: 'A slug\'s blood is freen.' ,a: true),
    Question (q: 'Buzz Addrin\'s mother\'s maiden name was \"Moon\" .' ,a: true),
    Question (q: 'It is illegal to  pee in the ocean in Portugal' ,a: true),
    Question (q: 'No piece of square dry aper can be foldeed in half more than 7 times' ,a: false),
    Question (q: 'In London , UK , if your happen to die in the house of Parliament , you are technically entitled to a state funeral, because the building is considered too sacred a place.' 
    , a: true),
    Question (q: 'The loudest sound produced by an animal is 188 decibels. That animal is the Africam Elephant' ,
    a: false),
    Question (q: 'The total surface are of two human being lunga is approximately 70 square metres. ' ,a: true),
    Question (q: 'Google was originally called \"Backrub\" .' ,a: true),
    Question (q: 'The Eiffel Tower is taller than the Statue of Liberty. '  ,a: true),
    Question (q: 'The Great Barrier Reef is located in Australia. '  ,a: true),
    Question (q: 'Chocolate affects a dog\'s heart  and nervous system; a few ounces are enough to kill a small dog.' ,a: true),
    Question (q: 'The currency of Japan is the Yuan.  '  ,a:false),
  ];
  void nextQuestion(){
    if(_questionNumber< _questionBank.length-1){
      _questionNumber++;
    }
  }
  String getquestionText(){
    return _questionBank[_questionNumber].questionText;
  }
  bool getcorrectAnswer(){
    return _questionBank[_questionNumber].answer;
  }
  bool isFinished() {
    return _questionNumber >= _questionBank.length - 1;
  }
   void reset() {
    _questionNumber = 0;
  }
}