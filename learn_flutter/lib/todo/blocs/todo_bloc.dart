import 'dart:async';
import 'dart:math';

import 'package:learn_flutter/base/base_bloc.dart';
import 'package:learn_flutter/base/base_event.dart';
import 'package:learn_flutter/db/todo_table.dart';
import 'package:learn_flutter/model/todo.dart';
import 'package:learn_flutter/todo/events/add_todo_event.dart';
import 'package:learn_flutter/todo/events/delete_todo_event.dart';

class TodoBloc extends BaseBloc {
  TodoTable _todoTable = TodoTable();

  StreamController<List<Todo>> _todoListController =
      StreamController<List<Todo>>();

  var _randomInt = Random();
  Stream<List<Todo>> get todoListStream => _todoListController.stream;
  List<Todo> _todoList = List<Todo>();

  initData() async {
    // _todoList = await _todoTable.selectAllTodo();

    if (_todoList == null) {
      return;
    }

    _todoListController.sink.add(_todoList);
  }

  _addTodo(Todo todo) async {
    // await _todoTable.insertTodo(todo);

    _todoList.insert(0, todo);
    _todoListController.sink.add(_todoList);
  }

  _deleteTodo(Todo todo) async {
    // await _todoTable.deleteTodo(todo);

    _todoList.remove(todo);
    _todoListController.sink.add(_todoList);
  }

  @override
  void dispatchEvent(BaseEvent event) {
    if (event is AddTodoEvent) {
      Todo todo = Todo.fromData(
        _randomInt.nextInt(100000),
        event.content,
      );
      _addTodo(todo);
    } else if (event is DeleteTodoEvent) {
      _deleteTodo(event.todo);
    }
  }

  @override
  void dispose() {
    super.dispose();
    _todoListController.close();
  }
}
