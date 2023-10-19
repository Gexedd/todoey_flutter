class Task {
  final String name;
  bool isDone;

  Task({ required this.name, this.isDone= false});

  void toggleDone () {
    isDone = !isDone;
    print("La tarea $name se ha marcado como ${isDone ? 'completado' : 'pendiente'}");
  }
}