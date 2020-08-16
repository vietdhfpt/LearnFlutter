import 'package:learn_flutter/base/base_event.dart';

class AddTodoEvent extends BaseEvent {
  String content;

  AddTodoEvent({this.content});
}
