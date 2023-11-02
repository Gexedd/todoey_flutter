import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
  String newTaskTitle="";

  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(40),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(110)
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Añadir tarea',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30,
            color: Colors.lightBlueAccent,),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle= newText;
              },
            ),
            TextButton(onPressed: () {
              //Añadir la tarea a la lista.
              //print(newTaskTitle);
              addTaskCallback(newTaskTitle);
            },
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.white),
                backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
              ),
              child: Text('Añadir tarea'),
            )
          ],
        ),

      ),
    );
  }
}

