import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/tasks.dart';

class Task extends StatelessWidget {
  final String name;
  bool isChecked;
  Function checked;
  Function deletecallback;
  Task({this.name, this.isChecked, this.checked, this.deletecallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deletecallback,
      title: Text(
        "${this.name}",
        style: TextStyle(
            decoration: this.isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checked,
      ),
      dense: false,
    );
  }
}
