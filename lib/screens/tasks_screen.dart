import 'package:flutter/material.dart';
import 'package:todo_list/models/task_data.dart';
import 'package:todo_list/widgets/tasks_list.dart';
import 'add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/constants.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        floatingActionButton: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          child: const Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => AddTaskScreen(),
            );
          },
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 60.0, left: 30.0, right: 30.0),
              child: Column(
                children: [
                  const SizedBox(height: 20.0),
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 27.0,
                    child: Icon(
                      Icons.list,
                      color: kPrimaryColor,
                      size: 39.0,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    'My To-do List',
                    style: kTaskTitle,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    '${Provider.of<TaskData>(context).taskCount} Tasks',
                    style: kTaskNumber,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: kBoxDecoration,
                child: TasksList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
