
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp()); // 앱 실행

class MyApp extends StatelessWidget { // 상태 변경이 없는 위젯. 한번 UI가 그려지면 그대로 있음.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) { // UI를 만드는 부분.
    var imageUrl = "https://images.pexels.com/photos/912110/pexels-photo-912110.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
    
    return MaterialApp (  // 구글 기본 디자인인 Material Design을 써서 앱을 만든다.
      title: '플러터 앱',
      debugShowCheckedModeBanner: false, //debug 표시를 보이지 않게
      home: Scaffold (
        appBar: AppBar(title: const Text("타이틀")), // 앱의 상단 타이틀
        // body: const Text("첫 플러터 앱"), // 앱 화면에 표시되는 텍스트
        body: Image.network(imageUrl) // 앱 화면에 이미지
      )
    );
  }
}
