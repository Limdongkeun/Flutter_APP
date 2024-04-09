/*
 * provider 부분
 * bloc는 항상 provider를 사용한다
 * provider은 inheritedWidget을 상속한다
 * inheritedWidget을 쓰면 자식 위젯에서도 접근 할 수 있기 때문에, bloc을 어디서나 접근 할 수 있게 한다
 */

import 'package:flutter/material.dart';
import 'package:flutter_workspace/todoListBloc/bloc/todo_bloc.dart';

import '../repository/api.dart';

class TodoProvider extends InheritedWidget { //자식 위젯에 접근하기 위함
  final TodoBloc todoBloc;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static TodoBloc of(BuildContext context) =>
      (context.dependOnInheritedWidgetOfExactType<TodoProvider>(aspect: TodoProvider) as TodoProvider).todoBloc;
      // static으로 해서 1번만 초기화 하도록 함
/*
 * Key가 필요하다고 넣으면 toDoMain에서 호출 할 때 오류가 나기 때문에 ? 처리를 하면 오류가 안 난다
 */
  TodoProvider({Key? key , required TodoBloc todoBloc, required Widget child })
      : this.todoBloc = todoBloc ?? TodoBloc(API()),
        super(child: child, key: key);
}