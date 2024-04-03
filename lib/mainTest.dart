import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp()); // 앱 실행
class MyApp extends StatelessWidget {
  const MyApp({super.key});
 // 상태 변경이 없는 위젯. 한번 UI가 그려지면 그대로 있음.
  @override
  Widget build(BuildContext context) { // UI를 만드는 부분.
    return MaterialApp( // 구글 기본 디자인인 Material Design을 써서 앱을 만든다.
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle.dark,
          )
      ),
      home: Scaffold(
          appBar: AppBar(title: const Text("앱 타이틀"),
            systemOverlayStyle: SystemUiOverlayStyle.dark), // 앱의 상단 타이틀
          body : const Text("나의 첫 플러터 앱") // 앱 화면에 표시되는 텍스트
      ),
    );
  }
}