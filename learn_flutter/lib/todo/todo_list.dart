import 'package:flutter/material.dart';
import 'package:learn_flutter/model/todo.dart';
import 'package:learn_flutter/todo/blocs/todo_bloc.dart';
import 'package:learn_flutter/todo/events/delete_todo_event.dart';
import 'package:provider/provider.dart';

class TodoList extends StatefulWidget {
  TodoList({Key key}) : super(key: key);

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   var bloc = Provider.of<TodoBloc>(context);
  //   bloc.initData();
  // }

  @override
  Widget build(BuildContext context) {
    return Consumer<TodoBloc>(
      builder: (context, bloc, child) => StreamBuilder<List<Todo>>(
        stream: bloc.todoListStream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            switch (snapshot.connectionState) {
              case ConnectionState.active:
                return Container(
                  child: ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(snapshot.data[index].content),
                        trailing: GestureDetector(
                          onTap: () {
                            bloc.event.add(
                                DeleteTodoEvent(todo: snapshot.data[index]));
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
              case ConnectionState.waiting:
                return Center(
                  child: Text(
                    'No data avaible',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                      color: Colors.grey,
                    ),
                  ),
                );
              case ConnectionState.none:
              default:
                return Center(
                  child: CircularProgressIndicator(),
                );
            }
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
