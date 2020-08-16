import 'package:flutter/material.dart';
import 'package:learn_flutter/todo/blocs/todo_bloc.dart';
import 'package:learn_flutter/todo/events/add_todo_event.dart';
import 'package:provider/provider.dart';

class TodoHeader extends StatelessWidget {
  const TodoHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTodoController = TextEditingController();
    var bloc = Provider.of<TodoBloc>(context);

    return Row(
      children: <Widget>[
        Expanded(
          child: TextFormField(
            controller: textTodoController,
            decoration: InputDecoration(
              labelText: "Add Todo",
              hintText: "Add Todo",
            ),
          ),
        ),
        SizedBox(width: 20),
        RaisedButton.icon(
          onPressed: () {
            print("Add");
            bloc.event.add(
              AddTodoEvent(content: textTodoController.text),
            );
          },
          icon: Icon(Icons.add),
          label: Text("Add"),
        ),
      ],
    );
  }
}
