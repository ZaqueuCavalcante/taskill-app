import 'package:flutter/material.dart';
import 'package:taskill_app/components/tasks/full_task_button.dart';

class TaskPage extends StatelessWidget {
  final String id;

  const TaskPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Task'), centerTitle: true),
      body: FullTask(
        title: 'Put title here. Id = $id',
        description:
            'This is the task description, big to test lalalalThis is the task description, big to test lalalal',
        isDone: false,
      ),
    );
  }
}
