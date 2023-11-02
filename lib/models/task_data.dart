import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: "Estudiar programación"),
    Task(name: "Estudiar el saxofón"),
    Task(name: "Ser feliz cada día"),
  ];

  int get conteoDeTareas {
    return tasks.length;

  }

}