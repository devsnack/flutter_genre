import 'package:flutter/cupertino.dart';
import 'todo.dart';
// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars
import 'package:flutter/foundation.dart';

class AllTasks extends ChangeNotifier {
  List<Todo> _tasks = [
    Todo(name: "programming React"),
    Todo(name: "shoulders rehab")
  ];
  List get tasks {
    return _tasks;
  }

  get lentasks {
    return _tasks.length;
  }

  addtask(name) {
    _tasks.add(Todo(name: name));
    notifyListeners();
  }

  checkedtask(Todo t) {
    t.toggleischecked();
    notifyListeners();
  }

  deletetask(Todo t) {
    _tasks.remove(t);
    notifyListeners();
  }
}
