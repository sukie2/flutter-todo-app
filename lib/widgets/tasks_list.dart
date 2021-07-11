import 'package:flutter/material.dart';
import 'package:flutter_todo_app1/models/task.dart';

import 'task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> taskList = [
    Task(name: 'Bring milk', isDone: false),
    Task(name: 'Feed cat', isDone: false),
    Task(name: 'Clean backyard', isDone: true),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
              name: taskList[index].name,
              isChecked: taskList[index].isDone,
              toggleCheckBoxState: (state) {
                setState(() {
                  taskList[index].toggleDone();
                });
              });
        },
        itemCount: taskList.length);
  }
}
