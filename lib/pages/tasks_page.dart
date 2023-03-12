import 'package:flutter/material.dart';

import '../components/tasks/task_button.dart';
import '../domain/task.dart';

class TasksPage extends StatefulWidget {
  List<Task> tasks = [
    Task(id: "1", title: "Finish this app", isDone: false),
    Task(id: "2", title: "Learn State Management", isDone: false),
    Task(id: "3", title: "Search Route and Navegation", isDone: false),
    Task(id: "4", title: "Learn how to use theme", isDone: false),
  ];

  TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  void addTask() {
    setState(() {
      widget.tasks.add(Task(id: "3", title: "New Task lalala", isDone: false));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Text('Tasks')],
        ),
        leading: GestureDetector(
          onTap: () {},
          child: const Icon(Icons.menu),
        ),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: addTask,
                child: const Icon(Icons.add, size: 26.0),
              )),
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(Icons.search, size: 26.0),
              )),
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(Icons.more_vert),
              )),
        ],
      ),
      body: Center(
        child: ListView(
            children: widget.tasks
                .map((t) =>
                    TaskButton(id: t.id, title: t.title, isDone: t.isDone))
                .toList()),
      ),
    );
  }
}
