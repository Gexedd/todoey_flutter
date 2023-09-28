import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Esta es una tarea'),
      trailing: TaskCheckbox(),
    );
  }
}

class TaskCheckbox extends StatelessWidget {

final bool chekBoxState;
TaskCheckbox(this.chekBoxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: chekBoxState,
        onChanged: (newValue){
/*          setState(() {
            isChecked = newValue!;
          });*/

        },
    );



  }
}
