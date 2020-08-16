import 'package:learn_flutter/base/base_event.dart';
import 'package:learn_flutter/model/todo.dart';

class DeleteTodoEvent extends BaseEvent {
  Todo todo;

  DeleteTodoEvent({this.todo});
}
