import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:provider/provider.dart';

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
            Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
            Navigator.pop(context);
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

