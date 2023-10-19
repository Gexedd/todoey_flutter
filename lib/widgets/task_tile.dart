import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked = false;

  //Se crea una función que sería el callback llamado cuando se haga click en la palomita

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Esta es una tarea',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: null //toggleCheckboxState,
      ),
    );
  }
}

/*if (checkBoxState != null) {
setState(() {
isChecked = checkBoxState;
});
}*/


