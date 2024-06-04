import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_workspace/common/StatelessWidget1.dart';
import 'package:flutter_workspace/main.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter Chef',
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // const MyHomePage({super.key});
//builder 사용
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snack Bar'),
      ),
      body: Builder(builder: (BuildContext ctx) {
        return Center(
          child: ElevatedButton(
            onPressed: () {
              const snackBar = SnackBar(
                content: Text('HELLO'),
              );
              ScaffoldMessenger.of(ctx).showSnackBar(snackBar);
            },
            style: ButtonStyle(
                textStyle: MaterialStateProperty.all(
                  const TextStyle(fontSize: 15, color: Colors.white),
                ),
                backgroundColor: MaterialStateProperty.all(Colors.blue)),
            child: const Text(
              'Show me',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },)
    );
  }
}
