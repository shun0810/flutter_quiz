import 'package:flutter/material.dart';
import 'package:quiz/start_page.dart';

class Result extends StatelessWidget {
  // const Result({Key? key}) : super(key: key);

  final int numberOfAll;

  final int numberOfCorrectAnswers;

  Result({this.numberOfCorrectAnswers, this.numberOfAll});

  Widget resultText() {
    if (numberOfCorrectAnswers < 6) {
      return Center(
          child: Text(
        'もう少しがんばろう！',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ));
    } else if (6 <= numberOfCorrectAnswers && numberOfCorrectAnswers <= 8) {
      return Center(
          child: Text(
        'おしい！あと一息！',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ));
    } else {
      return Center(
          child: Text(
        'すばらしい！',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFe91e63),
        ),
        backgroundColor: Color(0xFFF5F5F6),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                '$numberOfAll問中、$numberOfCorrectAnswers問正解しました！',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ),
            resultText(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 50.0,
                vertical: 20.0,
              ),
              child: RaisedButton(
                onPressed: null,
                child: Text(
                  'はじめに戻る',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                color: Color(0xFFccdb37),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                  15.0,
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
