import 'package:flutter/material.dart';
import 'package:todo_list/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/task_data.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          padding: const EdgeInsets.only(top: 20.0),
          itemCount:  taskData.taskCount,
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              taskTitle:  taskData.tasks[index].name,
              checkboxCallBack: (bool? checkboxState) {
                // setState(() {
                //   Provider.of<TaskData>(context).tasks[index].toggleDone();
                // });
              },
            );
          },
        );
      },
    );
  }
}
