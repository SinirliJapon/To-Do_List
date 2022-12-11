import 'package:flutter/material.dart';
import 'package:todo_list/constants.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    late String newTaskTitle;

    return Container(
      color: kHoverColor,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: kBoxDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: const Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: kAddTaskTitle,
              ),
            ),
            TextField(
              cursorColor: kPrimaryColor,
              cursorHeight: 20.0,
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            TextButton(
              child: const Text(
                'Add',
                style: kButtonTextTitle,
              ),
              style: TextButton.styleFrom(
                backgroundColor: kPrimaryColor,
              ),
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
