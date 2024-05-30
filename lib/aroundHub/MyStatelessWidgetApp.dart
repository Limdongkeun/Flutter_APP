

import 'package:flutter/material.dart';

class MyStatelessWidget extends StatelessWidget {
var switchValue = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter statelessWidget',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      darkTheme: ThemeData.light(),
      home: Scaffold(
        body: Center(
          child: Switch(value: switchValue,
            onChanged: (value) {
            switchValue = value;
          },
          ),
        ),
      ),
    );
  }

}