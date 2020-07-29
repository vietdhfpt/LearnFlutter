import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  TodoList({Key key}) : super(key: key);

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Todo $index"),
            trailing: GestureDetector(
              onTap: () {
                print("Delete");
              },
              child: Icon(
                Icons.delete,
                color: Colors.red[400],
              ),
            ),
          );
        },
      ),
    );
  }
}
