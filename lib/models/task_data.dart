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

  //Crear un método para añadir una nueva tarea mediante provider.
    void addTask (String newTaskTitle ) {
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }
}