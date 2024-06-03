
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_workspace/common/StatelessWidget1.dart';
import 'package:flutter_workspace/main.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter Chef',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'flutter Chef'
        ),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: const Icon(
                Icons.shopping_cart
            ), onPressed: () {
            print('shopping_cart button is clicked');
          },
          ),
          IconButton(
            icon: const Icon(
                Icons.search
            ), onPressed: () {
            print('search button is clicked');
          },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: AssetImage('assets/high_Level.webp'),
                ),
              otherAccountsPictures: const [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/low_Level.png'),
                ),
              ],
              accountName: const Text('teddy'),
              accountEmail: const Text('teddy@cntt.co.kr'),
              onDetailsPressed: (){
                  print('arrow is clicked');
              },
              decoration: const BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                )
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,
                color: Colors.grey[850],
              ),
              title: const Text('HOME'),
              onTap: (){
                print('HOME is clicked');
              },
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings,
                color: Colors.grey[850],
              ),
              title: const Text('SETTING'),
              onTap: (){
                print('SETTING is clicked');
              },
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: const Text('QUESTION_ANSWER'),
              onTap: (){
                print('QUESTION_ANSWER is clicked');
              },
              trailing: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
