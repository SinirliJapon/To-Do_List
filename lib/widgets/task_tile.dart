import 'package:flutter/material.dart';
import 'package:todo_list/constants.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallBack;

  TaskTile({ required this.taskTitle, required this.isChecked, required this.checkboxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        activeColor: kPrimaryColor,
        value: isChecked,
        onChanged: (newValue) {
          checkboxCallBack(newValue);
        },
      ),
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
    );
  }
}



