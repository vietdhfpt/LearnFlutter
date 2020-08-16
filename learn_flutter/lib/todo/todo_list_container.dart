import 'package:flutter/material.dart';
import 'package:learn_flutter/todo/todo_header.dart';
import 'package:learn_flutter/todo/todo_list.dart';

class TodoListContainer extends StatelessWidget {
  const TodoListContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          TodoHeader(),
          SizedBox(height: 20),
          Expanded(
            child: TodoList(),
          ),
        ],
      ),
    );
  }
}
