import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  // const Question({Key? key}) : super(key: key);

  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {

  // 問題
  List<String> questions = [
    '第1問\n「スクラム」という名前は、\nラグビーの肩を組んでぶつかり合うスクラムからきている',
    '第2問\n開発者は、スプリントゴールの達成に向けて最大限の努力をする責任がある',
    '第3問・・・',
    '第4問・・・',
    '第5問・・・',
    '第6問・・・',
    '第7問・・・',
    '第8問・・・',
    '第9問・・・',
    '第10問・・・',
  ];

  // 答え
  List<bool> answers = [
    true,
    false,
    true,
    false,
    true,
    false,
    true,
    false,
    true,
    false,
  ];

  // 問題番号の管理
  int questionNumber = 0;

  // 正解数の管理
  int numberOfCorrectAnswers = 0;

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
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  questions[questionNumber],
                  style: TextStyle(fontSize: 23.0),
                ),
              ),
            ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: RaisedButton(
                    onPressed: () {
                      bool correctAnswer = answers[questionNumber];

                      // 正解だった場合、正解数に1を足す
                      if (correctAnswer == true) {
                        numberOfCorrectAnswers++;
                      }

                      if (questionNumber + 1 < questions.length) {
                        setState(() {
                          questionNumber++;
                        });
                      } else {
                        // 結果画面に遷移
                      }
                    },
                    child: Text(
                      '○',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    color: Color(0xFFccdb37),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                  ),
                )),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: RaisedButton(
                    onPressed: () {
                      bool correctAnswer = answers[questionNumber];

                      // 正解だった場合、正解数に1を足す
                      if (correctAnswer == false) {
                        numberOfCorrectAnswers++;
                      }

                      if (questionNumber + 1 < questions.length) {
                        setState(() {
                          questionNumber++;
                        });
                      } else {
                        // 結果画面に遷移
                      }
                    },
                    child: Text(
                      '×',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    color: Color(0xFFccdb37),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
