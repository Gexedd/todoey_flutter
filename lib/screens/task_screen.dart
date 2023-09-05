import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  TasksScreen({super.key});

  final List<String> entries = <String>[
    "Estudiar Flutter",
    "Repasar Dart",
    "Despejar la mente"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list_rounded,
                    size: 30,
                    color: Colors.lightBlueAccent,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "TODoeY",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 50,
                  ),
                ),
                Text(
                  '12 Tareas',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(150),
                  bottomLeft: Radius.circular(150),
                ),
              ),
              child: ListView(
                padding: EdgeInsets.only(top: 100),
                children: [
                  ListTile(
                  title: Text('Tarea 1'),
                    trailing: Checkbox(value: false, onChanged: null),
                  ),
                  ListTile(
                    title: Text('Tarea 2'),
                    trailing: Checkbox(value: false, onChanged: null),
                  ),
                  ListTile(
                    title: Text('Tarea 3'),
                    trailing: Checkbox(value: false, onChanged: null),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
