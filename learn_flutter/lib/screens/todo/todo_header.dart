import 'package:flutter/material.dart';

class TodoHeader extends StatelessWidget {
  const TodoHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTodoController = TextEditingController();

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
          },
          icon: Icon(Icons.add),
          label: Text("Add"),
        ),
      ],
    );
  }
}
