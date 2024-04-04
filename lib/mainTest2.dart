import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp()); // 앱 실행
class MyApp extends StatelessWidget {
  const MyApp({super.key});
 // 상태 변경이 없는 위젯. 한번 UI가 그려지면 그대로 있음.
  @override
  Widget build(BuildContext context) { // UI를 만드는 부분.
    var imageUrl = "https://images.pexels.com/photos/912110/pexels-photo-912110.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
    return MaterialApp( // 구글 기본 디자인인 Material Design을 써서 앱을 만든다.
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle.dark,
          )
      ),
      home: Scaffold(
          appBar: AppBar(title: const Text("앱 타이틀"),
            systemOverlayStyle: SystemUiOverlayStyle.dark), // 앱의 상단 타이틀
        body: Stack(
          children: <Widget>[
            Image.network(
              imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            const Center(
              child: Text(
                "이렇게 하는건가",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ), // 앱 화면에 표시되는 텍스트
      ),
    );
  }
}