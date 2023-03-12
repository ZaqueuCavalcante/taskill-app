import '../domain/task.dart';

class TasksRepository {
  final List<Task> _tasks = [];

  void add(Task task) {
    _tasks.add(task);
  }

  TasksRepository() {
    _tasks.addAll([
      Task(id: "1", title: "Finish this app", isDone: false),
      Task(id: "2", title: "Learn State Management", isDone: false),
      Task(id: "3", title: "Search Route and Navegation", isDone: false),
    ]);
  }
}
