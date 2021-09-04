import 'package:flutter/material.dart';
import 'question_name.dart';

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFe91e63),
        ),
        backgroundColor: Color(0xFFF5F5F6),
        body: SafeArea(
          child: StartPage(),
        ),
      ),
    );
  }
}

class StartPage extends StatefulWidget {
  // const StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
                this.context,
                MaterialPageRoute(
                  builder: (context) => Question(),
                ));
          },
          child: Text(
            'はじまる',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          color: Color(0xFFccdb37),
          padding: EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 100,
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
            15.0,
          )),
        ),
      ),
    );
  }
}
