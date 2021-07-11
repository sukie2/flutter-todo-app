import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  // String taskName;
  // bool checkBoxState;
  //
  // TaskTile({required this.taskName, required this.checkBoxState});

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  void checkBoxCallback(bool checkBoxState) {
    setState(() {
      isChecked = checkBoxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Item 12',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
        checkBoxState: isChecked,
        toggleCheckBoxState: checkBoxCallback,
      ),
    );
  }
}

// typedef BoolVoidFunc = void Function(String);

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final Function(bool) toggleCheckBoxState;
  TaskCheckBox(
      {required this.checkBoxState, required this.toggleCheckBoxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.blueAccent,
      value: checkBoxState,
      onChanged: (value) => toggleCheckBoxState(value ?? false),
    );
  }
}
