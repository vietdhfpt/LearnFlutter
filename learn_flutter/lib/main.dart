import 'package:flutter/material.dart';
import 'package:learn_flutter/todo/blocs/todo_bloc.dart';
import 'package:learn_flutter/todo/todo_list_container.dart';
import 'package:provider/provider.dart';

import 'db/todo_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await TodoDatabase.instance.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Todo List"),
        ),
        body: Provider<TodoBloc>.value(
          value: TodoBloc(),
          child: TodoListContainer(),
        ),
      ),
    );
  }
}
