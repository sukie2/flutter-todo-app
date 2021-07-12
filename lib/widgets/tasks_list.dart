import 'package:flutter/material.dart';
import 'package:flutter_todo_app1/models/task.dart';

import 'task_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> taskList;

  TasksList({required this.taskList});

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
              name: widget.taskList[index].name,
              isChecked: widget.taskList[index].isDone,
              toggleCheckBoxState: (state) {
                setState(() {
                  widget.taskList[index].toggleDone();
                });
              });
        },
        itemCount: widget.taskList.length);
  }
}
