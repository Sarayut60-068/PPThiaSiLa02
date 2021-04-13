import 'package:flutter/material.dart';
import 'package:thaisila02/grme/quizz/quiz.dart';
import 'package:thaisila02/grme/quizz/result.dart';

class QuizzApp extends StatefulWidget {
  @override
  _QuizzAppState createState() => _QuizzAppState();
}

class _QuizzAppState extends State<QuizzApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  String src;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> _questions = const [
      {     
        'questionText': 'รูปใด แสดงถึง ความรัก ?',
        'answers': [
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/TeseGame%2F%E0%B8%A3%E0%B8%B1%E0%B8%81.png?alt=media&token=39cd06e3-bb2f-4e49-8640-f50d3b5e97fb', 'score': 1},
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/TeseGame%2F%E0%B8%8A%E0%B8%AD%E0%B8%9A.png?alt=media&token=3bb1f70f-1b10-4cd9-a3c1-be9aa562feb1', 'score': 0},
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/TeseGame%2F%E0%B8%AB%E0%B8%B4%E0%B8%A7.png?alt=media&token=081e93b0-30c8-4ea1-afa5-58b757dbbd47', 'score': 0},
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/TeseGame%2F%E0%B9%82%E0%B8%8A%E0%B8%84%E0%B8%94%E0%B8%B5.png?alt=media&token=cb175f77-c371-4fbb-99f1-b09451a16e06', 'score': 0},
        ],
      },

      {
        'questionText': 'รูปใด แสดงถึง ไม่สบาย ?',
        'answers': [
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/TeseGame%2F%E0%B9%82%E0%B8%8A%E0%B8%84%E0%B8%94%E0%B8%B5.png?alt=media&token=cb175f77-c371-4fbb-99f1-b09451a16e06', 'score': 0},
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/TeseGame%2F%E0%B8%A3%E0%B8%B1%E0%B8%81.png?alt=media&token=39cd06e3-bb2f-4e49-8640-f50d3b5e97fb', 'score': 0},
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/TeseGame%2F%E0%B8%9B%E0%B9%88%E0%B8%B2%E0%B8%A2.png?alt=media&token=8ab6071c-7e1c-4339-81e9-b9cf5725448a', 'score': 1},
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/TeseGame%2F%E0%B8%82%E0%B8%AD%E0%B8%9A%E0%B8%84%E0%B8%B8%E0%B8%93.png?alt=media&token=3e179d45-2637-4a47-9718-edb8e684e61c', 'score': 0},
        ],
      },

      {
        'questionText': 'รูปใด แสดงถึง หิว ?',
        'answers': [
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/TeseGame%2F%E0%B8%82%E0%B8%AD%E0%B8%9A%E0%B8%84%E0%B8%B8%E0%B8%93.png?alt=media&token=3e179d45-2637-4a47-9718-edb8e684e61c', 'score': 0},
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/TeseGame%2F%E0%B8%AB%E0%B8%B4%E0%B8%A7.png?alt=media&token=081e93b0-30c8-4ea1-afa5-58b757dbbd47', 'score': 1},
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/TeseGame%2F%E0%B8%A3%E0%B8%B1%E0%B8%81.png?alt=media&token=39cd06e3-bb2f-4e49-8640-f50d3b5e97fb', 'score': 0},
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/TeseGame%2F%E0%B8%82%E0%B8%AD%E0%B8%9A%E0%B8%84%E0%B8%B8%E0%B8%93.png?alt=media&token=3e179d45-2637-4a47-9718-edb8e684e61c', 'score': 0},
        ],
      },

      {
        'questionText': 'รูปใด แสดงถึง ชอบ ?',
        'answers': [
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/TeseGame%2F%E0%B8%8A%E0%B8%AD%E0%B8%9A.png?alt=media&token=3bb1f70f-1b10-4cd9-a3c1-be9aa562feb1', 'score': 1},
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/TeseGame%2F%E0%B8%82%E0%B8%AD%E0%B8%9A%E0%B8%84%E0%B8%B8%E0%B8%93.png?alt=media&token=3e179d45-2637-4a47-9718-edb8e684e61c', 'score': 0},
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/TeseGame%2F%E0%B8%9B%E0%B9%88%E0%B8%B2%E0%B8%A2.png?alt=media&token=8ab6071c-7e1c-4339-81e9-b9cf5725448a', 'score': 0},
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/TeseGame%2F%E0%B9%82%E0%B8%8A%E0%B8%84%E0%B8%94%E0%B8%B5.png?alt=media&token=cb175f77-c371-4fbb-99f1-b09451a16e06', 'score': 0},
        ],
      },

      {
        'questionText': 'รูปใด แสดงถึง โชคดีนะ ?',
        'answers': [
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/TeseGame%2F%E0%B8%82%E0%B8%AD%E0%B9%82%E0%B8%97%E0%B8%A9.png?alt=media&token=823492e9-8335-4c13-891e-9378640362d0', 'score': 0},
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/TeseGame%2F%E0%B8%A3%E0%B8%B1%E0%B8%81.png?alt=media&token=39cd06e3-bb2f-4e49-8640-f50d3b5e97fb', 'score': 0},
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/TeseGame%2F%E0%B9%82%E0%B8%8A%E0%B8%84%E0%B8%94%E0%B8%B5.png?alt=media&token=cb175f77-c371-4fbb-99f1-b09451a16e06', 'score': 1},
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/TeseGame%2F%E0%B8%AB%E0%B8%B4%E0%B8%A7.png?alt=media&token=081e93b0-30c8-4ea1-afa5-58b757dbbd47', 'score': 0},
        ],
      },


    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('คำถามทดสอบ'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questionIndex: _questionIndex,
                questions: _questions,
                answerQuestion: _answerQuestion,
              )
            : Result(
                resultScore: _totalScore,
                onResetPressed: _resetQuiz,
              ),
      ),
    );
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
}

