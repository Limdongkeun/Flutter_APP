
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter Chef',
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: MyToast(),
    );
  }
}

class MyToast extends StatelessWidget {
  const MyToast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Container( //child가 없으면 사용 할 수 있는 영역 전체를 사용한다 싱글위젯이라 child는 하나만 가질 수 있다
          color: Colors.deepOrange,
          width: 100,
          height: 100,
          margin: const EdgeInsets.symmetric( // widget의 바깥쪽의 공간을 잡는 용도
            vertical: 80,
            horizontal: 20,
          ),
          padding: const EdgeInsets.all(20), // widget의 안쪽의 공간을 잡는 용도
          child: Text('HELLO'),
        ),
      ),
    );
  }
}

