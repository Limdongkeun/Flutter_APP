import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class LineChart extends CustomPainter {
  late List<double> points;
  late double lineWidth;
  late double pointSize;
  late Color lineColor;
  late Color pointColor;
  late int maxValueIndex;
  late int minValueIndex;
  double fontSize = 18.0;


  LineChart({required this.points, required this.pointSize, required this.lineWidth,
    required this.lineColor, required this.pointColor});
  @override
  void paint(Canvas canvas, Size size) {
    List<Offset> offsets = getCoordinates(points, size); //점들이 그려질 좌표

    drawText(canvas, offsets); //텍스트를 그린다 최저값과 최고값 위 아래에 적은 텍스트

    drawLines(canvas, size, offsets); //구한 좌표를 바탕으로 선을 그린다
    drawPoints(canvas, size, offsets); // 좌표에 따라 점을 그린다

  }

  void drawLines(Canvas canvas, Size size, List<Offset> offsets) {
    Paint paint = Paint()
        ..color = lineColor
        ..strokeWidth = lineWidth
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round;

    Path path = Path();

    double dx = offsets[0].dx;
    double dy = offsets[0].dy;

    path.moveTo(dx, dy);
    offsets.map((offset) => path.lineTo(offset.dx, offset.dy)).toList();

    canvas.drawPath(path, paint);

  }

  void drawPoints(Canvas canvas, Size size, List<Offset> offsets) {
    Paint paint = Paint()
        ..color = pointColor
        ..strokeCap = StrokeCap.round
        ..strokeWidth = pointSize;

    canvas.drawPoints(PointMode.points, offsets, paint);
  }

  List<Offset> getCoordinates(List<double> points, Size size) {

    List<Offset> coordinates = [];

    double spacing = size.width / (points.length - 1); //좌표를 일정한 간격으로 벌리기 위한 값을 구한다
    double maxY = points.reduce(max); // 데이터 중 최대값을 구한다
    double minY = points.reduce(min); // 데이터 중 최솟값을 구한다

    double bottomPadding = fontSize * 2; //텍스트가 들어갈 패딩(아래)
    double topPadding = bottomPadding *2;//텍스트가 들어갈 패딩(위)
    double h = size.height - topPadding; //패딩을 제외한 화면의 높이를 구한다

    for (int index =0; index < points.length; index++) {
      double x = spacing * index; //x축 좌표를 구한다
      double normalizedY = points[index] / maxY; //정규화 한다 정규화란 [0~1] 사이가 나오게 값을 변경
      double y = getYPos(h, bottomPadding, normalizedY); //Y축 좌표를 구한다 높이에 비례한 값

      Offset coord = Offset(x, y);
      coordinates.add(coord);


      findMaxIndex(points, index, maxY, minY); //텍스트 (최대값)를 적기 위해 최대값 인덱스를 구한다
      findMinIndex(points, index, maxY, minY); //텍스트 (최솟값)를 적기 위해 최대값 인덱스를 구한다

    }
    return coordinates;
  }

  double getYPos(double h, double bottomPadding, double normalizedY) =>
      (h + bottomPadding) - (normalizedY * h);

  void findMaxIndex(List<double> points, int index, double maxY, double minY) {
    if (maxY == points[index]) {
      maxValueIndex = index;
    }
  }

  void findMinIndex(List<double> points, int index, double maxY,double minY) {
    if (minY == points[index]) {
      minValueIndex = index;
    }
  }

  void drawText(Canvas canvas, List<Offset> offsets) {
    String maxValue = points.reduce(max).toString();
    String minValue = points.reduce(min).toString();

    drawTextValue(canvas, minValue, offsets[minValueIndex], false);
    drawTextValue(canvas, maxValue, offsets[maxValueIndex], true);
  }

  void drawTextValue(Canvas canvas, String text, Offset pos, bool textUpward) {
    TextSpan maxSpan = TextSpan(style: TextStyle(fontSize: fontSize, color: Colors.black, fontWeight: FontWeight.bold), text: text);
    TextPainter tp = TextPainter(text: maxSpan, textDirection: TextDirection.ltr);
    tp.layout();

    double y = textUpward ? -tp.height * 1.5  : tp.height * 0.5; // 텍스트의 방향을 고려해 y축 값을 보정해줍니다.
    double dx = pos.dx - tp.width / 2; // 텍스트의 위치를 고려해 x축 값을 보정해줍니다.
    double dy = pos.dy + y;

    Offset offset = Offset(dx, dy);

    tp.paint(canvas, offset);
  }

  @override
  bool shouldRepaint(LineChart oldDelegate) {
    return oldDelegate.points != points;
  }
}