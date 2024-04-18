import 'package:flutter/material.dart';
import 'package:flutter_workspace/painter/MyPainter.dart';

class PainterPage extends StatelessWidget {
  const PainterPage({super.key});


  //위젯의 크기는 기본적으로 부모 > 자식(child) > size (CustomPaint의 속성) 값을 따른다
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chart Page"),
      ),
      body: CustomPaint(
        // painter: MyPainter(), //painter에 그리기를 담당할 클래스를 넣음 painter -> child 순으로 그려진다 MyPainter()에서 선을 그림
        foregroundPainter: MyPainter(), //child가 먼저 그려지니, 선이 화면에 보인다
        size: const Size(200, 200), //위젯의 크기를 정함
        child: Container( //더 늦게 그려지니 화면에 보인다
          width: 200,
          height: 200,
          color: Colors.indigo,
        ),
      ),
    );
  }
}