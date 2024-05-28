
import 'package:flutter/material.dart';

void main() => runApp( MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0; // Text UI에 표시될 값

  void increaseCounter() { // 버튼을 누르면 counter 값을 증가시킴
    setState(() {
      counter++;
    });
  }

  void decreaseCounter() { // 버튼을 누르면 counter 값을 감소시킴
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "첫 플러터 앱",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("내 플러터 앱"),
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0), // 전체적으로 16씩 패딩을 주었음.
          child: Column( // 세로로 위젯을 배치
            children: <Widget>[
              Text(
                "$counter",
                style: TextStyle(fontSize: 160.0),
              ),
              Row( // 가로로 위젯을 배치, 안에 버튼 2개가 들어가 있음.
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 위젯끼리 같은 공간만큼 띄움
                children: <Widget>[
                  ElevatedButton( //ElevatedButton-기존의 RaisedButton,버튼을 강조하고 싶을 때 사용
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red
                    ), // 버튼 색은 빨강색으로
                    onPressed: () { // 버튼을 누르면 안에 있는 함수를 실행
                      increaseCounter();
                    },
                    child: const Text(
                      "Add",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue
                    ), // 버튼 색은 파란색으로
                    onPressed: () { // 버튼을 누르면 안에 있는 함수를 실행
                      decreaseCounter();
                    },
                    child: const Text(
                      "Subtract",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}