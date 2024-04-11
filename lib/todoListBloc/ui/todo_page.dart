/*
 * UI를 만드는 부분
 * TodoList를 그리는 화면
 * StreamBuilder 사용
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_workspace/todoListBloc/bloc/todo_provider.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  Widget _buildListTitle(AsyncSnapshot snapshot, int index) {
    var id = snapshot.data[index].id;
    var title = snapshot.data[index].title;
    bool completed = snapshot.data[index].completed;

    return ListTile(
      leading: Text("$id"),
      title: Text("$title"),
      subtitle: Text("completed",
        style: TextStyle(color: completed ? Colors.lightBlue : Colors.redAccent),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final todoBloc = TodoProvider.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Title")),
      body: Center(
        child: Column(
          children: <Widget>[
            const Text("Stream Builder with Bloc"),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              foregroundColor: Colors.white,
            ),
            onPressed: () { // 버튼을 누르면 서버에서 데이터를 가져옴

             todoBloc.getTodo();
            },
            child: const Text("Load Data")),
          Flexible(
              child: StreamBuilder(
                stream: todoBloc.results,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Text("NO DATA");
                  } else {
                    return ListView.builder(
                        itemCount: snapshot.data!.length ,
                        itemBuilder: (context, index) => _buildListTitle(snapshot, index)
                    );
                  }
                },
              ))
          ],
        ),
      ),
    );
  }
}
