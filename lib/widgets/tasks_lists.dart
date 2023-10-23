import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    super.key,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: "Estudiar programación"),
    Task(name: "Estudiar el saxofón"),
    Task(name: "Ser feliz cada día"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
       return TaskTile(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkBoxCallback: (bool checkBoxState) {
          setState(() {
            tasks[index].toggleDone();
        });
      },
    );
  },
      itemCount: tasks.length,
    );
  }
}
