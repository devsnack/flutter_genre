import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task.dart';
import 'package:todo/models/tasks.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AllTasks>(builder: (context, allTasks, child) {
      return ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Task(
              name: context.watch<AllTasks>().tasks[index].name,
              isChecked: context.watch<AllTasks>().tasks[index].isChecked,
              checked: (value) {
                context.read<AllTasks>().checkedtask(allTasks.tasks[index]);
              },
              deletecallback: () {
                context.read<AllTasks>().deletetask(allTasks.tasks[index]);
              });
        },
        itemCount: context.watch<AllTasks>().lentasks,
      );
    });
  }
}
