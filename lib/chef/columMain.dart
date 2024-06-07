
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter Chef',
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: const MyColum(),
    );
  }
}

class MyColum extends StatelessWidget {
  const MyColum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center( //center가 붙으면 colum이 잡는 영역을 center로 바뀜
          child: Column( //세로축 정렬 세로축 방향으로 가능한 뭐든 영역 사용
            // mainAxisAlignment: MainAxisAlignment.center, //이렇게 하면 상하좌우의 통제권을 center에게 넘어감
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly, //같은 간격으로 세로 정렬
            // mainAxisAlignment: MainAxisAlignment.spaceBetween, //같은 간격으로 스크린 전체의 상중하 배치
            // mainAxisSize: MainAxisSize.min,
            // mainAxisSize: MainAxisSize.min,
            // verticalDirection: VerticalDirection.up, // 아래서부터 1 2 3 이 나옴
            // crossAxisAlignment: CrossAxisAlignment.stretch, //가로 방향으로 화면을 채운다 그럼 각 container의 width의 값이 필요 없다
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.indigo,
                child: const Text('Container 1'),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.deepOrange,
                child: const Text('Container 2'),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
                child: const Text('Container 3'),
              ),
              // Container(
              //   width: double.infinity, 갈 수 있는 가로축 끝까지 보냄
              // )
            ],
          ),
        )
      )
    );
  }
}

