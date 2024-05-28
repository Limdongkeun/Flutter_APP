import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_workspace/common/StatelessWidget1.dart';
import 'package:flutter_workspace/chartGraph/ui/chart_page.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Chart Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: ChartPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}