import 'dart:async';

import 'package:flutter_workspace/todoListBloc/model/todo.dart';
import 'package:flutter_workspace/todoListBloc/repository/api.dart';
/*
 * Bloc 부분
 * 데이터를 가져와 스트림에 더해준다
 * 이전 todo에서 UI 부분이랑 섞여 있는 내용을 분리
 * json 데이터를 가져오는 api
 */
class TodoBloc {
  final API api;

  StreamController<List<Todo>> ctrl = StreamController();

  Stream<List<Todo>> get results => ctrl.stream; // 바로 스트림에 접근하지 않게 하기 위해

  TodoBloc(this.api);

  void dispose() {
    ctrl.close(); // 스트림을 안 쓸 때는 닫아줘야 한다
  }

  void getTodo() {
    api.getTodo().then((todos) {
      ctrl.add(todos);
    });
  }
}