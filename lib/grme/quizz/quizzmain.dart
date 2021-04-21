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
        'questionText': 'รูปใด แสดงถึง น้อง ?',
        'answers': [
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/qizz%2Fq03.JPG?alt=media&token=b21c102c-d99b-453e-aa00-9123d8601eda', 'score': 1},
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/qizz%2Fq09.JPG?alt=media&token=227deb40-e380-4e40-ac0d-8d8aaec2aec3', 'score': 0},
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/qizz%2Fq06.JPG?alt=media&token=1fe7a81c-7d27-4e73-8786-104ccea2d63d', 'score': 0},
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/qizz%2Fq05.JPG?alt=media&token=8ff8a05f-5361-4dee-9c58-e962cb5daea7', 'score': 0},
        ],
      },
      {
        'questionText': 'รูปใด แสดงถึง ตำรวจ ?',
        'answers': [
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/qizz%2Fq08.JPG?alt=media&token=bca02baf-ccc1-4ad7-85bc-61a8d1a49e29', 'score': 0},
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/qizz%2Fq04.JPG?alt=media&token=2a4df41f-02d2-42f3-8ae5-64650170f5e6', 'score': 1},
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/qizz%2Fq02.JPG?alt=media&token=70a4f3b7-759a-4769-ab43-4b09f1eab789', 'score': 0},
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/qizz%2Fq05.JPG?alt=media&token=8ff8a05f-5361-4dee-9c58-e962cb5daea7', 'score': 0},
        ],
      },
      {
        'questionText': 'รูปใด แสดงถึง เลข 3 ?',
        'answers': [
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/qizz%2Fq07.JPG?alt=media&token=bda8d0db-5a4c-4144-b688-7ac0b4dc50ca', 'score': 0},
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/qizz%2Fq05.JPG?alt=media&token=8ff8a05f-5361-4dee-9c58-e962cb5daea7', 'score': 0},
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/qizz%2Fq02.JPG?alt=media&token=70a4f3b7-759a-4769-ab43-4b09f1eab789', 'score': 1},
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/qizz%2Fq01.JPG?alt=media&token=89f8ed48-a9a2-49fa-a102-232a96e11d33', 'score': 0},
        ],
      },
      {
        'questionText': 'รูปใด แสดงถึง หวีผม ?',
        'answers': [
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/qizz%2Fq010.JPG?alt=media&token=11dd5895-591b-4ddb-8dc2-40cd41b7c44e', 'score': 0},
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/qizz%2Fq01.JPG?alt=media&token=89f8ed48-a9a2-49fa-a102-232a96e11d33', 'score': 0},
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/qizz%2Fq09.JPG?alt=media&token=227deb40-e380-4e40-ac0d-8d8aaec2aec3', 'score': 0},
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/qizz%2Fq08.JPG?alt=media&token=bca02baf-ccc1-4ad7-85bc-61a8d1a49e29', 'score': 1},
        ],
      },
      {
        'questionText': 'รูปใด แสดงถึง เสียใจ ?',
        'answers': [
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/qizz%2Fq010.JPG?alt=media&token=11dd5895-591b-4ddb-8dc2-40cd41b7c44e', 'score': 1},
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/qizz%2Fq04.JPG?alt=media&token=2a4df41f-02d2-42f3-8ae5-64650170f5e6', 'score': 0},
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/qizz%2Fq01.JPG?alt=media&token=89f8ed48-a9a2-49fa-a102-232a96e11d33', 'score': 0},
          {'text': 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/qizz%2Fq05.JPG?alt=media&token=8ff8a05f-5361-4dee-9c58-e962cb5daea7', 'score': 0},
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

