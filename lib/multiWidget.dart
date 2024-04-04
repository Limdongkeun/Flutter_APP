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
          body : const Column( // 위젯을 세로로 배치.
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