
import 'dart:convert';

import 'package:flutter_workspace/todoListBloc/model/todo.dart';
import 'package:http/http.dart' as http;
/*
 * json 데이터를 가져오는 api
 */
class API {
  http.Client _client = http.Client(); // http 클라이언트 사용
  static const String _url = "https://jsonplaceholder.typicode.com/todos"; // http request를 보낼 url

  Future<List<Todo>> getTodo() async {
    List<Todo> list = [];

    await _client
        .get(Uri.parse(_url)) // http 리퀘스트를 보낸다.
        .then((res) => res.body) // http 응답을 받으면, 그 중에서 body만 가져옴
        .then(json.decode) // json을 형태로 파싱하고
        .then((todos) =>
            todos.forEach((todo) => list.add(Todo.fromJson(todo))
        ) // json을 클래스 형태로 바꿔서 리스트에 더해준다.
    );
    return list;
  }
}