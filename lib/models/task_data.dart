import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: "Estudiar programación"),
    Task(name: "Estudiar el saxofón"),
    Task(name: "Ser feliz cada día"),
  ];

  UnmodifiableListView<Task> get tasks {
    //return _tasks; //Hay que cambiar este código y ahora se debe retornar un Unmodifiable version de esta lista.
      return UnmodifiableListView(_tasks); //Asi es como debe ser implementado este getter.-

} //Creando el getter para que pueda ser llamado el índice del TaskTile del tasklips.dart

  int get conteoDeTareas {
    return _tasks.length;
  }

  //Crear un método para añadir una nueva tarea mediante provider.
    void addTask (String newTaskTitle ) {
    _tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updateTask (Task task){
    task.toggleDone();
    notifyListeners();

}
}