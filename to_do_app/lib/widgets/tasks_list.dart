import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/providers/task_data.dart';
import 'package:to_do_app/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks;
          return TaskTile(
            title: task[index].name,
            isChecked: task[index].isDone,
            checkboxCallback: (bool newState) {
              taskData.updateTask(task[index]);
            },
            onLongPressCallback: () {
              taskData.deleteTask(task[index]);
            },
          );
        },
        itemCount: taskData.tasksCount,
      );
    });
  }
}
