import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/*
 * 커스텀 페인터는 화면에 직접 UI를 그릴 때 사용
 * 기존 UI로 만들기 어려운 화면을 만들고 싶을 때 유용
 * 직접 UI를 그릴려면 customPaint, CustomPainter 클래스가 있어야 한다
 *
 * customPaint -> Container, Center 같은 위젯
 * customPaint는 cusiomPainter를 담는 그릇
 *
 * customPaint
 * container, center 같은 위젯
 * painter를 가지고 patiner에세 화면을 그리도록 한다
 * painter -> child -> foregroundPainter 순으로 화면을 그린다
 *
 * customPainter
 * canvas, paint, size등을 통해 실제 화면을 그릴 때 사용
 * 선 그리기(drawLine), 원 그리기(drawCircle)등 다양한 그리기 함수 지원
 */
class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint() // Paint 클래스는 어떤 식으로 화면을 그릴지 정할 때 쓰임.
      ..color = Colors.deepOrange // 색은 보라색
      ..strokeCap = StrokeCap.round // 선의 끝은 둥글게 함.
      ..strokeWidth = 4.0; // 선의 굵기는 4.0
    Offset p1 = const Offset(0.0, 0.0); // 선을 그리기 위한 좌표값을 만듬.
    Offset p2 = Offset(size.width, size.height);
    canvas.drawLine(p1, p2, paint); // 선을 그림.
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}