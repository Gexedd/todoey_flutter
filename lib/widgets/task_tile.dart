import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  //Se crea una función que sería el callback llamado cuando se haga click en la palomita

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Esta es una tarea',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(
          checkBoxState: isChecked,
          toggleCheckboxState: (bool? checkBoxState) {
            if (checkBoxState != null) {
              setState(() {
                isChecked = checkBoxState;
              });
            }
          }),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkBoxState;
  final ValueChanged<bool?> toggleCheckboxState;

  TaskCheckbox(
      {required this.checkBoxState, required this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkBoxState,
      onChanged: toggleCheckboxState,
    );
  }
}
