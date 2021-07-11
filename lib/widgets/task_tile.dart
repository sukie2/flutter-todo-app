import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String name;
  final bool isChecked;
  final Function(bool) toggleCheckBoxState;
  TaskTile(
      {required this.name,
      required this.isChecked,
      required this.toggleCheckBoxState});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (value) => toggleCheckBoxState(value ?? false),
      ),
    );
  }
}
