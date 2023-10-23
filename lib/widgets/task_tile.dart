import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallback;

  TaskTile({required this.isChecked, required this.taskTitle, required this.checkBoxCallback});

  //Se crea una función que sería el callback llamado cuando se haga click en la palomita

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged:
              (newValue){
                checkBoxCallback(newValue); //Este es el código que me funcionó.
          },
          ),
    );
  }
}


