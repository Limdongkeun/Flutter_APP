
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
      appBar: AppBar(
        title: const Text('TOAST MESSAGE',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            flutterToast();
          },
          child: const Text('TOAST MESSAGE',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.lightBlue,
            ),
          ),
        ),
      ),
    );
  }
}

void flutterToast() {
  Fluttertoast.showToast(
    msg: 'HELLO FLUTTER',
    gravity: ToastGravity.CENTER,
    backgroundColor: Colors.blueGrey,
    fontSize: 20.0,
    textColor: Colors.black,
    toastLength: Toast.LENGTH_SHORT
  );
}
