import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/constants.dart';
import 'package:todo_list/models/task_data.dart';
import 'package:todo_list/screens/tasks_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      // builder: (context) => TaskData(),
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kTaskTileColor,
        ),
        home: TasksScreen(),
      ),
    );
  }
}

