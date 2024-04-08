
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget { // 상태 변경이 없는 위젯. 한번 UI가 그려지면 그대로 있음.

  MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: const CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});


  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;
  final StreamController<int> _streamController = StreamController();
  final StreamController<int> _ctrl = StreamController();
  final Stream<int> stream = Stream.periodic(const Duration(seconds: 1), (int x) => x);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stream version of the Counter App')),
      body: Center(
        child: Column(
          children: <Widget>[
            const Text("Hello"), //1. 버튼 누를 때 마다 텍스트 변경
            StreamBuilder<int>(
                stream: _streamController.stream, // 어떤 스트림을 쓸지 정함
                initialData: _counter, // 초기값 정하기, 스트림에 값이 없을지도 모르니 초기값을 정함.
                builder: (BuildContext context, AsyncSnapshot<int> snapshot) { // UI 만드는 부분.
                  return Text('You hit me ${snapshot.data} times');
                },
            ),
            StreamBuilder<int>( // 2. 1초마다 텍스트 변경
                stream: stream,
                builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                  return Text('${snapshot.data} seconds passed'); // 1초에 한번씩 업데이트 된다.
                },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          _streamController.sink.add(++_counter);
        },
      ),
    );
  }
}
