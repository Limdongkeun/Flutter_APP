import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() => runApp(const MyApp()); // 앱 실행

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '플러터 앱',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(title: const Text("앱 타이틀")),
          body : const Row( // 위젯을 가로로 배치.
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // 주 방향(여기서는 Row니 가로입니다)으로 어떻게 위젯을 배열할지 정합니다.
            // MainAxisAlignment.spaceAround는 위젯의 간격이 서로 일정하게 벌려주는 걸 말합니다.
            children: <Widget>[
              Text("나의 첫 플러터 앱"),
              Text("이제 앱 개발 해보자"),
              Icon(Icons.music_video_sharp, color: Colors.amber)
            ],
          )
      ),
    );
  }
}