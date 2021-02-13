import 'package:flutter/material.dart';
import '../../loginPage.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function onResetPressed;

  Result({@required this.resultScore, @required this.onResetPressed});

  String get resultPhrase {
    String resultText;
    if (resultScore >= 1) {
      resultText = 'ยินดีด้วยด้วย \n คุณตอบถูก $resultScore คะแนน';
    } 
    else if (resultScore == 0) {
      resultText = 'เสียใจด้วย \n คุณตอบไม่ถูกเลย $resultScore คแนน';
    } 
    // else if (resultScore <= 16) {
    //   resultText = 'You are... strange?! $resultScore';
    // } else {
    //   resultText = 'You are so bad! $resultScore';
    
    // }
    return resultText ;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed:  () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondPage()));
          },
            // onPressed: onResetPressed,
            child: Text('กลับไปหน้าหลัก'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
