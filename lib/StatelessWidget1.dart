
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget { // 상태 변경이 없는 위젯. 한번 UI가 그려지면 그대로 있음.

  int counter = 0;

  void increaseCounter() {
    counter++;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "첫 플러터 앱",
      home: Scaffold(
        appBar: AppBar(
          title: Text("내 플러터 앱"),
        ),
        body: Container( // 컨테이너에 넣어서 마진이나 패딩을 주도록 함
          child: Column( // 세로로 위젯들을 배열
            children: <Widget>[
              Text("$counter"),
              ElevatedButton( // 버튼 위젯
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green
                ),
                onPressed: () { // 클릭할 때마다 counter변수가 변하도록 한다.
                  increaseCounter();
                }, // 버튼 위젯
                child: Text(
                  "Add $counter",
                  style: TextStyle(color: Colors.white), // 텍스트의 색은 하얀색으로.
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}