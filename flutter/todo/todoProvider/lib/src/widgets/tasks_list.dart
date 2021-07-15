import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'tasks_tile.dart';
import '../models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  // kd :fire
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (context, index) {
            return TaskTile(
                taskTitle: taskData.tasks[index].name,
                isChecked: taskData.tasks[index].isDone,
                checkboxCallback: (checkboxState) {
                  taskData.updateTaskStatus(taskData.tasks[index]);
                  // taskData.tasks[index].toggleDone();
                },
                longPressCallback: () {
                  taskData.deleteTask(taskData.tasks[index]);
                  print('calling me');
                });
          },
        );
      },
    );
  }
}
