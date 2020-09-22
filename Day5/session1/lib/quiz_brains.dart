import 'question.dart';
import 'dart:math';
class Quizbrain{
  Random random = Random();

  int _qno=0;
  List<Question> _qbank =[
    Question("Dead people can not get goose bumps",false),
    Question("Ostriches stick their heads in the sand when they feel threatened.", false),
    Question("Napoleon Bonaparte wasn't short; his height was actually above average for his time", true),
    Question(" If you cry in space the tears just stick to your face.", true),
    Question("Humans can distinguish between over a trillion different smells.", true),
    Question("The Spanish national anthem has no words.",true),
    Question(" When you extract all of the gold from the bubbling core of the earth, you would be able to cover all of the lands in a layer of gold up to your knees.", true),
    Question(" It would take 1,200,000 mosquitoes, each sucking once, to completely drain the average human of blood.", true)


  ];

  void nextQuestion(){
    if(_qno < _qbank.length-1){
      _qno++;
    }
  }

  String getQuestion(){
    return _qbank[_qno].questionText;
  }

  bool getAns(){
    return _qbank[_qno].ans;
  }

  bool isDone(){
    if(_qno >= _qbank.length-1){
      return true;
    }else{
      return false;
    }
  }

  void reset(){
    _qno = 0;

  }
}