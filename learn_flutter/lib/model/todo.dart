class Todo {
  int _id;
  String _content;

  Todo.fromData(id, content) {
    _id = id;
    _content = content;
  }

  // ignore: unnecessary_getters_setters
  String get content => _content;

  // ignore: unnecessary_getters_setters
  set content(String value) {
    _content = value;
  }

  // ignore: unnecessary_getters_setters
  int get id => _id;

  // ignore: unnecessary_getters_setters
  set id(int value) {
    _id = value;
  }

  Map<String, dynamic> toMap() {
    return {
      'id': _id,
      'content': _content,
    };
  }
}
