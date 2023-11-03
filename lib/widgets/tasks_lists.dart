import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class TasksList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskDataP, child) { //TaskDataP fue escrito por mi, ya que el constructor lo llama value por default
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskDataP.tasks[index]; //Refactorizacion del codigo repetido.
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkBoxCallback: (bool checkBoxState) {
              taskDataP.updateTask(task); //Llamo al metodo updateTask
              },
            );
          },
          itemCount: taskDataP.conteoDeTareas,
        );
      },

    );
  }
}
